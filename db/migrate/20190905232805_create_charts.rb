class CreateCharts < ActiveRecord::Migration[6.0]
  def change
    create_table :charts do |t|
      t.string :name
      t.belongs_to :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end
