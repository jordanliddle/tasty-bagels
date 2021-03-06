require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
		@update = {
			title: 				'Foo Bar',
			description: 	'Lorem ipsum canoli pi dofuhi cloqureyt.',
			image_url:    'lorem.jpg',
			price:        19.25  
		}
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products), "Doesn't assign"
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: @update
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { title: "New Name" }
    # assert_equal updated_title, @product.title
    # assert_equal flash[:notice], "Product was successfully updated."
    assert_response :success
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end

end
