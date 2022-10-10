class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :user_id
      t.string :full_name

      t.timestamps
    end
  end
end
