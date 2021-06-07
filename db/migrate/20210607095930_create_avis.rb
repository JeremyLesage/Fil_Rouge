class CreateAvis < ActiveRecord::Migration[6.1]
  def change
    create_table :avis do |t|
      t.string :name
      t.string :first_name
      t.string :phone_number
      t.string :email
      t.string :sujet
      t.string :message

      t.timestamps
    end
  end
end
