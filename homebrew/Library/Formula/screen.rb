require 'formula'

class Screen < Formula
  homepage 'http://www.gnu.org/software/screen/'

  url 'http://git.savannah.gnu.org/cgit/screen.git/snapshot/screen-master.tar.gz'
  sha1 '642588a585fca1def67bd85172addf9cd0a0c745'
  version '4.1.0-20110819git450e8f3'

  head 'git://git.savannah.gnu.org/screen.git', :branch => 'master'

  def patches
    [
      'https://raw.github.com/gist/2393251/24b9b43d9e11557759babeaf098acf8988448666/screen-statusline-showencoding.patch',
      'https://raw.github.com/gist/2393251/04dd8fdc435fdeb70cbda0b9d75a2b01b6287278/expand-input-maxlen.patch',
      'https://raw.github.com/gist/2393251/d1e708560606ac6778dabac6f8d7d06beff6dfde/screen-devel-string-escape.patch',
      'https://raw.github.com/gist/2393251/8180c8eedbd83dcca1e66d7a7b7550916ae835e3/osx-comment-combined-char.patch'
    ]
  end

  def install
    Dir.chdir 'src' do
      system './autogen.sh'
      system './configure', "--prefix=#{prefix}",
                            '--enable-pam',
                            '--enable-colors256',
                            '--enable-rxvt_osc',
                            '--enable-use-locale',
                            '--enable-telnet'
      system 'make install'
    end
  end
end
