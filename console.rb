require_relative( 'models/customer' )
require_relative( 'models/film' )
require_relative( 'models/ticket' )
require( 'pry-byebug' )

Ticket.delete_all()
Film.delete_all()
Customer.delete_all()


film1 = Film.new({ 'title' => 'Pulp Fiction', 'price' => 5 })
film1.save()
film2 = Film.new({ 'title' => 'Goodfellas', 'price' => 4 })
film2.save() 
film3 = Film.new({ 'title' => 'Heat', 'price' => 3 })
film3.save()
film4 = Film.new({ 'title' => 'Flight Of The Navigator', 'price' => 2 })
film4.save() 

customer1 = Customer.new({ 'name' => 'David', 'funds' => 50 })
customer1.save()
customer2 = Customer.new({ 'name' => 'Tara', 'funds' => 40 })
customer2.save()
customer3 = Customer.new({ 'name' => 'Conor', 'funds' => 30 })
customer3.save()
customer4 = Customer.new({ 'name' => 'Liam', 'funds' => 20 })
customer4.save()
customer5 = Customer.new({ 'name' => 'Erin', 'funds' => 10})
customer5.save()
customer6 = Customer.new({ 'name' => 'Tom', 'funds' => 50 })
customer6.save()
customer7 = Customer.new({ 'name' => 'Joan', 'funds' => 40 })
customer7.save()
customer8 = Customer.new({ 'name' => 'Audrey', 'funds' => 30 })
customer8.save()

ticket1 = Ticket.new({ 'customer_id' => customer1.id , 'film_id' => film1.id })
ticket1.save
ticket2 = Ticket.new({ 'customer_id' => customer2.id , 'film_id' => film2.id })
ticket2.save
ticket3 = Ticket.new({ 'customer_id' => customer3.id , 'film_id' => film3.id })
ticket3.save
ticket4 = Ticket.new({ 'customer_id' => customer4.id , 'film_id' => film4.id })
ticket4.save
ticket5 = Ticket.new({ 'customer_id' => customer5.id, 'film_id' => film1.id })
ticket5.save
ticket6 = Ticket.new({ 'customer_id' => customer6.id, 'film_id' => film4.id })
ticket6.save
ticket7 = Ticket.new({ 'customer_id' => customer7.id, 'film_id' => film3.id })
ticket7.save

binding.pry
nil