class Brand < ActiveRecord::Base

  scope :not_purchased, -> do
   where({:purchased => false})
  end

  has_many :shoes
  has_many :stores, through: :shoes

  validates :brand_name, {:presence => true}

  before_save :upcase_brand_name



 private

   def upcase_brand_name
     self.brand_name=(brand_name.titleize)
   end

end
