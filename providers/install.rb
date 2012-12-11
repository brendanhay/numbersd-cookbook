action :install do
  paths = new_resource.paths

  directory paths.home do
    owner paths.user
    mode 0755
  end

  remote_file paths.tmp do
    checksum paths.checksum
    source paths.source
    mode 0644
    not_if { paths.installed? }
  end

  bash "extract numbersd" do
    cwd paths.home
    code <<-CODE
      tar -xzf #{paths.tmp}
      chown -R #{paths.user} #{paths.home}
    CODE
    not_if { paths.installed? }
  end

  link "/usr/local/bin/#{paths.bin}" do
    owner paths.user
    to paths.full_path
  end
end
