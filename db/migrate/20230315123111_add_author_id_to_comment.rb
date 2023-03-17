class AddAuthorIdToComment < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :author, foreign_key: true
  end
end