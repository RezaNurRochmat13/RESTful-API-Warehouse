require 'test_helper'

class ProductCategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get /v1" do
    get product_category_/v1_url
    assert_response :success
  end

end
