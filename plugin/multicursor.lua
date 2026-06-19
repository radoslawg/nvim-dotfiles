vim.pack.add({
        "https://github.com/jake-stewart/multicursor.nvim"
})

local mc = require("multicursor-nvim")
mc.setup()

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map({ "n", "x" }, "<leader>mk", function() mc.lineAddCursor(-1) end, { desc = "Add Cursor above", unpack(opts) })
map({ "n", "x" }, "<leader>mj", function() mc.lineAddCursor(1) end, { desc = "Add Cursor below", unpack(opts) })
map({ "n", "x" }, "<leader>mK", function() mc.lineSkipCursor(-1) end, { desc = "Skip Cursor above", unpack(opts) })
map({ "n", "x" }, "<leader>mJ", function() mc.lineSkipCursor(1) end, { desc = "Skip Cursor below", unpack(opts) })
map("n", "<c-leftmouse>", mc.handleMouse)
map("n", "<c-leftdrag>", mc.handleMouseDrag)
map("n", "<c-leftrelease>", mc.handleMouseRelease)
map({ "n", "x" }, "<c-q>", mc.toggleCursor)
local hl = vim.api.nvim_set_hl
hl(0, "MultiCursorCursor", { reverse = true })
hl(0, "MultiCursorVisual", { link = "Visual" })
hl(0, "MultiCursorSign", { link = "SignColumn" })
hl(0, "MultiCursorMatchPreview", { link = "Search" })
hl(0, "MultiCursorDisabledCursor", { reverse = true })
hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
hl(0, "MultiCursorDisabledSign", { link = "SignColumn" });

mc.addKeymapLayer(function(layerSet)
        -- Select a different cursor as the main one.
        layerSet({ "n", "x" }, "<left>", mc.prevCursor)
        layerSet({ "n", "x" }, "<right>", mc.nextCursor)

        -- Delete the main cursor.
        layerSet({ "n", "x" }, "<leader>x", mc.deleteCursor)

        -- Enable and clear cursors using escape.
        layerSet("n", "<esc>", function()
                if not mc.cursorsEnabled() then
                        mc.enableCursors()
                else
                        mc.clearCursors()
                end
        end)
end)
