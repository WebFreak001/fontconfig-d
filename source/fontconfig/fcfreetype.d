module fontconfig.fcfreetype;

version (Have_derelict_ft)
{

	import derelict.freetype.ft;
	import fontconfig.fontconfig;

	FT_UInt FcFreeTypeCharIndex(FT_Face face, FcChar32 ucs4);

	FcCharSet* FcFreeTypeCharSetAndSpacing(FT_Face face, FcBlanks* blanks, int* spacing);

	FcCharSet* FcFreeTypeCharSet(FT_Face face, FcBlanks* blanks);

	FcResult FcPatternGetFTFace(const(FcPattern)* p, const(char)* object, int n, FT_Face* f);

	FcBool FcPatternAddFTFace(FcPattern* p, const(char)* object, const(FT_Face) f);

	FcPattern* FcFreeTypeQueryFace(const(FT_Face) face, const(FcChar8)* file,
			int id, FcBlanks* blanks);
}
