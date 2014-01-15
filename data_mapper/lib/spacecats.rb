class Spacecat
  include DataMapper::Resource 
  property :id,           Serial
  property :name,         String, :required => true
  property :homeplanet,  Text
  property :tagline,      Text
  property :superpower,    String
  property :created_at,   DateTime
  property :updated_at,   DateTime
end