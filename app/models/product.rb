class Product < ApplicationRecord

  def discounted?
    price < "2"
  end 

  def tax
    price.to_i * 0.09
  end

  def total
    tax + price.to_i
  end

 def as_json
   {
     name: name,
     price: price,
     tax: tax,
     total: total,
     is_discounted: discounted?,
     ingredients: ingredients,
     heat_level: heat_level,
     description: description,
     image_url: image_url
   }

 end

end