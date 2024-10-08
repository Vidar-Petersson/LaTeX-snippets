# LaTeX+Autohotkey snippets
Want to typeset LaTeX faster then writing? These snippets aim to make typesetting LaTeX ligtning fast in external programs, such as XMIND which lacks autocomplete functionality or ways to create macros.

These snippets are partly based on:
- Argentinator's [blog post](https://www.autohotkey.com/board/topic/6949-script-for-latex/).
- [A porting](https://github.com/bloodbornebi/latex-snippets-for-windows/tree/improved-latex-shortcuts) by @bloodbornebi of Gilles Castel's original [LaTeX+vim snippets](https://castel.dev/post/lecture-notes-1/).
- [Masacroso's snippets](https://github.com/Masacroso/Script-LaTeX)
- [ImagePut](https://github.com/iseahound/ImagePut) by Edison Hua.

## Installation
- Install `AutoHotKey v.2`.
- Create or download the AutoHotKey script `LaTeX-snippets.ahk`.
- Download `images` folder.
- Start the script by double-clicking on `LaTeX-snippets.ahk` or enable *run on start up*, see below.
- Open the program specified in the script, by default XMIND.exe.

### Run on start-up
1. Find the script file, select it, and press <kbd>Ctrl</kbd>+<kbd>C</kbd>.
2. Press <kbd>Win</kbd>+<kbd>R</kbd> to open the Run dialog, then enter <code>shell:startup</code> and click OK or <kbd>Enter</kbd>. This will open the Startup folder for the current user. To instead open the folder for all users, enter `shell:common startup` (however, in that case you must be an administrator to proceed).
3. Right click inside the window, and click "Paste Shortcut". The shortcut to the script should now be in the Startup folder.

## Usage
The snippets uses either **hotkeys** (shortcut) or **hotstrings** (autocomplete). Right click on `LaTeX-snippets.ahk` and choose *Edit script* to see all snippets.

### Hotkeys
Below are an explanation of the most common shortcuts and their equivalent in .ahk.

<table class="info fixed">
  <tr>
    <th class="center" style="width:30px">Symbol</th>
    <th abbr="Descr">Description</th>
  </tr>
  <tr>
    <td class="center bold">#</td>
    <td>
      <p><kbd>Win</kbd> (Windows logo key).</p>
    </td>
  </tr>
  <tr>
    <td class="center bold">!</td>
    <td>
      <p><kbd>Alt</kbd></p>
    </td>
  </tr>
  <tr>
    <td class="center bold">^</td>
    <td><kbd>Ctrl</kbd></td>
  </tr>
  <tr>
    <td class="center bold">+</td>
    <td><kbd>Shift</kbd></td>
  </tr>
  <tr id="LeftRight">
    <td class="center bold">&lt;</td>
    <td>Use the left key of the pair. e.g. &lt;!a is the same as !a except that only the left <kbd>Alt</kbd> will trigger it.</td>
  </tr>
  <tr>
    <td class="center bold">&gt;</td>
    <td>Use the right key of the pair.</td>
  </tr>
  <tr id="AltGr">
    <td class="center bold">&lt;^&gt;!</td>
    <td><p><kbd>AltGr</kbd> (<a href="https://en.wikipedia.org/wiki/AltGr_key">alternate graph, or alternate graphic</a>). If your keyboard layout has <kbd>AltGr</kbd> instead of a right <kbd>Alt</kbd> key, this series of symbols can usually be used to stand for <kbd>AltGr</kbd>.</p>
  </tr>
</table>

### Hotstrings
End character is either tab or space.

### Images
Make sure the image is saved as a png in `./images` with the correct name. In order to add more images just add a new line in the end if the .ahk file.
