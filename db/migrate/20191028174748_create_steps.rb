class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.string :name
      t.string :estimated_time
      t.string :estimated_price
      t.datetime :start_time
      t.datetime :end_time
      t.references :project, foreign_key: true
      t.timestamps
    end
  end
end
