class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.daterange :start_date
      t.daterange :end_date
      t.text :description
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
