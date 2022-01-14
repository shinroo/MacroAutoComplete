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

-- create a frame
local frame = CreateFrame("Frame", "MacroAutoComplete_Main", UIParent)
frame:SetWidth(500)
frame:SetHeight(200)
frame:SetPoint("CENTER", UIParent, "TOP")

-- create a texture
frame.texture = frame:CreateTexture("MacroAutoComplete_BackgroundTexture")
frame.texture:SetTexture(83,86,90)

-- give it a title
frame.title = frame:CreateFontString("MacroAutoComplete_Title", "OVERLAY", "GameFontNormal")
frame.title:SetPoint("TOP", 0, 0)
frame.title:SetText("Macro Auto-Complete")