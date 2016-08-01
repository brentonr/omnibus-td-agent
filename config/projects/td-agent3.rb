require 'erb'
require 'fileutils'
require 'rubygems'

name "td-agent"
maintainer "Treasure Data, Inc"
homepage "http://treasuredata.com"
description "Treasure Agent: A data collector for Treasure Data"

install_dir     "/opt/td-agent"
build_version   "3.0.0"
build_iteration 0

# creates required build directories
dependency "preparation"

override :ruby, :version => '2.3.0'
override :zlib, :version => '1.2.8'
override :rubygems, :version => '2.4.8'
override :postgresql, :version => '9.3.5'
override :fluentd, :version => '0f169b6dc2030ce6d18ccc3e267aa7610b81d762'
override :jemalloc, :version => '4.2.1'

# td-agent dependencies/components
dependency "td-agent"
dependency "td-agent-files"
dependency "td"
dependency "td-agent-ui"
dependency "td-agent-cleanup"

# version manifest file
dependency "version-manifest"

case ohai["os"]
when "linux"
  case ohai["platform_family"]
  when "debian"
    runtime_dependency "lsb-base"
  when "rhel"
    runtime_dependency "initscripts"
    if ohai["platform_version"][0] == "5"
      runtime_dependency "redhat-lsb"
    else
      runtime_dependency "redhat-lsb-core"
    end
  end
end

exclude "\.git*"
exclude "bundler\/git"

compress :dmg do
end
