-- title: Calculator  
-- author: Lucas Menezes
-- date: 12/04/2016
-- version: 0.3.0
-- size:  ?

-- AE : x must be a numeric variable
-- AS : true if x is NaN, else false.
function isnan(x) 
  return x ~= x 
end

-- auxiliary function to check for calculation errors in acc.
-- also helps the user to treat then.
-- AE: value must be numeric
-- AS: User will be informed of a non-number result, and will have decided what to do about it
-- acc can be reset (set to 0) or persist its valor, upon user decision.
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


-- AE : str should be a known command
-- if a command is detected in str, the rest of str is ignored
-- a command may ask an input parameter via keyboard
-- if no command is detected, it displays an error message
-- AS : at the end, acc is updated by command 

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
-- start  cicle sequence
cmdStr = io.read()

acc  = 0-- var to represent the current result

-- AE : cmdStr is a string. 
-- cmdStr is not the command quit
-- loop: a command will be processed
-- user will be notified if a calculation error occur
-- acc will be displayed
-- AS the program will finish after a quit command by endloop
while(cmdStr ~= "quit")  do
  print("Received " .. cmdStr)
  chooseOperation(cmdStr)
  checkError(acc)
  print(string.format("acc: %f",acc))
  cmdStr = io.read()
end

