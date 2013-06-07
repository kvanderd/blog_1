class CreateSubject < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :subject
    end
  end
end
