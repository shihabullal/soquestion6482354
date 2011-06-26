class User < ActiveRecord::Base
  has_many :likes
  
  def has_like? product
    likes.find_by_product_id product.id
  end
end
