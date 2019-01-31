def lerOpcao()
    gets.to_i
end

opcao = 0
tarefas = []

while opcao != 3 do
    puts "Bem-vindo ao Task List! Escolha uma opção no menu: \n"
    puts '[1] Inserir uma tarefa'
    puts '[2] Ver todas as tarefas'
    puts '[3] Sair'
    puts
    print 'Opção escolhida: '
    opcao = lerOpcao()
    if opcao == 1
      print 'Digite sua tarefa: '
      tarefa = gets.chomp()
      tarefas << tarefa
      puts
      puts 'Tarefa cadastrada: ' + tarefa
    elsif opcao == 2
      puts
      print 'Tarefas: '
      puts tarefas
    elsif opcao == 3
        puts 'Saindo do sistema'
    else
      puts
      puts 'Opção inválida'
    end
end


