'''
A test Gimp plugin
that:
dumps Python global namespace,
to check that Gimp enums are defined by GimpFu
'''

from gimpfu import *

import gi
from gi.repository import GLib
from gi.repository import GObject



def plugin_func(image, drawable):
      print(f"globals: {globals()}")



register(
      "python-fu-dumpGlobals",
      "blurb",
      "help message",
      "author",
      "copyright",
      "year",
      "Dump globals...",
      "*",
      [
          (PF_IMAGE, "image", "Input image", None),
          (PF_DRAWABLE, "drawable", "Input drawable", None),
      ],
      [],
      plugin_func,
      menu="<Image>/Test")
main()
