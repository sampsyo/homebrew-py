require 'formula'

class GstPython <Formula
  url 'http://gstreamer.freedesktop.org/src/gst-python/gst-python-0.10.22.tar.gz'
  homepage 'http://gstreamer.freedesktop.org/modules/gst-python.html'
  md5 '83cfa59d596bb876b6b576027f2d2b0e'

  depends_on 'gst-plugins-base'
  depends_on 'pygtk'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-dependency-tracking"
    system "make install"
  end
end
