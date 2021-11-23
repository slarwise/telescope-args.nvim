# telescope-args.nvim

A [telescope](https://github.com/nvim-telescope/telescope.nvim) extension for
navigating the args.

## Setup

To install the extension, do

```lua
require('telescope').load_extension('args')
```

## Usage

Call it using the `Telescope` command:

```vim
:Telescope args
```

Pressing enter on a file will go to that file. The usual Telescope mappings for
file pickers such as <C-x> to open the file in a horizonal split work as usual.
