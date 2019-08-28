SLASH_ALPHALOCK1 = "/shard";
SlashCmdList["ALPHALOCK"] = function(msg)
	local numCheck = tonumber(msg); -- check if user entered a number
	local bagNum = 4;
	local slotNum = 4;
	local slotsAvail;
	local soulShardID = 6365;
	local shardsDeleted = 0;
	local itemName, itemLink = GetItemInfo("Soul Shard");
	local compareLink = itemLink;
	if numCheck then -- if user entered a number
		local counter = 0;
		for bagNum = 4, 0, -1 do
			for slotsAvail = GetContainerNumSlots(bagNum), 1, -1 do
				texture, itemCount, locked, quality, readable, lootable, itemLink = GetContainerItemInfo(bagNum, slotsAvail);
				if itemLink == compareLink and quality == 1 then
					if counter >= numCheck then -- if I've seen more soul shards than desired, delete.
						PickupContainerItem(bagNum, slotsAvail);
						DeleteCursorItem();
						shardsDeleted = shardsDeleted + 1;
						counter = counter + 1;
					else -- if I haven't seen more soul shards than desired, count.
						counter = counter + 1;
					end;
				end;
			end;
		end;
		print("Deleted: " .. shardsDeleted .. " " .. compareLink);
		counter = counter - shardsDeleted;
		print("You have: " .. compareLink .. "x" .. counter);
	elseif msg == "help" then
		print("Example: /shard 10\n will keep 10 shards and delete the rest.");
	else -- if user didn't enter a number
		-- does nothing
		print("Example: /shard 10\n will keep 10 shards and delete the rest.");
	end;
end;
