-- titulo: Criptografador  
-- autor: Lucas Menezes
-- data: 12/04/2016
-- version: 0.1.2
-- size:  ?


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
  print(string.format("acc: %f",acc))
end
print("Simple Calcultator")
cmdStr = io.read()
mode = no_op

acc  = 0-- var to represent the current result


while(cmdStr ~= "quit")  do
print("Received " .. cmdStr)
chooseOperation(cmdStr)
cmdStr = io.read()
end



function tranformStr(str)
  print(str.byte);
end
