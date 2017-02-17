require 'test_helper'

class DojoControllerTest < ActionDispatch::IntegrationTest
  test "should get result" do
    get dojo_result_url
    assert_response :success
  end

end
