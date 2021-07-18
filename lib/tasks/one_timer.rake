namespace :one_timer do

  task [:add_product_data] do
    CSV.new(open("https://raw.githubusercontent.com/warrantgroup/WCO-HS-Codes/master/data/hscodes.csv"), :headers => :first_row) do |row|
      Product.create(code: row["hscode"], description: row["description"])
      count = 0
      row["description"].split(' ').each{ |category|
        data = ProductType.find_or_initialize_by(name: category)
        code = row["hscode"].to_s[count..(count + 2)]
        count += 2
        data.update(code: code)
      }
    end
  end
end