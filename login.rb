class User
    attr_reader :nome, :senha
    attr_writer :nome
  
    def initialize(nome, senha)
      @nome = nome
      @senha = senha
    end

    def verificar_login
    @nome = nome && @senha = senha 
    end
  end
  
  loop do
    puts "-------------------------------------"
    puts "|Bem Vindo ao nosso Sistema de Login|"
    puts "-------------------------------------"
    puts "|1-Criar conta                      |"
    puts "|2-Fazer Login                      |"
    puts "|0-Sair                             |"
    puts "-------------------------------------"
    option = gets.chomp.to_i
  
    case option
    when 1
      puts "Criar Conta"
      print "Digite seu Nome de usuário: "
      nome = gets.chomp
      print "Digite sua Senha de Usuário: "
      senha = gets.chomp
      user = User.new(nome, senha)
      puts "Conta criada com sucesso para o usuário #{user.nome}"
    when 2
      puts "Fazer Login: "
      print "Digite seu Nome de usuário: "
      nome = gets.chomp
    
      print "Digite sua Senha de Usuário: "
      senha = gets.chomp
      if user && verificar_login(nome, senha)
      else
        puts "Login feito com sucesso"
      end
    when 0
      puts "Sair"
      break
    else
      puts "Opção Não Reconhecida."
    end
  end
  
