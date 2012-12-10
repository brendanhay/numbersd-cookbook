action :install do
  settings = new_resource.settings

  directory settings.home do
    owner settings.user
    mode 0755
  end

  remote_file settings.tar_dir do
    checksum settings.checksum
    source settings.source
    mode 0644
    not_if { settings.installed? }
  end

  bash "extract numbersd" do
    cwd settings.home
    code <<-CODE
      tar -xzf #{settings.tar_dir}
      chown -R #{settings.user} #{settings.home}
    CODE
    not_if { settings.installed? }
  end

  link "/usr/local/bin/#{settings.bin}" do
    owner settings.user
    to settings.path
  end
end
