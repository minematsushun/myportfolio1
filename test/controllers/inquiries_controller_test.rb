require 'test_helper'

class InquiriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get inquiries_index_url
    assert_response :success
  end

  test "should get create" do
    get inquiries_create_url
    assert_response :success
  end

end
