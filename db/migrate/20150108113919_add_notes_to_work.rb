class AddNotesToWork < ActiveRecord::Migration
  def change
  	add_column :works, :notes,  :string
  end
end
