#!/bin/bash
set -e

. /vagrant/scripts/repositories.sh

export REPOSITORY_DESCRIPTION="Sihnon common packages"

BUILD_ARGS=(
    "app-admin/librarian-puppet"
    "app-admin/puppet-agent"
    "app-admin/puppet-lint"
    "app-vim/puppet-syntax"
    "dev-ruby/hiera-eyaml-gpg"
    "dev-ruby/puppet-syntax"
    "dev-ruby/puppet_forge"
    "dev-util/jenkins-bin"
    "net-analyzer/nagios-plugins"
    "net-misc/openssh"
    "--remove app-admin/puppet"
    "--remove app-emulation/virt-what"
    "--remove dev-ruby/facter"
    "--remove dev-ruby/hiera"
)

build_all "${BUILD_ARGS[@]}"
