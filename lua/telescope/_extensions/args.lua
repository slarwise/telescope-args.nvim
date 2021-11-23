local has_telescope, telescope = pcall(require, 'telescope')
if not has_telescope then
  error('This plugins requires nvim-telescope/telescope.nvim')
end

local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values
local make_entry = require "telescope.make_entry"

local args = function(opts)
    opts = opts or {}

    local arglist = vim.fn.argv()
    if not next(arglist) then
        return
    end

    local args = {}
    for i, path in ipairs(arglist) do
        local element = {
            path = path,
            index = i
        }
        table.insert(args, element)
    end

    pickers.new(opts, {
        prompt_title = "Args",
        finder = finders.new_table {
            results = args,
            entry_maker = function(entry)
                return {
                    value = entry,
                    display = string.format("%s\t%s", entry.index, entry.path),
                    ordinal = string.format("%s\t%s", entry.index, entry.path),
                    path = entry.path,
                }
            end
        },
        previewer = conf.grep_previewer(opts),
        sorter = conf.generic_sorter(opts),
    }):find()
end

return telescope.register_extension {
    exports = { args = args },
}
