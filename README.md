# fontconfig-d

This repository is a binding to the fontconfig API on the FreeDesktop git
repository: https://gitlab.freedesktop.org/fontconfig/fontconfig/-/tree/master/

This version uses the headers from commit fcb042028126d79ea5a5fa015b2b034b98656e73.

```d
import fontconfig.fontconfig;

if (!FcInit())
	throw new Exception("Can't init font config library");

scope (exit)
	FcFini();

// ...
```

If you use derelict-ft, bindbc-ft, bindbc-freetype or freetype-d from dub you
can also use the `fontconfig.fcfreetype` methods.