class CatSerializer < ActiveModel::Serializer
    attributes :id, :name, :owner 
  def owner
    {owner_id: self.object.individual.id, 
     owner_name: self.object.individual.name}
  end 
end
