action :create do
  res, name = new_resource, "numbersd"

  numbersd_install res.paths

  runit_service name do
    cookbook name
    template_name name

    logger :local

    options({
      :paths => res.paths,
      :flags => res.flags
    })
  end
end
