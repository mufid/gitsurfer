class CreateRepo < ActiveRecord::Migration
  def change
    create_table :repo do |t|
      t.string :title
      t.string :path
    end
  end
end
