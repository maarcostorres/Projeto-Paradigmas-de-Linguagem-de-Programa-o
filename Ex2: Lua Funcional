-- Função para calcular o fatorial de um número
local function fact(n)
  if n <= 1 then
    return 1
  else
    return n * fact(n - 1)
  end
end

-- Função para obter e imprimir o resultado do fatorial
local function main()
  while true do
    print("Digite um número (ou 'exit' para encerrar o código):")
    local input = io.read("*line")

    if input == "exit" then
      break
    end

    local number = tonumber(input)

    if number then
      print("O fatorial de " .. number .. " é: " .. fact(number))
    else
      print("Entrada inválida. Por favor, digite um número que seja válido.")
    end
  end
end

-- Chama a função principal
main()
