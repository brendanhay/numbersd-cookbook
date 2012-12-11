action :create do
  res, name = new_resource, "numbersd"

  numbersd_install res.settings

  runit_service name do
    cookbook name
    template_name name

    logger :local

    options({
      :settings => res.settings,
      :flags    => res.flags
    })
  end
end
