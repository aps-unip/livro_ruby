def da_boas_vindas
  puts 'Bem-vindo ao jogo da adivinhação'
  puts 'Qual é o seu nome?'
  nome = gets
  puts "\n\n\n\n\n\n"
  puts "Começaremos o jogo para você, #{nome}"
end

def sorteia_numero_secreto
  puts 'Escolhendo um número secreto de 0 a 200'
  sorteado = rand(200)
  puts 'Escolhido... que tal adivinhar hoje nosso número secreto?'
  sorteado
end

def pede_um_numero(tentativa, limite_de_tentativa)
  puts "\n\n\n\n"
  puts "Tentativa #{tentativa.to_s} de #{limite_de_tentativa.to_s}"
  puts 'Entre com o número'
  chute = gets
  puts "Será que acertou? Você chutou #{chute}"
  chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
  acertou = numero_secreto == chute
  if acertou
    puts 'Acertou!'
    return true
  end
  maior = numero_secreto > chute
  if maior
    puts 'O número é maior!'
  else
    puts 'O número é menor'
  end
  false
end
