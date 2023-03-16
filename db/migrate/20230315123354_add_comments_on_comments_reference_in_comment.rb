class AddCommentsOnCommentsReferenceInComment < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :comments, foreign_key: true
  end
end
