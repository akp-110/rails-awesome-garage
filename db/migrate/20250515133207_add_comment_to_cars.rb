class AddCommentToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :comment, :text
  end
end
