require 'csv'

merchant_file = Rails.root.join('lib', 'seeds', 'merchant_seed.csv')

CSV.foreach(merchant_file, headers: true, header_converters: :symbol, converters: :all) do |row|
  data = Hash[row.headers.zip(row.fields)]
  Merchant.create!(data)
end

product_file = Rails.root.join('lib', 'seeds', 'product_seeds.csv')

CSV.foreach(product_file, headers: true, header_converters: :symbol, converters: :all) do |row|
  data = Hash[row.headers.zip(row.fields)]
  Product.create!(data)
end
