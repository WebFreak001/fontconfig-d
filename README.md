# fontconfig-d

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