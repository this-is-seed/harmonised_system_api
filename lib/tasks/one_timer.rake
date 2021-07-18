namespace :one_timer do

  task [:add_product_data] do
    CSV.new(open("https://raw.githubusercontent.com/warrantgroup/WCO-HS-Codes/master/data/hscodes.csv"), :headers => :first_row) do |row|
      Product.create(code: row["hscode"], description: row["description"])
    end
  end
end