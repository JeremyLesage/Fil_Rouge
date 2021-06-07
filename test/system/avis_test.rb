require "application_system_test_case"

class AvisTest < ApplicationSystemTestCase
  setup do
    @avi = avis(:one)
  end

  test "visiting the index" do
    visit avis_url
    assert_selector "h1", text: "Avis"
  end

  test "creating a Avi" do
    visit avis_url
    click_on "New Avi"

    fill_in "Email", with: @avi.email
    fill_in "First name", with: @avi.first_name
    fill_in "Message", with: @avi.message
    fill_in "Name", with: @avi.name
    fill_in "Phone number", with: @avi.phone_number
    fill_in "Sujet", with: @avi.sujet
    click_on "Create Avi"

    assert_text "Avi was successfully created"
    click_on "Back"
  end

  test "updating a Avi" do
    visit avis_url
    click_on "Edit", match: :first

    fill_in "Email", with: @avi.email
    fill_in "First name", with: @avi.first_name
    fill_in "Message", with: @avi.message
    fill_in "Name", with: @avi.name
    fill_in "Phone number", with: @avi.phone_number
    fill_in "Sujet", with: @avi.sujet
    click_on "Update Avi"

    assert_text "Avi was successfully updated"
    click_on "Back"
  end

  test "destroying a Avi" do
    visit avis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Avi was successfully destroyed"
  end
end
