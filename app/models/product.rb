class Product < ActiveRecord::Base
	validates :title, :image_url, :description, presence: true  
	validates :price, numericality: { greater_than_or_equal_to: 0.01 }
	validates :title, uniqueness: true, length: { minimum: 3, too_short: "%{count} characters is too short." }
	validates :image_url, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png|\Z)}i,
		message: 'must be a URL for GIF, JPG or PNG image.'
	}
	
	
	def self.latest
		Product.order(:updated_at).last
	end
end
