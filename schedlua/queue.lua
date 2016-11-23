--[[
	Queue
--]]
local tabutils = require("schedlua.tabutils")

local Queue = {}
setmetatable(Queue, {
	__call = function(self, ...)
		return self:create(...);
	end,
});

local Queue_mt = {
	__index = Queue;
}

Queue.init = function(self, first, last, name)
	first = first or 1;
	last = last or 0;

	local obj = {
		first=first, 
		last=last, 
		name=name};

	setmetatable(obj, Queue_mt);

	return obj
end

Queue.create = function(self, first, last, name)
	first = first or 1
	last = last or 0

	return self:init(first, last, name);
end

--[[
function Queue.new(name)
	return Queue:init(1, 0, name);
end
--]]

local function comparePriority(task1, task2)
	if task1.Priority < task2.Priority then
		return true
	end
	return false;
end

function Queue:enqueue(value)
	local last = self.last + 1
	self.last = last
	self[last] = value
	return value
end

function Queue:myenqueue(value)
	if self.last == 1 then
		print("length ", #self)
		local last = self.last + 1
		self.last = last
		self[last] = value
	else
		tabutils.binsert(self, value, comparePriority)
		self.last = self.last + 1
	end
	return value
end

function Queue:pushFront(value)
	-- PushLeft
	local first = self.first - 1;
	self.first = first;
	self[first] = value;
end

function Queue:dequeue(value)
	-- return self.MyList:PopLeft()
	local first = self.first

	if first > self.last then
		return nil, "list is empty"
	end
	
	local value = self[first]
	self[first] = nil        -- to allow garbage collection
	self.first = first + 1

	return value	
end

function Queue:length()
	return self.last - self.first+1
end

-- Returns an iterator over all the current 
-- values in the queue
function Queue:Entries(func, param)
	local starting = self.first-1;
	local len = self:length();

	local closure = function()
		starting = starting + 1;
		return self[starting];
	end

	return closure;
end


return Queue;
