module fontconfig.fcfreetype;

version (Have_derelict_ft)
{
	import derelict.freetype.ft : FT_UInt, FT_Face;
}
else version (Have_bindbc_ft)
{
	import bindbc.freetype.types : FT_UInt, FT_Face;
}
else version (Have_bindbc_freetype)
{
	import bindbc.freetype : FT_UInt, FT_Face;
}
else version (Have_freetype_d)
{
	import ft.types : FT_UInt;
	import ft.freetype : FT_Face;
}

static if (is(FT_Face))
{
	import fontconfig.fontconfig;

	FT_UInt FcFreeTypeCharIndex(FT_Face face, FcChar32 ucs4);

	FcCharSet* FcFreeTypeCharSetAndSpacing(FT_Face face, FcBlanks* blanks, int* spacing);

	FcCharSet* FcFreeTypeCharSet(FT_Face face, FcBlanks* blanks);

	FcResult FcPatternGetFTFace(const(FcPattern)* p, const(char)* object, int n, FT_Face* f);

	FcBool FcPatternAddFTFace(FcPattern* p, const(char)* object, const(FT_Face) f);

	FcPattern* FcFreeTypeQueryFace(const(FT_Face) face, const(FcChar8)* file,
			uint id, FcBlanks* blanks);
}
