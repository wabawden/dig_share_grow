class AddHostToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    add_column :users, :host, :boolean
    add_column :users, :postcode, :string
    add_column :users, :description, :text
  end
end
