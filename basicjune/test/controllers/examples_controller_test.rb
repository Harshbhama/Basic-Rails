require 'test_helper'

class ExamplesControllerTest < ActionDispatch::IntegrationTest
  test "should get abc" do
    get examples_abc_url
    assert_response :success
  end

end
