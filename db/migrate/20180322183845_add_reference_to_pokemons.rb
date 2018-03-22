class AddReferenceToPokemons < ActiveRecord::Migration[5.1]
  def change
    add_reference :pokemons, :trainers, foreign_key: true
  end
end
