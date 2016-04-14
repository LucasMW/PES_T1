-- title: Calculator  
-- author: Lucas Menezes
-- date: 12/04/2016
-- version: 0.3.0
-- size:  ?

function isnan(x) 
  return x ~= x 
end

function checkError(value)
  if isnan(value) == true or math.abs(value) == math.huge then
    print("Performed operation resulted in not a number")
    print("reset it to zero now? y/n")
    answer = io.read()
    if string.match(answer, "yes") or answer == "y" then
      acc = 0
    else
      print("you can always use the command clear later")
    end
  end
      
end

local add, sub, mult, div, no_op = 0, 1, 2, 4, 8
function chooseOperation(str)
  if string.match(str, "add") then
    print ("enter next number")
    number = tonumber(io.read())
    acc = acc + number
  elseif string.match(str, "sub")  then
    print ("sub")
    print ("enter next number")
    number = tonumber(io.read())
    acc = acc - number
  elseif string.match(str, "mult")  then
    print ("mult")
    print ("enter next number")
    number = tonumber(io.read())
    acc = acc * number
  elseif string.match(str, "div")  then
    print ("div")
    print ("enter next number")
    number = tonumber(io.read())
    acc = acc / number
  elseif string.match(str, "clear")  then
    acc = 0
  elseif string.match(str, "set")  then
    print ("set")
    print ("enter next number")
    number = tonumber(io.read())
    acc = number
  else
    print("unknown error")
  end
end


-- program start 
print("Simple Calcultator")
cmdStr = io.read()

acc  = 0-- var to represent the current result


while(cmdStr ~= "quit")  do
  print("Received " .. cmdStr)
  chooseOperation(cmdStr)
  checkError(acc)
  print(string.format("acc: %f",acc))
  cmdStr = io.read()
end

