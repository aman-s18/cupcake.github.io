require 'test_helper'

class ModelControllerTest < ActionDispatch::IntegrationTest
  test "should get cake" do
    get model_cake_url
    assert_response :success
  end

  test "should get title:string" do
    get model_title:string_url
    assert_response :success
  end

  test "should get text:text" do
    get model_text:text_url
    assert_response :success
  end

end
