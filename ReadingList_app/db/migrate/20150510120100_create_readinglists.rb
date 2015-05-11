class CreateReadinglists < ActiveRecord::Migration
  def change
    create_table :readinglists do |t|
      t.string :booktitle
      t.string :author
      t.integer :year
      t.date :published
      t.boolean :read

      t.timestamps
    end
  end
end
