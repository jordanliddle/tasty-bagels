class Product < ActiveRecord::Base
	has_attached_file :list_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :list_image, :content_type => /\Aimage\/.*\Z/

	has_many :line_items 
	has_many :orders, through: :line_items
	
	before_destroy :ensure_not_referenced_by_any_line_item
	
	validates :title, :description, presence: true  
	validates :price, numericality: { greater_than_or_equal_to: 0.01 }
	validates :title, uniqueness: true, length: { minimum: 3, too_short: "%{count} characters is too short." }
	validates :list_image, :image_url, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png|\Z)}i,
		message: 'must be a URL for GIF, JPG or PNG image.'
	}
	
	
	def self.latest
		Product.order(:updated_at).last
	end
	
	private
		#ensure that there are no line items referencing this product
		def ensure_not_referenced_by_any_line_item
			if line_items.empty?
				return true
			else
				errors.add(:base, 'Line Items present')
				return false
			end
		end
end
