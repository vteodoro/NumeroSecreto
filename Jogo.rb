def boas_vindas
	puts "Qual é o teu nome? "
	nome = gets
	puts
	puts "Bem vindo(a) ao jogo #{nome.strip}!"
	puts 
end

def escolhendo_numero_secreto
	puts "Número secreto entre 0 e 200! Que tal adivinhar qual é o número?"
	n_secreto_local = 175
	n_secreto_local
end

def pede_um_numero(chutes, cont, limite_tent)
	puts
	puts "Tentativa #{cont.to_s} de #{limite_tent.to_s} : "
	puts "Digite um número: "
	chute = gets
	chute.to_i
end

def verifica_numero(n_secreto, chute)
	acertou = n_secreto == chute
    if acertou
        puts "Acertou!"
        return true
    end
    maior = n_secreto > chute
    if maior
        puts "O número secreto é maior!"
    else
        puts "O número secreto é menor!"
    end
    false
end

def gameover(cont, chute, n_secreto)
	if cont == 3
		if chute != n_secreto
			puts
			puts "Tentativas zeradas!"
			puts
			puts "Número secreto é #{n_secreto.to_s}"
		end
	end
end


boas_vindas

n_secreto = escolhendo_numero_secreto

limite_tent = 3
chutes = []

for cont in 1..limite_tent
	chute = pede_um_numero chutes, cont, limite_tent
	chutes << chute
	puts "Todos os chutes: #{chutes}"
	
	if verifica_numero n_secreto, chute
		break
	end
	if gameover cont, chute, n_secreto
		break
	end
end
