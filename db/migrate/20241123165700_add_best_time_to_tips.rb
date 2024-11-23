class AddBestTimeToTips < ActiveRecord::Migration[8.0]
  def change
    add_column :tips, :best_time, :integer
  end
end
