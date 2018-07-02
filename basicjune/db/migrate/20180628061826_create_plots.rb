class CreatePlots < ActiveRecord::Migration[5.2]
  def change
    create_table :plots do |t|
      t.text :content

      t.timestamps
    end
  end
end
