-- titulo: Criptografador  
-- autor: Lucas Menezes
-- data: 12/04/2016
-- version: 0.0.0
-- size:  ?

print("Simple Calcultator")
cmdStr = io.read()


acc -- var to represent the current result

while(cmdStr ~= "quit") 
do
print("Received " .. cmdStr)

cmdStr = io.read()
end

function chooseOperation()
  
end

function tranformStr(str)
  print(str.byte);
end
