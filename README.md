# telescope-args.nvim

A [Telescope](https://github.com/nvim-telescope/telescope.nvim) extension for
navigating the argument list. The argument list consists of the files that
neovim was started with, and can be edited using e.g. `:argadd`, see `:h args`.

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
