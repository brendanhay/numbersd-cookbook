actions(:install)

# Default action
def initialize(*args)
  super
  @action = :install
end

attribute(:paths, :kind_of => NumbersD::Paths, :name_attribute => true)
