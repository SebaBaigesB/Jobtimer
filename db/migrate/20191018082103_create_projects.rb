class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.date :begin_at
      t.date :end_at
      t.string :photo
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
