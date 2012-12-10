actions(:install)

# Default action
def initialize(*args)
  super
  @action = :install
end

attribute(:settings, :kind_of => NumbersD::Settings, :name_attribute => true)
