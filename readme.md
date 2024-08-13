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

  The Base Section contains all settings that have to do with basic code editing and files. Here are the settings you'll find here:

  <details>
    <summary>Number</summary>

     Test
  <details>

</details>




