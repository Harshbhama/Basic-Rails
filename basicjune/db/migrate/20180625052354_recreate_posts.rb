class RecreatePosts < ActiveRecord::Migration[5.2]
  def change
create_table :posts do |t|
  	  t.string :content
      t.text :about

      t.timestamps
  end
end
