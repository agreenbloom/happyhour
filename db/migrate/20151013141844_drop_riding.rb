class DropRiding < ActiveRecord::Migration
  def change
    drop_table :ridings
  end
end
