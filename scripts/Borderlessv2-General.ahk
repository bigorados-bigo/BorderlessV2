#Requires AutoHotkey v2.0
#SingleInstance Force

BASE := 28                          ; menu height at 100% scaling (96 DPI)
global Saved := Map()               ; hwnd -> {style,x,y,w,h,crop}

#F7::Toggle()
#!Up::Nudge( 1)
#!Down::Nudge(-1)
#+!Up::Nudge( 5)
#+!Down::Nudge(-5)

Toggle() {
    hwnd := WinGetID("A")

    ; if already borderless, restore
    if Saved.Has(hwnd) {
        Restore(hwnd)
        return
    }

    ; save style/rect
    style := DllCall("User32\GetWindowLongPtr","ptr",hwnd,"int",-16,"ptr")
    WinGetPos(&x,&y,&w,&h, "ahk_id " hwnd)
    Saved[hwnd] := Map("style",style, "x",x,"y",y,"w",w,"h",h, "crop", BaseCrop(hwnd))

    ; borderless
    newStyle := style & ~(0x00C00000|0x00040000|0x00080000|0x00020000|0x00010000) ; WS_CAPTION|THICKFRAME|SYSMENU|MINIMIZEBOX|MAXIMIZEBOX
    DllCall("User32\SetWindowLongPtr","ptr",hwnd,"int",-16,"ptr",newStyle)
    DllCall("User32\SetWindowPos","ptr",hwnd,"ptr",0,"int",0,"int",0,"int",0,"int",0,"uint",0x0020|0x0001|0x0002|0x0010) ; FRAMECHANGED|NOMOVE|NOSIZE|NOZORDER|NOACTIVATE

    Place(hwnd)
}

Nudge(delta) {
    hwnd := WinGetID("A")
    if !Saved.Has(hwnd)
        return
    Saved[hwnd]["crop"] := Max(0, Saved[hwnd]["crop"] + delta)
    Place(hwnd)
    Tip("CropTop = " Saved[hwnd]["crop"] " px")
}

Place(hwnd) {
    crop := Saved[hwnd]["crop"]
    ; monitor bounds
    hMon := DllCall("User32\MonitorFromWindow","ptr",hwnd,"uint",2,"ptr")
    mi := Buffer(104,0), NumPut("uint",104,mi,0)
    DllCall("User32\GetMonitorInfoW","ptr",hMon,"ptr",mi)
    l := NumGet(mi,4,"int"), t := NumGet(mi,8,"int"), r := NumGet(mi,12,"int"), b := NumGet(mi,16,"int")

    x := l, y := t - crop, w := r - l, h := (b - t) + crop
    DllCall("User32\SetWindowPos","ptr",hwnd,"ptr",0,"int",x,"int",y,"int",w,"int",h,"uint",0x0004|0x0010) ; NOZORDER|NOACTIVATE
}

Restore(hwnd) {
    s := Saved[hwnd]
    DllCall("User32\SetWindowLongPtr","ptr",hwnd,"int",-16,"ptr",s["style"])
    DllCall("User32\SetWindowPos","ptr",hwnd,"ptr",0,"int",s["x"],"int",s["y"],"int",s["w"],"int",s["h"],"uint",0x0020|0x0010) ; FRAMECHANGED|NOACTIVATE
    Saved.Delete(hwnd)
}

BaseCrop(hwnd) {
    global BASE
    dpi := GetDpi(hwnd)
    return Round(BASE * (dpi/96.0))
}

GetDpi(hwnd) {
    dpi := 0
    try dpi := DllCall("User32\GetDpiForWindow","ptr",hwnd,"uint")
    if (dpi)
        return dpi

    hMon := DllCall("User32\MonitorFromWindow","ptr",hwnd,"uint",2,"ptr")
    if (hMon) {
        dpiX := 0, dpiY := 0
        try {
            hr := DllCall("Shcore\GetDpiForMonitor","ptr",hMon,"int",0,"uint*",dpiX,"uint*",dpiY)
            if (hr=0 && dpiY)
                return dpiY
        }
    }
    return 96
}

Tip(msg) {
    Tooltip msg, , , 1
    SetTimer () => Tooltip(), -800
}

OnExit(*) {
    for hwnd,_ in Saved.Clone()
        Restore(hwnd)
}
