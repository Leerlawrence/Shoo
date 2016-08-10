require('pg')

class SqlRunner

  def self.run(sql)
    puts "sql #{sql}"
    begin
      db = PG.connect({ dbname:'shoo_shop', host: 'localhost' })
      result = db.exec(sql)
    ensure
      db.close()
    end
    return result
  end



end