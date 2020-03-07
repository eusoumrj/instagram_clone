class AddCreatedByIdColumnToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :created_by, null: false, foreign_key: true
  end
end
