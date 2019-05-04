class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    enable_extension "plpgsql"
    enable_extension "uuid-ossp"
    enable_extension "pgcrypto"

    create_table :users, id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
