class AddReferenceToTrainers < ActiveRecord::Migration[5.1]
  def change
    add_reference :trainers, :pokemons, foreign_key: true
    add_reference :trainers, :trainers, foreign_key: true
  end
end
