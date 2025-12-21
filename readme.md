# CrookedTheme
CrookedTheme is a theme manager and API for NeoVim.

## Install
<details>
 <summary>Packer</summary>

  ```
  use{'ethan-heimer/crookedtheme'}
  ```

</details>

<details>
 <summary>Lazy</summary>

  ```
  return {'ethan-heimer/crookedtheme'}
  ```

</details>

## Config
Adding a capatable theme to Crooked Theme is very simple. The Following is a
walk through to install the [Crooked Teeth](https://github.com/Ethan-Heimer/CrookedTeeth)
Theme using Lazy Nvim.

1. Install The Theme
```lua
{
    'ethan-heimer/crookedteeth'
}
```

2. Regester the theme into Crooked Theme
```lua
-- In the crooked theme config
local crooked = require("crookedtheme")
local crookedteeth = require("crookedteeth")
    
crooked.AddTheme(crookedteeth)
```

3. Apply the theme as default (optional)
```lua
-- This will apply the theme when NeoVim is started
crooked.Apply(crookedteeth)
```

Here is what a complete config looks like:
```lua
-- crookedtheme.lua
return {
    { -- install crooked theme manager
        'ethan-heimer/crookedtheme',
        branch = 'main', -- optional

        -- crooked theme config
        config = function()
            local crooked = require("crookedtheme")

            local crookedteeth = require("crookedteeth")
            local crookedslick = require("crookedslick")

            crooked.AddTheme(crookedteeth)
            crooked.AddTheme(crookedslick)

            -- apply a default theme
            crooked.Apply(crookedteeth)
        end
    },
    { -- install crooked teeth theme
        'ethan-heimer/crookedteeth'
    },
    { -- install crooked slick theme 
        'ethan-heimer/crookedslick'
    }
}
```

## Commands
The CrookedTheme Theme Manager has 3 Commands:

1. ***:ThemeApply*** (Theme Name)
Applys a theme with the given name.

2. ***:ThemeSelect***
Select and Apply a theme from a selection screen.

3. ***:ThemeList***
Lists all themes added to the manager.

## Theme Development API
CrookedTheme provides a high level API that allows you to create custom themes easily.

### Getting Started
Getting started is as simple as cloning the template repository 
[here](https://github.com/Ethan-Heimer/CrookedThemeBase.git).

With the template, to name your theme, run `./name.sh {Your Theme Name}`. This will
Handle renaming everything that needs your themes name.

The main theme file can be found at `./lua/{Your Theme Name}/theme.lua`, where
you can begin using the Theme Development API to start making your own theme.

### Building a Theme
The Theme API is split into 4 sections: 

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
<details>
  <summary>Netrw</summary>

   The Netrwr section contains all settings that have to do with Netrw. Here are the settings you'll find:

   <details>
    <summary>dir</summary>
    Changes the color of directories
   
    theme.netrw.dir  = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>exe</summary>
    Changes the color of executables
   
    theme.netrw.exe  = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>symlink</summary>
    Changes the color of symlinks
   
    theme.netrw.symlink  = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>version</summary>
    Changes the color of the netrw version
   
    theme.netrw.version  = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>gray</summary>
    Changes the color of the netrw secondary color
   
    theme.netrw.gray  = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>comment</summary>
    Changes the color of netrw comments
   
    theme.netrw.comment  = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>base</summary>
    Changes the base color of netrw text
   
    theme.netrw.base  = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>time</summary>
    Changes the color of netrw time
   
    theme.netrw.time  = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>date</summary>
    Changes the color of netrw date
   
    theme.netrw.date  = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>change</summary>
    Changes the color of change highlighting in netrw
   
    theme.netrw.change  = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>cursorLine</summary>
    Changes the color of the cursor line
   
    theme.netrw.cursorLine  = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>
</details>
<details>
  <summary>Keywords (optional)</summary>

   The Keywords section contains all settings that have to do with changing the colors of specific key words. These options are optional as the 'base' section covers most of these keywords. Here are the settings you'll find:

   <details>
    <summary>method</summary>
     Changes the color of the function declaration key word
   
     theme.keyword.method = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)} 
  </details>

   <details>
    <summary>modifiers</summary>
    Changes the color of modifiers
   
    theme.keyword.modifier  = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>builtinType</summary>
    Changes the color of built in types
   
    theme.keyword.builtinType  = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>builtinMethod</summary>
    Changes the color of built in methods
   
    theme.keyword.builtinMethods  = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>builtinConstant</summary>
    Changes the color of built in constants
   
    theme.keyword.builtinConstants  = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>loop</summary>
    Changes the color of loop keywords (while, for, foreach)
   
    theme.keyword.loop  = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>returning</summary>
    Changes the color of the return keyword
   
    theme.keyword.returning  = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>conditional</summary>
    Changes the color of conditional keywords
   
    theme.keyword.conditional = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>macroConstants</summary>
    Changes the color of macro constants
   
    theme.keyword.macroConstant  = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>import</summary>
    Changes the color of import keywords
   
    theme.keyword.import  = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>define</summary>
    Changes the color of the '#define' keyword
   
    theme.keyword.define  = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>definitions</summary>
    Changes the color of class definitions (struct, class, template)
   
    theme.keyword.definitions = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>
   
  <details>
    <summary>variable</summary>
    Changes the color of variables and variable definitions
   
    theme.keyword.variable = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>namespace</summary>
    Changes the color of namespaces
   
    theme.keyword.namespace = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>operators</summary>
    Changes the color of operators
   
    theme.keyword.operators = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>property</summary>
    Changes the color of class properties
   
    theme.keyword.property = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>parameter</summary>
    Changes the color of function parameters
   
    theme.keyword.parameter = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>escapeChar</summary>
    Changes the color of escape characters
   
    theme.keyword.escapeChar = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>macroMethod</summary>
    Changes the color of class macro methods
   
    theme.keyword.macroMethod = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>functionCall</summary>
    Changes the color of function calls
   
    theme.keyword.functionCall = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>regex</summary>
    Changes the color of regex patterns
   
    theme.keyword.regex = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>

  <details>
    <summary>allocation</summary>
    Changes the color of allocation keywords (may not work for 'new' and 'delete' in C++)
   
    theme.keyword.allocation = {fg = (hex), bold = (flag), underline = (flag), italic = (flag)}
    
  </details>
</details>

A finished theme might look a little something like [this](https://github.com/Ethan-Heimer/CrookedPastel/blob/main/lua/crookedpastel/pastel.lua)

## Capatable Themes

- [Crooked Pastel](https://github.com/Ethan-Heimer/CrookedPastel)
- [Crooked Slick](https://github.com/Ethan-Heimer/CrookedSlick)
- [Crooked Teeth](https://github.com/Ethan-Heimer/CrookedTeeth)




