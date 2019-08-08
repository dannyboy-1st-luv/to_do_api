class IndividualSerializer < ActiveModel::Serializer
  attributes :id, :cats
  def cats 
    self.object.cats.map do |cat|
      {name: cat.name, 
       age: cat.age,
       favoriteFood: cat.favorite_food}
    end 
  end 
end
