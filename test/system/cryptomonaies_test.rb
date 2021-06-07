require "application_system_test_case"

class CryptomonaiesTest < ApplicationSystemTestCase
  setup do
    @cryptomonaie = cryptomonaies(:one)
  end

  test "visiting the index" do
    visit cryptomonaies_url
    assert_selector "h1", text: "Cryptomonaies"
  end

  test "creating a Cryptomonaie" do
    visit cryptomonaies_url
    click_on "New Cryptomonaie"

    fill_in "Cours crypto", with: @cryptomonaie.cours_crypto
    fill_in "Crypto dispo", with: @cryptomonaie.crypto_dispo
    fill_in "Name", with: @cryptomonaie.name
    click_on "Create Cryptomonaie"

    assert_text "Cryptomonaie was successfully created"
    click_on "Back"
  end

  test "updating a Cryptomonaie" do
    visit cryptomonaies_url
    click_on "Edit", match: :first

    fill_in "Cours crypto", with: @cryptomonaie.cours_crypto
    fill_in "Crypto dispo", with: @cryptomonaie.crypto_dispo
    fill_in "Name", with: @cryptomonaie.name
    click_on "Update Cryptomonaie"

    assert_text "Cryptomonaie was successfully updated"
    click_on "Back"
  end

  test "destroying a Cryptomonaie" do
    visit cryptomonaies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cryptomonaie was successfully destroyed"
  end
end
