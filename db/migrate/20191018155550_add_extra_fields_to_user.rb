class AddExtraFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :city, :string
    add_column :users, :country_select, :string
    add_column :users, :job, :string
    add_column :users, :job_title, :string
    add_column :users, :avatar, :string
    add_column :users, :hourly_wage, :string
    add_column :users, :banner_image, :string
  end
end
