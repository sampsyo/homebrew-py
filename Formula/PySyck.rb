require 'formula'

class Pysyck <Formula
  url 'http://pyyaml.org/download/pysyck/PySyck-0.61.2.tar.gz'
  homepage 'http://pyyaml.org/wiki/PySyck'
  md5 'df7ed563a24666cea1b8f292a4f4ceda'

  depends_on 'syck'

  def patches
    # Modify setup.cfg to point to Homebrew base directory.
    DATA
  end

  def install
    system "python", "setup.py", "install"
  end
end

__END__
diff --git a/setup.cfg b/setup.cfg
index 1b2466e..0bb43cf 100644
--- a/setup.cfg
+++ b/setup.cfg
@@ -4,8 +4,8 @@
 [build_ext]
 
 # List of directories to search for 'syck.h' (separated by ':').
-#include_dirs=/usr/local/include:../../include
+include_dirs=/usr/local/include:HOMEBREW_PREFIX/include
 
 # List of directories to search for 'libsyck.a' (separated by ':').
-#library_dirs=/usr/local/lib:../../lib
+library_dirs=/usr/local/lib:HOMEBREW_PREFIX/lib
