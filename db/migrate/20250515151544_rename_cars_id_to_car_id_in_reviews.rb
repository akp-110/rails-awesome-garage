class RenameCarsIdToCarIdInReviews < ActiveRecord::Migration[7.1]
  def change
    rename_column :reviews, :cars_id, :car_id
  end
end
