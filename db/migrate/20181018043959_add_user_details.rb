class AddUserDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :user_details do |t|
      t.string :zipcode
      t.string :address
      t.string :profession
    end
  end
end
