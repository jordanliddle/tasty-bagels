require 'test_helper'

class UsersFlowTest < ActionDispatch::IntegrationTest
	fixtures :users

	test "login and browse site" do
    	# login via https
    	https!
    	get "/login"
    	assert_response :success
 
		post_via_redirect "/login", name: users(:one).name, password: 'secret'
		assert_not_equal '/login', path
		assert_not_equal 'invalid user/password combination', flash[:alert]

		https!(false)
		get "/orders"
		assert_response :success
		assert assigns(:orders)  
  end
end
