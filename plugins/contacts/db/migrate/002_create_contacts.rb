class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|

      t.string :string

      t.string :email

      t.string :phone

      t.string :phone_add

      t.string :skype

      t.string :web

      t.string :address

      t.string :city

      t.string :region

      t.string :city

      t.string :country

      t.integer :active

      t.integer :user_id

      t.integer :project_id


    end

  end
end
