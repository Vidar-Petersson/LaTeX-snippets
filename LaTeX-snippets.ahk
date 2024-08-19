#Requires AutoHotkey v2.0 ; Make sure you download and use the >2.0 version of AHK
SendMode "Input"  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir A_ScriptDir  ; Ensures a consistent starting directory.
#Include ./images/#ImagePut.ahk ; Enables pasting of images
#Hotif WinActive("ahk_exe xmind.exe") ; Ensures shortcuts only work when XMind is in focus. Change the second argument if you want a different application.

; HotKey explanation:
; #	Win (Windows logo key)
; !	Alt
; ^	Ctrl
; +	Shift
; <> Specifies left or right variant of key

; Lowercase Greek, windows + X
<#a::Send "\alpha "
<#b::Send "\beta "
<#c::Send "\chi "
<#d::Send "\delta "
<#e::Send "\epsilon "
<#f::Send "\phi "
<#g::Send "\gamma "
<#h::Send "\eta "
<#i::Send "\iota "

<#k::Send "\kappa "
<#l::Send "\lambda "
<#m::Send "\mu "
<#n::Send "\nu "
<#o::Send "\omicron "
<#p::Send "\pi "
<#q::Send "\psi "
<#r::Send "\rho "
<#s::Send "\sigma "
<#t::Send "\tau "
<#u::Send "\theta "
<#v::Send "\varphi "
<#w::Send "\omega "
<#x::Send "\xi "
<#y::Send "\upsilon "
<#z::Send "\zeta "

<#Space::Send " \ "

; Uppercase Greek, some Hebrew, number set and special characters, windows + ctrl + X
^<#a::Send "aleph "
^<#b::Send "beth "
^<#c::Send "mathbb{C} "
^<#d::Send "\Delta "
^<#e::Send "\ell "
^<#f::Send "\Phi "
^<#g::Send "\Gamma "
^<#h::Send "H "
^<#i::Send "\imath "
^<#j::Send "\jmath "
^<#k::Send "K "
^<#l::Send "\Lambda "
^<#m::Send "M "
^<#n::Send "\mathbb{N} "
^<#o::Send "O "
^<#p::Send "\Pi "
^<#q::Send "\Psi "
^<#r::Send "\mathbb{R} "
^<#s::Send "\Sigma "
^<#t::Send "T "
^<#u::Send "\Theta "

^<#w::Send "\Omega "
^<#x::Send "\Xi "
^<#y::Send "\Upsilon "
^<#z::Send "\mathbb{Z} "

+<#Space::Send "\quad"

; Favorites and special macros, windows+left CTRL
+<#a::Send "||{left}" ; abs
+<#b::Send "\bra{{}}{}}{LEFT}" ;Dirac bra

+<#c::{ ; cases
    Send "\begin{{}cases{}}{ENTER}"
    ih := InputHook("V", "{SPACE}")
    ih.Start()
    ih.Wait()
    Send "{Enter}\\{ENTER}"
    ih.Start()
    ih.Wait()
    Send "{ENTER}\end{{}cases{}}"
}

+<#d:: { ; leibniz derivative
    Send "\frac{{}d f{}}{{}d x{}}{left 6}"
    ih := InputHook("V", "{SPACE}")
    ih.Start()
    ih.Wait()
    Send "{backspace}{right 5}"
    ih.Start()
    ih.Wait()
    Send "{backspace}{end}"
}

+<#e::Send "\exp \left(  \right){left 8}" ; exp

+<#f:: { ; fraction
    Send "\frac{{}{}}{{}{}}{left 3}"
    ih := InputHook("V", "{SPACE}")
    ih.Start()
    ih.Wait()
    Send "{backspace}{right 2}"
    ih.Start()
    ih.Wait()
    Send "{backspace}{end}"
}

+<#g::Send ""
+<#h::Send ""

+<#i:: { ; integral
    Send "\int_{{}{}}{^}{{}{}}\ d{left 7}"
    ih := InputHook("V", "{SPACE}")
    ih.Start()
    ih.Wait()
    Send "{backspace}{right 3}"
    ih.Start()
    ih.Wait()
    Send "{backspace}{right 1}"
    ih.Start()
    ih.Wait()
    Send "{backspace}{right 3}"
    ih.Start()
    ih.Wait()
    Send "{backspace}{end}"
}

+<#j::Send ""
+<#k::Send ""

+<#l:: { ; limit
    Send "\lim_{{} \to {}}{left 6}"
    ih := InputHook("V", "{SPACE}")
    ih.Start()
    ih.Wait()
    Send "{backspace}{right 4}"
    ih.Start()
    ih.Wait()
    Send "{backspace}{end}"
}

+<#m::{ ; bracket matrix
    Send "\begin{{}bmatrix{}}{ENTER}"
    ih := InputHook("V", "{SPACE}")
    ih.Start()
    ih.Wait()
    Send "{Enter}\\{ENTER}"
    ih.Start()
    ih.Wait()
    Send "{ENTER}\end{{}bmatrix{}}"
}

+<#o::Send ""

