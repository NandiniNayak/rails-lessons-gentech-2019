class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :postcode
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
