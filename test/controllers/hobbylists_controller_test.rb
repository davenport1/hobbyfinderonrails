require "test_helper"

class HobbylistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hobbylist = hobbylists(:one)
  end

  test "should get index" do
    get hobbylists_url
    assert_response :success
  end

  test "should get new" do
    get new_hobbylist_url
    assert_response :success
  end

  test "should create hobbylist" do
    assert_difference('Hobbylist.count') do
      post hobbylists_url, params: { hobbylist: { averagecost: @hobbylist.averagecost, description: @hobbylist.description, hobbyname: @hobbylist.hobbyname, resources: @hobbylist.resources } }
    end

    assert_redirected_to hobbylist_url(Hobbylist.last)
  end

  test "should show hobbylist" do
    get hobbylist_url(@hobbylist)
    assert_response :success
  end

  test "should get edit" do
    get edit_hobbylist_url(@hobbylist)
    assert_response :success
  end

  test "should update hobbylist" do
    patch hobbylist_url(@hobbylist), params: { hobbylist: { averagecost: @hobbylist.averagecost, description: @hobbylist.description, hobbyname: @hobbylist.hobbyname, resources: @hobbylist.resources } }
    assert_redirected_to hobbylist_url(@hobbylist)
  end

  test "should destroy hobbylist" do
    assert_difference('Hobbylist.count', -1) do
      delete hobbylist_url(@hobbylist)
    end

    assert_redirected_to hobbylists_url
  end
end
