require 'formula'

class Pyyaml <Formula
  url 'http://pyyaml.org/download/pyyaml/PyYAML-3.10.tar.gz'
  homepage 'http://pyyaml.org/wiki/PyYAML'
  md5 '74c94a383886519e9e7b3dd1ee540247'

  depends_on 'libyaml'

  def patches
    # Modify setup.cfg to point to Homebrew base directory.
    DATA
  end

  def install
    system "python", "setup.py", "--with-libyaml", "install"
  end
end

__END__
diff --git a/setup.cfg b/setup.cfg
index 0444d87..3c1b37b 100644
--- a/setup.cfg
+++ b/setup.cfg
@@ -4,10 +4,10 @@
 [build_ext]
 
 # List of directories to search for 'yaml.h' (separated by ':').
-#include_dirs=/usr/local/include:../../include
+include_dirs=/usr/local/include:HOMEBREW_PREFIX/include
 
 # List of directories to search for 'libyaml.a' (separated by ':').
-#library_dirs=/usr/local/lib:../../lib
+library_dirs=/usr/local/lib:HOMEBREW_PREFIX/lib
 
 # An alternative compiler to build the extention.
 #compiler=mingw32
