-- titulo: Criptografador  
-- autor: Lucas Menezes
-- data: 12/04/2016
-- version: 0.0.1
-- size:  ?

print("Simple Calcultator")
cmdStr = io.read()

acc  = 0-- var to represent the current result


while(cmdStr ~= "quit")  do
print("Received " .. cmdStr)

cmdStr = io.read()
end

function chooseOperation(str)
  if string.match(str, "add") then
    print ("add")
 
  else
    print("unknown error")
  end
end

function tranformStr(str)
  print(str.byte);
end
