require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "new user has name upon creation" do
    refute_match "Jim", "#{users[:one].name}"
  end

  test "user won't save without name" do
  	user = User.new
  	assert_not user.save, "Saved user without a name!"
  end


end
