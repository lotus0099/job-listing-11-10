class AddDetailsInfoToJob < ActiveRecord::Migration[5.0]
  def change
       add_column :jobs, :user_id, :integer
       add_column :jobs, :job_location, :string
  end
end
