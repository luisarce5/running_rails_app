class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :e_mail
      t.text :user_description
      t.string :city
      t.string :profile_photo
      t.string :password_digest

      t.timestamps

    end
  end
end
