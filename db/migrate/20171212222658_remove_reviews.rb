class RemoveReviews < ActiveRecord::Migration[5.1]
  def change
    remove_column :destinations, :review
    remove_column :destinations, :author
  end
end
