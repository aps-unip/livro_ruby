require_relative 'maior_ou_menor2'

da_boas_vindas
numero_secreto = sorteia_numero_secreto
limite_de_tentativa = 5
(1..limite_de_tentativa).each { |tentativa|
  chute = pede_um_numero tentativa, limite_de_tentativa
  if verifica_se_acertou numero_secreto, chute
    break
  end
}
puts "\n\n"
puts "O número sorteado foi #{numero_secreto}"
