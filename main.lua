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
frame:SetPoint("TOP", UIParent, "CENTER")
frame:SetMovable(true)
frame:EnableMouse(true)
frame:SetScript("OnMouseDown", frame.StartMoving)
frame:SetScript("OnMouseUp", frame.StopMovingOrSizing)

-- create a texture
frame.texture = frame:CreateTexture("MacroAutoComplete_BackgroundTexture")
frame.texture:SetAllPoints(frame)
frame.texture:SetTexture(120,120,120)

-- give it a title
frame.title = frame:CreateFontString("MacroAutoComplete_Title", "OVERLAY", "GameFontNormal")
frame.title:SetPoint("TOP", 0, 0)
frame.title:SetText("Macro Auto-Complete")

-- create edit box
local editBox = CreateFrame("EditBox", "MacroAutoComplete_EditBox", frame);
editBox:SetPoint("CENTER", frame, 0, 0);
editBox:SetWidth(300);
editBox:SetText("Enter a spell name to auto-complete...");
editBox:SetAutoFocus(true);
editBox:SetMultiLine(false);
editBox:SetMaxLetters(200);

editBox.texture = frame:CreateTexture("MacroAutoComplete_BackgroundTexture")
editBox.texture:SetAllPoints(editBox)
editBox.texture:SetTexture(200,200,200)