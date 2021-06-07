require "test_helper"

class AvisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @avi = avis(:one)
  end

  test "should get index" do
    get avis_url
    assert_response :success
  end

  test "should get new" do
    get new_avi_url
    assert_response :success
  end

  test "should create avi" do
    assert_difference('Avi.count') do
      post avis_url, params: { avi: { email: @avi.email, first_name: @avi.first_name, message: @avi.message, name: @avi.name, phone_number: @avi.phone_number, sujet: @avi.sujet } }
    end

    assert_redirected_to avi_url(Avi.last)
  end

  test "should show avi" do
    get avi_url(@avi)
    assert_response :success
  end

  test "should get edit" do
    get edit_avi_url(@avi)
    assert_response :success
  end

  test "should update avi" do
    patch avi_url(@avi), params: { avi: { email: @avi.email, first_name: @avi.first_name, message: @avi.message, name: @avi.name, phone_number: @avi.phone_number, sujet: @avi.sujet } }
    assert_redirected_to avi_url(@avi)
  end

  test "should destroy avi" do
    assert_difference('Avi.count', -1) do
      delete avi_url(@avi)
    end

    assert_redirected_to avis_url
  end
end
