actions(:create)

# Default action
def initialize(*args)
  super
  @action = :create
end

attribute(:settings, { :kind_of => NumbersD::Settings, :name_attribute => true })
attribute(:flags,    { :kind_of => NumbersD::Flags, :required => true })
