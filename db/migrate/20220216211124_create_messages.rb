class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.references :user, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: {to_table: :users}
      t.string :message

      t.timestamps
    end
  end
end
