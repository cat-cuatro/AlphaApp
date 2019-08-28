SLASH_ALPHABAG1 = "/bag";
SlashCmdList["ALPHABAG"] = function(msg)
	local bagNum = 4;
	local numOfSlots;
	local slotNum = 0;
	local bagName = nil;
--	local texture, itemCount, locked, quality, readable, lootable, itemLink;
	if msg == "vendor" then -- if user wants to vendor grey items
		while(bagNum > -1) -- there are no negative bag indices
		do
			numOfSlots = GetContainerNumSlots(bagNum);
--			print(numOfSlots);
			if numOfSlots == 0 then
				bagNum = bagNum - 1;
			elseif numOfSlots > 0 then -- there are no negative slot indices
				slotNum = numOfSlots; -- slot index starts at 0, so a 14 slot bag starts at 13 and ends at 0.
				while(slotNum > -1)
				do
					local texture, itemCount, locked, quality, readable, lootable, itemLink = GetContainerItemInfo(bagNum, slotNum);
					if(quality == 0) then
						print("Bag " .. bagNum .. ", " .. itemLink .. "slot " .. slotNum);
						UseContainerItem(bagNum, slotNum);
					end;
--					if(slotNum == 0) then
--						print("ending");
--					end;
					slotNum = slotNum - 1; -- decrement slot counter
				end;
				bagNum = bagNum - 1;
			end;

		end;
	end;
end;