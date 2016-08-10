require_relative('../db/sql_runner.rb')
class Shoe

  attr_reader(:first_name, :last_name, :style,:quantity,:id,:size)

  def initialize(options)
    @first_name= options["first_name"]
    @last_name= options["last_name"]
    @style= options["style"]
    @quantity = options["quantity"].to_i
    @size = options["size"]
    @id=options["id"].to_i
  end

  def pretty_name()
    return @first_name.concat(" #{@last_name}")
  end

  def total()
    return @quantity * 100
  end

  def save()
    sql = "INSERT INTO shoes (
    first_name,
    last_name,
    style,
    quantity,
    size ) VALUES (
    '#{@first_name}',
    '#{@last_name}',
    '#{@style}',
    #{@quantity},
    #{@size}
    ) RETURNING *"

    shoe = SqlRunner.run(sql).first
    @id = shoe['id'].to_i
  end

def self.all()
    sql = "SELECT * FROM shoes"
    shoes = SqlRunner.run(sql)
    result = shoes.map{|shoe|Shoe.new(shoe)}
    return result
end


end