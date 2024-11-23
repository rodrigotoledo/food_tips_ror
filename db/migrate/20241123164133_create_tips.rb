class CreateTips < ActiveRecord::Migration[8.0]
  def change
    create_table :tips do |t|
      t.string :title
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
