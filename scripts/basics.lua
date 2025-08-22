-- lua scripts/basics.lua

-- 1. Variables and types
local number = 1984
local str = "Hello, Lua!"
local bool = true
local nothing = nil

print("Number:", number)
print("String:", str)
print("Boolean:", bool)
print("Nil:", nothing)

-- 2. Arithmetic and string operations
print("5 + 3 =", 5 + 3)
print("Concatenation: " .. "Learning " .. "Lua!")

-- 3. Tables
-- The only built-in composite data structure in Lua.
-- It acts like:
--     an array (list-like, numeric indices)
--     a dictionary / map (key–value pairs)
--     an object (you can attach functions and use metatables for OOP-like behavior)
local t = {1, 2, 3, x = 10, y = 20}
-- 1-based
print("t[1] =", t[1])
print("t.x =", t.x)

-- Iterate over key-value pairs
for k, v in pairs(t) do
   print("Key:", k, "Value:", v)
end

-- 4. Control flow
if number > 10 then
   print("number is greater than 10")
elseif number == 10 then
   print("number is exactly 10")
else
   print("number is less than 10")
end

-- 5. Loops
print("While loop:")
local i = 1
while i <= 3 do
   print("i =", i)
   i = i + 1
end

print("For loop:")
for j = 1, 3 do
   print("j =", j)
end

-- 6. Functions
local function greet(name)
   return "Hello, " .. name .. "!"
end

print(greet("Dave"))

-- Functions are first-class: can store them in tables
local ops = {
   square = function(x) return x * x end,
   cube = function(x) return x * x * x end
}

print("Square(4):", ops.square(4))
print("Cube(3):", ops.cube(3))

-- 7. Closures
-- A function that remembers the variables from the scope in which it was created, even after that scope has finished executing.
function make_counter()
   local count = 0
   return function()
      count = count + 1
      return count
   end
end

local counter = make_counter()
print("Counter:", counter(), counter(), counter())

-- 8. Metatables (basic OOP-like behavior)
local vec = {x = 1, y = 2}
local mt = {
   __tostring = function(v)
      return "(" .. v.x .. "," .. v.y .. ")"
   end,
   __add = function(a, b)
      return {x = a.x + b.x, y = a.y + b.y}
   end
}
setmetatable(vec, mt)

local v2 = setmetatable({x = 3, y = 4}, mt)
local v3 = vec + v2
print("vec:", vec, "v2:", v2, "v3:", v3)

-- 9. Modules
local M = {}
function M.say_hi()
   print("Hi from module M!")
end
M.say_hi()
