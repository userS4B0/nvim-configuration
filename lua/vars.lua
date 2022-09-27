-- [[ vars.lua ]]

local g = vim.g
g.t_co = 256

local status_ok, notify = pcall(require, "notify")
if status_ok then vim.notify = require("notify") end

-- Update packpath
local packer_path = vim.fn.stdpath("config") .. "/site"
vim.o.packpath = vim.o.packpath .. "," .. packer_path
