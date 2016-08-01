name "fluentd"
# fluentd v0.12.26
default_version 'dc4e6d7dbd28f2c00123a395519114a81f280d31'

dependency "ruby"
#dependency "bundler"

version 'dc4e6d7dbd28f2c00123a395519114a81f280d31' do
  source :git => 'https://github.com/fluent/fluentd.git'
  relative_path "fluentd"

  build do
    Dir.glob(File.expand_path(File.join(Omnibus::Config.project_root, 'core_gems', '*.gem'))).sort.each { |gem_path|
      gem "install --no-ri --no-rdoc #{gem_path}"
    }
    rake "build"
    gem "install --no-ri --no-rdoc pkg/fluentd-*.gem"
  end
end

version '0f169b6dc2030ce6d18ccc3e267aa7610b81d762' do
  source :git => 'https://github.com/fluent/fluentd.git'
  relative_path "fluentd"

  build do
    Dir.glob(File.expand_path(File.join(Omnibus::Config.project_root, 'core_gems', '*.gem'))).sort.each { |gem_path|
      gem "install --no-ri --no-rdoc #{gem_path}"
    }
    rake "build"
    gem "install --no-ri --no-rdoc pkg/fluentd-*.gem"
  end
end
