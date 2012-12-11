actions(:create)

# Default action
def initialize(*args)
  super
  @action = :create
end

attribute(:paths, { :kind_of => NumbersD::Paths, :name_attribute => true })
attribute(:flags, { :kind_of => NumbersD::Flags, :required => true })
