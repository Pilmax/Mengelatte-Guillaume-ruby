class CreatePosters < ActiveRecord::Migration[6.1]
  def change
    create_table :posters do |t|
      t.string :title
      t.string :author
      t.string :first_name
      t.string :last_name
      t.string :picture

      t.timestamps
    end
  end
end
