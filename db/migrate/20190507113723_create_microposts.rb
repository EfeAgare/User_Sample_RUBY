class CreateMicroposts < ActiveRecord::Migration[5.2]
  def change
    create_table :microposts, id: :uuid do |t|
      t.text :content
      t.references :user, foreign_key: true, type: :uuid

      t.timestamps
    end
    add_index :microposts, [:user_id, :created_at]
  end
end
