require_relative('../db/sql_runner.rb')

class Customer

attr_accessor :id, :name, :funds

def initialize(options)
  @id = options['id'].to_i if options['id'] != nil
  @name = options['name']
  @funds = options['funds']
end

def save
  sql = "INSERT INTO customers (name, funds) VALUES ('#{@name}', #{@funds}) RETURNING *";
  customer = SqlRunner.run(sql).first
  @id = customer ['id']
end

def films
  sql = "SELECT * FROM films WHERE customer_id = #{@id}"
  films = SqlRunner.run( sql )
  result = films.map {|film| Film.new(film) }
  return result
end

def self.all()
  sql = "SELECT * FROM customers"
  return Customer.map_items(sql)
end

def self.map_items(sql)
 customers = SqlRunner.run(sql)
 result = customers.map { |customer| Customer.new(customer)}
 return result
 end

 def self.map_item(sql)
  result = Customer.map_items(sql)
  return result.first
 end

 def self.delete_all() 
   sql = "DELETE FROM customers"
   SqlRunner.run(sql)
 end

end