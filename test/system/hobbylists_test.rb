require "application_system_test_case"

class HobbylistsTest < ApplicationSystemTestCase
  setup do
    @hobbylist = hobbylists(:one)
  end

  test "visiting the index" do
    visit hobbylists_url
    assert_selector "h1", text: "Hobbylists"
  end

  test "creating a Hobbylist" do
    visit hobbylists_url
    click_on "New Hobbylist"

    fill_in "Averagecost", with: @hobbylist.averagecost
    fill_in "Description", with: @hobbylist.description
    fill_in "Hobbyname", with: @hobbylist.hobbyname
    fill_in "Resources", with: @hobbylist.resources
    click_on "Create Hobbylist"

    assert_text "Hobbylist was successfully created"
    click_on "Back"
  end

  test "updating a Hobbylist" do
    visit hobbylists_url
    click_on "Edit", match: :first

    fill_in "Averagecost", with: @hobbylist.averagecost
    fill_in "Description", with: @hobbylist.description
    fill_in "Hobbyname", with: @hobbylist.hobbyname
    fill_in "Resources", with: @hobbylist.resources
    click_on "Update Hobbylist"

    assert_text "Hobbylist was successfully updated"
    click_on "Back"
  end

  test "destroying a Hobbylist" do
    visit hobbylists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hobbylist was successfully destroyed"
  end
end
