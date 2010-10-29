class CreateAnimes < ActiveRecord::Migration
  def self.up
    create_table :animes do |t|
      t.string :nombre
      t.string :genero
      t.text :descripcion
      t.integer :capitulos

      t.timestamps
    end
  end

  def self.down
    drop_table :animes
  end
end
