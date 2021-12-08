class AddBodyToMessages < ActiveRecord::Migration[6.1]
  def change
    add_column :messages, :body, :string
    add_column :messages, :text, :string
  end
end