+<#p:: { ; partial derivative
    Send "\frac{{}\partial f{}}{{}\partial x{}}{left 13}"
    ih := InputHook("V", "{SPACE}")
    ih.Start()
    ih.Wait()
    Send "{backspace}{right 10}"
    ih.Start()
    ih.Wait()
    Send "{backspace}{end}"
}

+<#r::Send "\mathbf{{}}{}}{LEFT}" ; mathbf

+<#s::{ ; summation
    Send "\sum_{{}{}}{^}{{}{}}{left 4}"
    ih := InputHook("V", "{SPACE}")
    ih.Start()
    ih.Wait()
    Send "{backspace}{right 3}"
    ih.Start()
    ih.Wait()
    Send "{backspace}{end}"
}

+<#t::Send "\text{{}}{}}{LEFT}" ; text input
+<#u::Send ""
+<#v::Send "\vec{{}{}}{LEFT}" ; arrow vector
+<#w::Send "\mathbf{{}{}}{LEFT}" ; bold vector

+<#Up::Send "{^}{{}{}}{LEFT}" ; power
+<#Down::Send "{_}{{}{}}{LEFT}" ; subscript
+<#Left::Send "\left" 
+<#Right::Send "\right"

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

; Zero symbols
#0::Send "\emptyset"
NumpadIns::Send "{SPACE}{BACKSPACE}\varnothing"

; Arrows
#Right::KeyWait('Right'), Send(KeyWait('Right', 'DT.3') ? '\implies' : '\mapsto')

;;;;;;;;;;;;;;;;;

; Hotstring, will autocomplete based on what's written. Not shortcuts.
#Hotstring * ; things that trigger instantly (a.k.a. autoreplaces)
::==::\equiv
::xnn::x_n
::ynn::y_n
::xii::x_i
::yii::y_i
::xp1::x_{{}}n {+} 1{}}
::ooo::\infty
::xx::\times
::**::\cdot
::iff::\iff

#Hotstring ?0
#Hotstring *0 ; things that should NOT trigger without whitespace (because they end in a command, etc). Use tab or space to autocomplete
; Syntax
::...::\dots
::||::\mid
::underb::\underbrace{{}{}}_{{}{}}{ left  4 }
::app::\approx

; Common operators
::sq::\sqrt{{}{}}{left  1}
::tr::\operatorname{{}tr{}}
::sig::\operatorname{{}sign{}}
::id::\operatorname{{}id{}}
::proj::\operatorname{{}proj{}}_{{}{}}{left  1}
::di::\dim{Space}
::det::\det{Space}
::l::\log{Space}
::e::\exp \left(  \right){left 8} ; exp

; Trig-functions
::s::\sin{Space}
::c::\cos{Space}
::t::\tan{Space}
::ct::\cot{Space}
::cs::\cosec{Space}
::sec::\sec{Space}
::as::\arcsin{Space}
::ac::\arccos{Space}
::at::\arctan{Space}
::sh::\sinh{Space}
::ch::\cosh{Space}
::th::\tanh{Space}

; Accents
::av::\vec{{}{}}{left 1}
::bv::\mathbf{{}{}}{left 1}
::ol::\overline{{}{}}{left 1}
::ul::\underline{{}{}}{left 1}
::wt::\widetilde{{}{}}{left 1}
::t::\tilde{Space}
::wh::\widehat{{}{}}{left 1}
::h::\hat{{}{}}{left 1}
::ddd::\dddot{Space}
::dd::\ddot{Space}
::d::\dot{Space}
::ad::\overrightarrow{{}{}}{left 1}

; auto-sized brackets
::par::\left(  \right) {left 9} ; parantheses
::abs::\left|  \right| {left 9} ; abs
::norm::\left\|  \right\| {left 10} ; norm
::<::\braket{{}{}}{left 1} ; norm
::<<::\left\langle  \right\rangle{left 14} ; norm

; Enviroments
::cases::\begin{{}cases{}}`n\\`n\end{{}cases{}}{left 12}
::bm::\begin{{}bmatrix{}}`n`n\\`n`n\end{{}bmatrix{}}{left 18}
::pm::\begin{{}pmatrix{}}`n\\`n\end{{}pmatrix{}}{left 16}

; Sets
::in::\in
::sN::\{{}_n\{}}_{{}n\in \mathbb N{}}{ left  21 }
::sZ::\{{}_k\{}}_{{}k\in \mathbb Z{}}{ left  21 }

; Arrows
::mt::\mapsto
::lmt::\longmapsto
::to::\to
::Lra::\Leftrightarrow
::iff::\iff
::imp::\implies
::imb::\impliedby

; Constructions
::intii::\int_{{}-\infty{}}{^}{{}\infty{}}  \ dx{left 5}
::intoi::\int_{{}0}{^}{{}\infty{}}  \ dx{left 5}

; Images
InsertImage(name) {
    ImagePutClipboard("./images/" name ".png") ; Make sure the corresponding image is stored and named correctly in the specified subfolder
    ClipWait
    Send "^v"
    Sleep "10"
    Send name
    Send "{enter}"
    Send "{enter}"
}

::def::{
    InsertImage("def")
}
::beräkna:: {
    InsertImage("beräkna")
}
::energi:: {
    InsertImage("energi")
}
::knep:: {
    InsertImage("knep")
}
::kraft:: {
    InsertImage("kraft")
}
