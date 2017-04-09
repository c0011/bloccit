class AddBodyToQuestion < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :body, :text
  end
end
