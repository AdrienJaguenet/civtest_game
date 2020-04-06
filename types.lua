--This file contains emmylua definitions.
--DO NOT RUN THIS FILE. EVER. EVER. EVER
--These definitions do nothing else besides help with VS code auto completion with this plugin: https://marketplace.visualstudio.com/items?itemName=sumneko.lua

---@class Posistion
---@field x number
---@field y number
---@field z number
local Posistion = {}

---@class Node
---@field name string
---@field param1 any
---@field param2 any
local node = {}

---@class minetest
minetest = {}

---@param name string
---@param message string
function minetest.chat_send_player(name, message) end

---@param message string
function minetest.chat_send_all(message) end

---@param name string
---@param def table
function minetest.register_craftitem(name, def) end

--Global callback registration functions
--------------------------------------

--Call these functions only at load time!

---@param func function
function minetest.register_globalstep(func) end

---@param func function
function minetest.register_on_mods_loade(func) end

---@param func function
function minetest.register_on_shutdown(func) end

---@param func function
function minetest.register_on_placenode(func) end

---@param func function
function minetest.register_on_dignode(func) end

---@param func function
function minetest.register_on_punchnode(func) end

--Environment access
-----------------------

---@param pos Posistion
---@param node Node
function minetest.set_node(pos, node) end

---@param pos Posistion
---@param node Node
function minetest.add_node(pos, node) end

---@param pos_array Posistion[]
---@param node Node
function minetest.bulk_set_node(pos_array, node) end

---@param pos Posistion
---@param node Node
function minetest.swap_node(pos, node) end

---@param pos Posistion
function minetest.remove_node(pos) end

---@param pos Posistion
---@return Node
function minetest.get_node(pos) end

---@param pos Posistion
---@return Node | nil
function minetest.get_node_or_nil(pos) end

---@class ObjectRef
local ObjectRef ={} --This has no function, but emmylua requires it

---@return Posistion
function ObjectRef:get_pos() end

---@param pos Posistion
function ObjectRef:set_pos(pos) end

---@class Player : ObjectRef
local Player = {}

---@return string
function Player:get_player_name() end

---@return boolean
function Player:is_player() end

---@return InvRef
function Player:get_inventory() end

---@class MetaDataRef
local MetaDataRef = {}

---@param name string
---@param value string
function MetaDataRef:set_string(name, value) end

---@param name string
---@param value integer
function MetaDataRef:set_int(name, value) end


---@param name string
---@param value number
function MetaDataRef:set_float(name, value) end

---@param name string
---@return string
function MetaDataRef:get_string(name) end

---@param name string
---@return number
function MetaDataRef:get_int(name) end

---@param name string
---@return number
function MetaDataRef:get_float(name) end

---@return nil| table
function MetaDataRef:to_table() end

---@class InvRef
local InvRef = {}

---@param listname string
---@return boolean
function InvRef:is_empty(listname) end