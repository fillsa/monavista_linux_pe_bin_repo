import os

# This module should be kept compatible with Python 1.5.2.

__revision__ = "$Id: debug.py,v 1.3 2004/07/18 06:14:42 tim_one Exp $"

# If DISTUTILS_DEBUG is anything other than the empty string, we run in
# debug mode.
DEBUG = os.environ.get('DISTUTILS_DEBUG')
