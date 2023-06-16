require_relative 'models/parking'

initial_price = 0
initial_hours = 0

menu = Parking.new(initial_price, initial_hours)

while initial_price <= 0
  puts 'Digite o valor da taxa de cadastro:'
  initial_price = gets.chomp.to_f
  menu.valid_value(initial_price)
end

puts 'Agora digite o preço por hora:'
while initial_hours <= 0
  puts 'Digite a taxa paga por hora:'
  initial_hours = gets.chomp.to_f
  menu.valid_value(initial_hours)
end

actived_menu = true

while actived_menu
  system('clear')
  puts 'Digite a sua opção:'
  puts '1 - Cadastrar veículo'
  puts '2 - Remover veículo'
  puts '3 - Listar veículos'
  puts '4 - Encerrar'

  opcao = gets.chomp

  case opcao
  when '1'
    menu.add_vehicle
  when '2'
    menu.remove_vehicles
  when '3'
    menu.list_vehicles
  when '4'
    actived_menu = false
  else
    puts 'Opção inválida'
  end

  puts 'Pressione uma tecla para continuar'
  gets.chomp
end

puts 'O programa se encerrou'
