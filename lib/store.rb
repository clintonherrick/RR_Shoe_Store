class Store < ActiveRecord::Base

  has_many :shoes
  has_many :brands, through: :shoes

  validates :store_name, {:presence => true}

  before_save :upcase_store_name



 private

   def upcase_store_name
     self.store_name=(store_name.titleize)
   end

end
