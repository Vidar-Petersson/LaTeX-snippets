#Requires AutoHotkey v2.0 ; Make sure you use >2.0 version
SendMode "Input"  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir A_ScriptDir  ; Ensures a consistent starting directory.
SetNumLockState "AlwaysOn"
#Hotif WinActive("ahk_exe xmind.exe") ; Ensures shortcuts only work when xmind is in focus

; #	Win (Windows logo key)
; !	Alt
; ^	Ctrl
; +	Shift

; Lowercase Greek, windows

<#a::Send "\alpha"
<#b::Send "\beta"
<#c::Send "\chi"
<#d::Send "\delta"
<#e::Send "\epsilon"
<#f::Send "\phi"
<#g::Send "\gamma"
<#h::Send "\eta"
<#i::Send "\iota"

<#k::Send "\kappa"
<#l::Send "\lambda"
<#m::Send "\mu"
<#n::Send "\nu"
<#o::Send "o"
<#p::Send "\pi"
<#q::Send "\psi"
<#r::Send "\rho"
<#s::Send "\sigma"
<#t::Send "\tau"
<#u::Send "\theta"

<#w::Send "\omega"
<#x::Send "\xi"
<#y::Send "\upsilon"
<#z::Send "\zeta"

; Uppercase Greek, windows+left shift

+<#a::Send "A"
+<#b::Send "B"
+<#c::Send "X"
+<#d::Send "\Delta"
+<#e::Send "E"
+<#f::Send "\Phi"
+<#g::Send "\Gamma"
+<#h::Send "H"
+<#i::Send "I"

+<#k::Send "K"
+<#l::Send "\Lambda"
+<#m::Send "M"
+<#n::Send "N"
+<#o::Send "O"
+<#p::Send "\Pi"
+<#q::Send "\Psi"
+<#r::Send "P"
+<#s::Send "\Sigma"
+<#t::Send "T"
+<#u::Send "\Theta"

+<#+w::Send "\Omega"
+<#x::Send "\Xi"
+<#y::Send "\Upsilon"
+<#z::Send "Z"

; Special Characters and macros, windows+left CTRL

^<#a::Send "\aleph"
^<#b::Send "\bold{{}}{}}{LEFT}"
^<#c::{ ;cases
    Send "\begin{{}cases{}}{ENTER}"
    ih := InputHook("V", "{SPACE}")
    ih.Start()
    ih.Wait()
    Send "{Enter}\\{ENTER}"
    ih.Start()
    ih.Wait()
    Send "{ENTER}\end{{}cases{}}"
}
^<#d:: { ; leibniz derivative
    Send "\frac{{}d f{}}{{}d x{}}{left 6}"
    ih := InputHook("V", "{SPACE}")
    ih.Start()
    ih.Wait()
    Send "{backspace}{right 5}"
    ih.Start()
    ih.Wait()
    Send "{backspace}{end}"
}
^<#e::Send "\varepsilon"
^<#f:: { ; fraction
    Send "\frac{{}{}}{{}{}}{left 3}"
    ih := InputHook("V", "{SPACE}")
    ih.Start()
    ih.Wait()
    Send "{backspace}{right 2}"
    ih.Start()
    ih.Wait()
    Send "{backspace}{end}"
}
^<#g::Send "\gimel"
^<#h::Send "\hbar"
^<#i:: { ; integral
    Send "\int_{{}{}}{^}{{}{}}{left 4}"
    ih := InputHook("V", "{SPACE}")
    ih.Start()
    ih.Wait()
    Send "{backspace}{right 3}"
    ih.Start()
    ih.Wait()
    Send "{backspace}{end}"
}

^<#j::Send "\jmath"
^<#k::Send "\Bbbk"
^<#l:: { ; limit
    Send "\lim_{{} \to {}}{left 6}"
    ih := InputHook("V", "{SPACE}")
    ih.Start()
    ih.Wait()
    Send "{backspace}{right 4}"
    ih.Start()
    ih.Wait()
    Send "{backspace}{end}"
}
^<#m::{ ; matrix
    Send "\begin{{}bmatrix{}}{ENTER}"
    ih := InputHook("V", "{SPACE}")
    ih.Start()
    ih.Wait()
    Send "{Enter}\\{ENTER}"
    ih.Start()
    ih.Wait()
    Send "{ENTER}\end{{}bmatrix{}}"
}

^<#o::Send "\diamond"
^<#p:: { ; partial derivative
    Send "\frac{{}\partial f{}}{{}\partial x{}}{left 13}"
    ih := InputHook("V", "{SPACE}")
    ih.Start()
    ih.Wait()
    Send "{backspace}{right 10}"
    ih.Start()
    ih.Wait()
    Send "{backspace}{end}"
}

^<#r::Send "\mathbf{{}}{}}{LEFT}"
^<#s::{ ; summation
    Send "\sum_{{}{}}{^}{{}{}}{left 4}"
    ih := InputHook("V", "{SPACE}")
    ih.Start()
    ih.Wait()
    Send "{backspace}{right 3}"
    ih.Start()
    ih.Wait()
    Send "{backspace}{end}"
}
^<#t::Send "\text{{}}{}}{LEFT}"
^<#u::Send "\vartheta"
^<#v::Send "\vec{{}{}}{LEFT}"
^<#w::Send "\mho"
^<#Up::Send "{^}{{}{}}{LEFT}"
^<#Down::Send "{_}{{}{}}{LEFT}"
^<#Left::Send "\left"
^<#Right::Send "\right"

; Spacing in math-mode

^Space::Send "\quad" ; Alt+space

; Other features

^Enter::Send "{SPACE}{BACKSPACE}\\{ENTER}" ; CTRL+ENTER

; Autoclose brackets

+8::Send "(){LEFT}"
<^>!8::Send "[]{LEFT}"
<^>!7::Send "{{}{}}{LEFT}"

; Operations and Operators

#-::Send "\setminus"  
NumpadAdd::Send "\cup"
NumpadEnter::Send "\cap"

; Relations

^#0::Send "\equiv"   
; ^#0::Send "{SPACE}{BACKSPACE}\approx"

; Zero symbols

#0::Send "\emptyset"
NumpadIns::Send "{SPACE}{BACKSPACE}\varnothing"

; Arrows

#Right::KeyWait('Right'), Send(KeyWait('Right', 'DT.3') ? '\implies' : '\mapsto')
; Right & Left::Send "\iff"

; Hotstring, will autocomplete based on what's written. Not shortcuts.

#Hotstring * ; things that trigger no matter the whitespace (a.k.a. autoreplaces)
::==::&={space}
::xnn::x_n
::ynn::y_n
::xii::x_i
::yii::y_i
::xp1::x_{{}}n {+} 1{}}
::ooo::\infty
::xx::\times
::**::\cdot

#Hotstring ?0
#Hotstring *0 ; things that should NOT trigger without whitespace (because they end in a command, etc)
::...::\dots
::\larrow::\implies
::=<::\impliedby
::iff::\iff

::||::\mid
::NN::\cap
::UU::\cup
