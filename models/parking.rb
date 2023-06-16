class Parking
  def initialize(initial_price, initial_hours)
    @initial_price = initial_price
    @initial_hours = initial_hours
    @vehicles = []
  end

  def add_vehicle
    puts 'Digite a placa do veículo para estacionar:'
    plate = gets.chomp
    @vehicles << plate
  end

  def remove_vehicles
    puts 'Digite a placa do veículo para remover:'
    plate = gets.chomp

    if @vehicles.any? { |vehicle| vehicle.upcase == plate.upcase }
      puts 'Digite a quantidade de horas que o veículo permaneceu estacionado:'
      hours = gets.chomp.to_i
      total_price = @initial_price + @initial_hours * hours

      @vehicles.delete(plate)
      puts "O veículo #{plate} foi removido e o preço total foi de: R$ #{total_price}"
    else
      puts 'Desculpe, esse veículo não está estacionado aqui. Confira se digitou a placa corretamente'
    end
  end

  def list_vehicles
    if @vehicles.any?
      puts 'Os veículos estacionados são:'
      @vehicles.each do |plate|
        puts plate
      end
    else
      puts 'Não há veículos estacionados.'
    end
  end

  def valid_value(value)
    sucess = value.positive?
    system('clear')
    puts sucess ? 'Valor registrado!' : 'Sua tarifa não é positiva, por favor digite um valor válido.'
  end
end
