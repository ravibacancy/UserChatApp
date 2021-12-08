class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :body
      t.integer :conversation_id
      t.integer  :user_id
      t.boolean  :read,            default: false
      t.references :conversation, index: true
      t.references :user, index: true
      t.boolean :read, :default => false
      t.timestamps
    end
  end

  add_index "messages", ["conversation_id"], name: "index_messages_on_conversation_id", using: :btree
  add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree
end

