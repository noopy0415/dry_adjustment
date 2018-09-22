require 'test_helper'

class ManuControllerTest < ActionDispatch::IntegrationTest
  test "should get manu" do
    get manu_manu_url
    assert_response :success
  end

end
