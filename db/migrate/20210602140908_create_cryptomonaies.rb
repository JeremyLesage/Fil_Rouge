class CreateCryptomonaies < ActiveRecord::Migration[6.1]
  def change
    create_table :cryptomonaies do |t|
      t.string :name
      t.string :crypto_dispo
      t.string :cours_crypto

      t.timestamps
    end
  end
end
