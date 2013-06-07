class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :post_id
      t.integer :subject_id
    end
  end
end
