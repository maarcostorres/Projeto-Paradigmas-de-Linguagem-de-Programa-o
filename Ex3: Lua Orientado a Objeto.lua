Account = {
  balance = 0,
  history = {}
} 

function Account:new(o)
  local obj = o or {}
  setmetatable(obj, self)
  self.__index = self 
  return obj
end

function Account:deposit(amount)
  self.balance = self.balance+amount
  table.insert(self.history, 'deposito de:'..amount) 
end
function Account:transfer(to_account, amount)
  if self.balance < amount then
    print('Você não pode executar essa operação, saldo insuficiente') 
    return
  end

  self.balance = self.balance - amount
  to_account.balance = to_account.balance + amount
  table.insert(self.history, 'transferência de: ' .. amount) 
  table.insert(to_account.history, 'transferência de: ' .. amount)
end
function Account:withdraw(amount)
     if self.balance < amount then
    print('Você não pode executar essa operação')
    return
  end
    self.balance = self.balance - amount
end    

local Giggio = Account:new()
local Markin = Account:new()

Giggio:deposit(100)
Giggio:transfer(Markin,50)
Giggio:withdraw(40)
Giggio:withdraw(50)

print('Saldo do Giggio: '..Giggio.balance)
print('Saldo do Markin: '..Markin.balance)
