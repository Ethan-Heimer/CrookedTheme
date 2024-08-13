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



