# Crooked Themes

CrookedTheme is a theme API and manager for NeoVim!

## Install
<details>
 <summary>Packer</summary>

  ```
  use{'ethan-heimer/crookedtheme'}
  ```

</details>

## Config

The main config for CrookedTheme looks likt this: 

```
local crooked = require("crookedtheme")
```

### Adding themes to the manager 

Only themes compatable with CrookedTheme can be added to the manager. 

To add a theme to the manager:
1. Require the theme in the your CrookedTheme config file
2. Use the 'crooked.AddTheme' function to add the theme'
3. Use the 'crooked.ApplyTheme' function to apply a default theme at start up

An example config using [CrookedPastel Themes](https://github.com/Ethan-Heimer/CrookedPastel) looks like this:

```
local crooked = require("crookedtheme") --CrookedTheme theme manager

local crookedpastel = require("crookedpastel") --Theme Package that youll add

crooked.AddTheme(crookedpastel.pastel) --Adding Themes in package to the manager
crooked.Addtheme(crookedpastel.pastelLight)
crooked.AddTheme(crookedpastel.pastelNight)

crooked.Apply(crookedpastel.pastel) --Apply Default Theme
```
## Commands

The CrookedTheme Theme Manager has 3 Commands

### :ThemeApply (Theme Name)
-Applys a theme with the given name

### :ThemeList
-Lists all themes added to the manager

### :ThemeSelect
-Select and Apply a theme from a selection screen

## Theme API

CrookedTheme provides a high level API that allows you to create custom themes easily

### Getting Started

Getting started with theme creation is very simple:
1. requiere crooked theme at the top of your file
2. use the 'crooked.NewTheme()' function to begin using the theme creation API

```
local crooked = require('crookedtheme")
local theme = crooked.NewTheme()
```

### Building a Theme

the Theme API is split into 4 sections: 
- Base
- Editor
- Netrw
- Keywords (optionals)

<details>
  <summary>Base</summary>

  The Base Section contains all settings that have to do with basic code editing and files. Here are the settings you'll find:

  <details>
    <summary>number</summary>
    Changes the color of Numbers
   
    theme.base.number = {fg = (hex), bg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>string</summary>
    Changes the color of Strings
   
    theme.base.string = {fg = (hex), bg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>type</summary>
    Changes the color of types
   
    theme.base.type = {fg = (hex), bg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>method</summary>
    Changes the color of method
   
    theme.base.method = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>identifier</summary>
    Changes the color of identifiers
   
    theme.base.identifier = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>statement</summary>
    Changes the color of Statements
   
    theme.base.statement = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>comment</summary>
    Changes the color of comments
   
    theme.base.comment = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>constant</summary>
    Changes the color of constants
   
    theme.base.number = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>preproc</summary>
    Changes the color of pre processors
   
    theme.base.preproc = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>symbol</summary>
    Changes the color of Symbols
   
    theme.base.symbol = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>boolean</summary>
    Changes the color of booleans
   
    theme.base.boolean = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>keyword</summary>
    Changes the color of keywords
   
    theme.base.keyword = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

</details>

<br>

<details>
  <summary>Editor</summary>

  The Editor section contains all settings that have to do with the text editor. Here are the settings you'll find:

   <details>
    <summary>lineNumber</summary>
    Changes the color of the line numbers
   
    theme.editor.lineNumber = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>colorColumn</summary>
    Changes the color of the color column
   
    theme.editor.colorColumn = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>background</summary>
    Changes the color of the editor background
   
    theme.editor.background = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>cursorColumn</summary>
    Changes the color of the cursor column
   
    theme.editor.cursorColumn = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>indentLine</summary>
    Changes the color of an indent line (if you have one)
   
    theme.editor.indentLine = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>indentScope</summary>
    Changes the color of an indent line when you are in scope (if you have one)
   
    theme.editor.indentScope = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>error</summary>
    Changes the color of errors
   
    theme.editor.error = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>warning</summary>
    Changes the color of warnings
   
    theme.editor.warning = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>menu</summary>
    Changes the color of float menus
   
    theme.editor.menu = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>title</summary>
    Changes the color of any titles
   
    theme.editor.title = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>search</summary>
    Changes the color of searches
   
    theme.editor.search = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>nontext</summary>
    Changes the color of non text elements
   
    theme.editor.nontext  = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>
</details>





