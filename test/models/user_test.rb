require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "user won't save without name" do
  	user = User.new
  	assert_not user.save, "Saved user without a name!"
  end

  test "cannot delete all users" do
  	err = assert_raises(RuntimeError) { User.destroy_all }
  	assert_match "Dude, you can't just delete the last and only user!", err.message
  end
end
