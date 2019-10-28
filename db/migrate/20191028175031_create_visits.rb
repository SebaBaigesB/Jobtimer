class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.string :name
      t.integer :estimated_visit
      t.datetime :duration
      t.references :project, foreign_key: true
      t.timestamps
    end
  end
end
