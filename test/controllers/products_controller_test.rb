require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get add_product" do
    get products_add_product_url
    assert_response :success
  end

end
