# Calculadora Básica em Ruby

def exibir_menu
  puts "Calculadora Básica"
  puts "Escolha uma operação:"
  puts "1. Soma (+)"
  puts "2. Subtração (-)"
  puts "3. Multiplicação (*)"
  puts "4. Divisão (/)"
  puts "5. Sair"
end

def calcular(opcao, num1, num2)
  case opcao
  when 1
    num1 + num2
  when 2
    num1 - num2
  when 3
    num1 * num2
  when 4
    if num2 != 0
      num1.to_f / num2
    else
      "Erro: Divisão por zero"
    end
  else
    "Operação inválida"
  end
end

loop do
  exibir_menu
  print "Digite o número da operação: "
  opcao = gets.chomp.to_i

  break if opcao == 5

  if (1..4).include?(opcao)
    print "Digite o primeiro número: "
    num1 = gets.chomp.to_f
    print "Digite o segundo número: "
    num2 = gets.chomp.to_f

    resultado = calcular(opcao, num1, num2)
    puts "Resultado: #{resultado}"
  else
    puts "Opção inválida! Tente novamente."
  end

  puts "-" * 30
end

puts "Obrigado por usar a calculadora!"
