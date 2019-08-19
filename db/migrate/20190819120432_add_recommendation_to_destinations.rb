class AddRecommendationToDestinations < ActiveRecord::Migration[5.2]
  def change
    add_column :destinations, :recomandation, :string
  end
end
