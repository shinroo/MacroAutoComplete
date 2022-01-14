--[[
    MacroAutoComplete: Autocomplete for World of Warcraft 3.3.5a Macros
    Copyright (C) 2022 Robert Focke

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License along
    with this program; if not, write to the Free Software Foundation, Inc.,
    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
]]--

--[[ Create Frame ]]--
local frame = CreateFrame("Frame", "MyAddon_Frame")
frame:SetSize(100, 100)
frame:ClearAllPoints()
frame:SetPoint("TOPLEFT")

--[[ Create Frame Texture ]]--
frame.texture = CreateTexture("$parent_Texture")
frame.texture:SetAllPoints(frame)
frame.texture:SetTexture(" ")