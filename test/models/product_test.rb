require 'test_helper'

class ProductTest < ActiveSupport::TestCase
	fixtures :products
	
  test "product attribtues must not be empty" do
		product = Product.new
		error_message = "Product attribute shouldn't be empty"
		assert product.invalid?
		assert product.errors[:title].any?, "#{error_message}"
		assert product.errors[:description].any?, "#{error_message}"
		assert product.errors[:price].any?, "#{error_message}"
		assert product.errors[:image_url].any?, "#{error_message}"
	end
	
	test "product price must be positive" do
		product = Product.new(title:"Foo Bar", description: "Lorem ipsum ge.", image_url:"zzz.jpg")
		product.price = -1
		assert product.invalid?
		assert_equal ["must be greater than or equal to 0.01"],
			product.errors[:price]
			
		product.price = 0
		assert product.invalid?
		assert_equal ["must be greater than or equal to 0.01"],
			product.errors[:price]
			
		product.price = 1
		assert product.valid?
	end
	
	def new_product(image_url)
		Product.new(title:"Foo Bar", description: "Lorem ipsum ge.", price: 1, image_url: image_url)
	end
	
	test "image url" do
		ok = %w{ foo.gif foo.jpg foo.png FOO.JPG FOO.Jpg http://a.b.c/x/y/z/foo.gif }
		bad = %w{ foo.doc foo.gif/more foo.gif.more }
		
		ok.each do |name|
			assert new_product(name).valid?, "#{name} should be valid."
		end
		
		bad.each do |name|
			assert new_product(name).invalid?, "#{name} shouldn't be valid."
		end
	end
	
	test "product is not valid without a unique title" do
		product = Product.new(title: products(:valid_sandwich).title, description: "Lorem ipsum ge.", price: 1, image_url: "foo.gif")
		assert product.invalid?
		assert_equal ["has already been taken"], product.errors[:title]
	end
end
