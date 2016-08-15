class Dropblogtables < ActiveRecord::Migration[5.0]
  def up
    drop_table :articles
    drop_table :blogs
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
