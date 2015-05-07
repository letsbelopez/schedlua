--test_stopwatch.lua
package.path = package.path..";../?.lua"

local Kernel = require("kernel"){makeGlobal = true};
local Alarm = require("alarm")(Kernel)
local Clock, timespec = require("clock")

local c1 = Clock();

local function twoSeconds()
	print("TWO SECONDS: ", c1:secondsElapsed());
	Kernel:halt();
end

local function test_alarm_delay()

	Alarm:delay(twoSeconds, 2000);
end

run(test_alarm_delay)