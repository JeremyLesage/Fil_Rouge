require "test_helper"

class CryptomonaiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cryptomonaie = cryptomonaies(:one)
  end

  test "should get index" do
    get cryptomonaies_url
    assert_response :success
  end

  test "should get new" do
    get new_cryptomonaie_url
    assert_response :success
  end

  test "should create cryptomonaie" do
    assert_difference('Cryptomonaie.count') do
      post cryptomonaies_url, params: { cryptomonaie: { cours_crypto: @cryptomonaie.cours_crypto, crypto_dispo: @cryptomonaie.crypto_dispo, name: @cryptomonaie.name } }
    end

    assert_redirected_to cryptomonaie_url(Cryptomonaie.last)
  end

  test "should show cryptomonaie" do
    get cryptomonaie_url(@cryptomonaie)
    assert_response :success
  end

  test "should get edit" do
    get edit_cryptomonaie_url(@cryptomonaie)
    assert_response :success
  end

  test "should update cryptomonaie" do
    patch cryptomonaie_url(@cryptomonaie), params: { cryptomonaie: { cours_crypto: @cryptomonaie.cours_crypto, crypto_dispo: @cryptomonaie.crypto_dispo, name: @cryptomonaie.name } }
    assert_redirected_to cryptomonaie_url(@cryptomonaie)
  end

  test "should destroy cryptomonaie" do
    assert_difference('Cryptomonaie.count', -1) do
      delete cryptomonaie_url(@cryptomonaie)
    end

    assert_redirected_to cryptomonaies_url
  end
end
