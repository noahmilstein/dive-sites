class CreateDives < ActiveRecord::Migration[5.0]
  def change
    create_table :dives do |t|
      t.string :name, null: false
      t.string :latitude, null: false
      t.string :longitude, null: false
      t.datetime :time, null: false
      t.string :description
      t.belongs_to :user, null: false

      t.timestamps
    end
  end
end
