require_relative('../db/sql_runner.rb')

class Film

  attr_accessor :id, :title, :price

def initialize(options)
@id = options['id'].to_i if options['id'] != nil
@title = options['title']
@price = options['price']

end

def save
  sql = "INSERT INTO films (title, price) VALUES ('#{@title}', #{@price}) RETURNING *";
film = SqlRunner.run(sql).first
@id = film ['id']
end

def customers
  sql = "SELECT * FROM customers WHERE film_id = #{@id}"
  customers = SqlRunner.run( sql )
  result = customers.map {|customer| Customer.new(customer) }
  return result
end

  def self.delete_all() 
    sql = "DELETE FROM films"
    SqlRunner.run(sql)
  end

  def self.map_items(sql)
   films = SqlRunner.run(sql)
   result = films.map { |film| Film.new(film)}
   return result
   end

   def self.map_item(sql)
    result = Film.map_items(sql)
    return result.first
   end
end
