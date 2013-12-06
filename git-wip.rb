require 'formula'

class GitWip < Formula
  # Use coldnew's fork of git-wip since original author no respone on pull-request
  homepage 'https://github.com/coldnew/git-wip'

  # Use the tag instead of the tarball to get submodules
  url 'https://github.com/coldnew/git-wip.git', :tag => '1.0.0'

  head do
    url 'https://github.com/coldnew/git-wip.git', :branch => 'master'
  end

  def install
    system "make", "prefix=#{libexec}", "install"
    bin.write_exec_script libexec/'bin/git-wip'
  end
end
