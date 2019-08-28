
-- autozoom camera out
local distance = 2.6; -- defaulted to the maximum zoom-out value.
local maxYards = 39;  -- the maximum zoom out distance allowed in WoW.
SetCVar("cameraDistanceMaxZoomFactor", distance);
CameraZoomOut(maxYards);

--SLASH_TEST1 = "/test1"
--SLASH_TEST2 = "/addontest1"
--SLASH_TEST3 = "/test"
--SlashCmdList["TEST"] = function(msg)
--   print("Hello World!")
--end 

SlashCmdList["ALPHACAM"] = function(msg)
	local numCheck = tonumber(msg); -- check if user entered a number
	if msg == "help" then -- if user is requesting help
		print("Pick a number between 1 and 2.6");
		print("Examples:\n /camera 1.8\n /camera max \n /camera min");
	elseif msg == "min" then
		SetCVar("cameraDistanceMaxZoomFactor", 1);
		CameraZoomOut(39);
	elseif msg == "max" then
		SetCVar("cameraDistanceMaxZoomFactor", 2.6);
		CameraZoomOut(39);
	elseif numCheck then -- if user entered a number, this WILL NOT run
		SetCVar("cameraDistanceMaxZoomFactor", numCheck);
		CameraZoomOut(39);
		if numCheck < 1 then
			print("WoW does not allow for factors smaller than 1!");
		elseif numCheck > 2.6 then
		    print("WoW does not allow for factors greater than 2.6!");
		else
			print("Max Camera Distance Factor set to: " .. msg);
		end;
	end;
end;
SLASH_ALPHACAM1 = "/camera";

