.class Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;
.super Lorg/apache/xmlbeans/impl/regex/RegexParser;
.source "SourceFile"


# static fields
.field private static final DIGITS:Ljava/lang/String; = "09\u0660\u0669\u06f0\u06f9\u0966\u096f\u09e6\u09ef\u0a66\u0a6f\u0ae6\u0aef\u0b66\u0b6f\u0be7\u0bef\u0c66\u0c6f\u0ce6\u0cef\u0d66\u0d6f\u0e50\u0e59\u0ed0\u0ed9\u0f20\u0f29"

.field private static final LETTERS:Ljava/lang/String; = "AZaz\u00c0\u00d6\u00d8\u00f6\u00f8\u0131\u0134\u013e\u0141\u0148\u014a\u017e\u0180\u01c3\u01cd\u01f0\u01f4\u01f5\u01fa\u0217\u0250\u02a8\u02bb\u02c1\u0386\u0386\u0388\u038a\u038c\u038c\u038e\u03a1\u03a3\u03ce\u03d0\u03d6\u03da\u03da\u03dc\u03dc\u03de\u03de\u03e0\u03e0\u03e2\u03f3\u0401\u040c\u040e\u044f\u0451\u045c\u045e\u0481\u0490\u04c4\u04c7\u04c8\u04cb\u04cc\u04d0\u04eb\u04ee\u04f5\u04f8\u04f9\u0531\u0556\u0559\u0559\u0561\u0586\u05d0\u05ea\u05f0\u05f2\u0621\u063a\u0641\u064a\u0671\u06b7\u06ba\u06be\u06c0\u06ce\u06d0\u06d3\u06d5\u06d5\u06e5\u06e6\u0905\u0939\u093d\u093d\u0958\u0961\u0985\u098c\u098f\u0990\u0993\u09a8\u09aa\u09b0\u09b2\u09b2\u09b6\u09b9\u09dc\u09dd\u09df\u09e1\u09f0\u09f1\u0a05\u0a0a\u0a0f\u0a10\u0a13\u0a28\u0a2a\u0a30\u0a32\u0a33\u0a35\u0a36\u0a38\u0a39\u0a59\u0a5c\u0a5e\u0a5e\u0a72\u0a74\u0a85\u0a8b\u0a8d\u0a8d\u0a8f\u0a91\u0a93\u0aa8\u0aaa\u0ab0\u0ab2\u0ab3\u0ab5\u0ab9\u0abd\u0abd\u0ae0\u0ae0\u0b05\u0b0c\u0b0f\u0b10\u0b13\u0b28\u0b2a\u0b30\u0b32\u0b33\u0b36\u0b39\u0b3d\u0b3d\u0b5c\u0b5d\u0b5f\u0b61\u0b85\u0b8a\u0b8e\u0b90\u0b92\u0b95\u0b99\u0b9a\u0b9c\u0b9c\u0b9e\u0b9f\u0ba3\u0ba4\u0ba8\u0baa\u0bae\u0bb5\u0bb7\u0bb9\u0c05\u0c0c\u0c0e\u0c10\u0c12\u0c28\u0c2a\u0c33\u0c35\u0c39\u0c60\u0c61\u0c85\u0c8c\u0c8e\u0c90\u0c92\u0ca8\u0caa\u0cb3\u0cb5\u0cb9\u0cde\u0cde\u0ce0\u0ce1\u0d05\u0d0c\u0d0e\u0d10\u0d12\u0d28\u0d2a\u0d39\u0d60\u0d61\u0e01\u0e2e\u0e30\u0e30\u0e32\u0e33\u0e40\u0e45\u0e81\u0e82\u0e84\u0e84\u0e87\u0e88\u0e8a\u0e8a\u0e8d\u0e8d\u0e94\u0e97\u0e99\u0e9f\u0ea1\u0ea3\u0ea5\u0ea5\u0ea7\u0ea7\u0eaa\u0eab\u0ead\u0eae\u0eb0\u0eb0\u0eb2\u0eb3\u0ebd\u0ebd\u0ec0\u0ec4\u0f40\u0f47\u0f49\u0f69\u10a0\u10c5\u10d0\u10f6\u1100\u1100\u1102\u1103\u1105\u1107\u1109\u1109\u110b\u110c\u110e\u1112\u113c\u113c\u113e\u113e\u1140\u1140\u114c\u114c\u114e\u114e\u1150\u1150\u1154\u1155\u1159\u1159\u115f\u1161\u1163\u1163\u1165\u1165\u1167\u1167\u1169\u1169\u116d\u116e\u1172\u1173\u1175\u1175\u119e\u119e\u11a8\u11a8\u11ab\u11ab\u11ae\u11af\u11b7\u11b8\u11ba\u11ba\u11bc\u11c2\u11eb\u11eb\u11f0\u11f0\u11f9\u11f9\u1e00\u1e9b\u1ea0\u1ef9\u1f00\u1f15\u1f18\u1f1d\u1f20\u1f45\u1f48\u1f4d\u1f50\u1f57\u1f59\u1f59\u1f5b\u1f5b\u1f5d\u1f5d\u1f5f\u1f7d\u1f80\u1fb4\u1fb6\u1fbc\u1fbe\u1fbe\u1fc2\u1fc4\u1fc6\u1fcc\u1fd0\u1fd3\u1fd6\u1fdb\u1fe0\u1fec\u1ff2\u1ff4\u1ff6\u1ffc\u2126\u2126\u212a\u212b\u212e\u212e\u2180\u2182\u3007\u3007\u3021\u3029\u3041\u3094\u30a1\u30fa\u3105\u312c\u4e00\u9fa5\uac00\ud7a3"

.field private static final NAMECHARS:Ljava/lang/String; = "-.0:AZ__az\u00b7\u00b7\u00c0\u00d6\u00d8\u00f6\u00f8\u0131\u0134\u013e\u0141\u0148\u014a\u017e\u0180\u01c3\u01cd\u01f0\u01f4\u01f5\u01fa\u0217\u0250\u02a8\u02bb\u02c1\u02d0\u02d1\u0300\u0345\u0360\u0361\u0386\u038a\u038c\u038c\u038e\u03a1\u03a3\u03ce\u03d0\u03d6\u03da\u03da\u03dc\u03dc\u03de\u03de\u03e0\u03e0\u03e2\u03f3\u0401\u040c\u040e\u044f\u0451\u045c\u045e\u0481\u0483\u0486\u0490\u04c4\u04c7\u04c8\u04cb\u04cc\u04d0\u04eb\u04ee\u04f5\u04f8\u04f9\u0531\u0556\u0559\u0559\u0561\u0586\u0591\u05a1\u05a3\u05b9\u05bb\u05bd\u05bf\u05bf\u05c1\u05c2\u05c4\u05c4\u05d0\u05ea\u05f0\u05f2\u0621\u063a\u0640\u0652\u0660\u0669\u0670\u06b7\u06ba\u06be\u06c0\u06ce\u06d0\u06d3\u06d5\u06e8\u06ea\u06ed\u06f0\u06f9\u0901\u0903\u0905\u0939\u093c\u094d\u0951\u0954\u0958\u0963\u0966\u096f\u0981\u0983\u0985\u098c\u098f\u0990\u0993\u09a8\u09aa\u09b0\u09b2\u09b2\u09b6\u09b9\u09bc\u09bc\u09be\u09c4\u09c7\u09c8\u09cb\u09cd\u09d7\u09d7\u09dc\u09dd\u09df\u09e3\u09e6\u09f1\u0a02\u0a02\u0a05\u0a0a\u0a0f\u0a10\u0a13\u0a28\u0a2a\u0a30\u0a32\u0a33\u0a35\u0a36\u0a38\u0a39\u0a3c\u0a3c\u0a3e\u0a42\u0a47\u0a48\u0a4b\u0a4d\u0a59\u0a5c\u0a5e\u0a5e\u0a66\u0a74\u0a81\u0a83\u0a85\u0a8b\u0a8d\u0a8d\u0a8f\u0a91\u0a93\u0aa8\u0aaa\u0ab0\u0ab2\u0ab3\u0ab5\u0ab9\u0abc\u0ac5\u0ac7\u0ac9\u0acb\u0acd\u0ae0\u0ae0\u0ae6\u0aef\u0b01\u0b03\u0b05\u0b0c\u0b0f\u0b10\u0b13\u0b28\u0b2a\u0b30\u0b32\u0b33\u0b36\u0b39\u0b3c\u0b43\u0b47\u0b48\u0b4b\u0b4d\u0b56\u0b57\u0b5c\u0b5d\u0b5f\u0b61\u0b66\u0b6f\u0b82\u0b83\u0b85\u0b8a\u0b8e\u0b90\u0b92\u0b95\u0b99\u0b9a\u0b9c\u0b9c\u0b9e\u0b9f\u0ba3\u0ba4\u0ba8\u0baa\u0bae\u0bb5\u0bb7\u0bb9\u0bbe\u0bc2\u0bc6\u0bc8\u0bca\u0bcd\u0bd7\u0bd7\u0be7\u0bef\u0c01\u0c03\u0c05\u0c0c\u0c0e\u0c10\u0c12\u0c28\u0c2a\u0c33\u0c35\u0c39\u0c3e\u0c44\u0c46\u0c48\u0c4a\u0c4d\u0c55\u0c56\u0c60\u0c61\u0c66\u0c6f\u0c82\u0c83\u0c85\u0c8c\u0c8e\u0c90\u0c92\u0ca8\u0caa\u0cb3\u0cb5\u0cb9\u0cbe\u0cc4\u0cc6\u0cc8\u0cca\u0ccd\u0cd5\u0cd6\u0cde\u0cde\u0ce0\u0ce1\u0ce6\u0cef\u0d02\u0d03\u0d05\u0d0c\u0d0e\u0d10\u0d12\u0d28\u0d2a\u0d39\u0d3e\u0d43\u0d46\u0d48\u0d4a\u0d4d\u0d57\u0d57\u0d60\u0d61\u0d66\u0d6f\u0e01\u0e2e\u0e30\u0e3a\u0e40\u0e4e\u0e50\u0e59\u0e81\u0e82\u0e84\u0e84\u0e87\u0e88\u0e8a\u0e8a\u0e8d\u0e8d\u0e94\u0e97\u0e99\u0e9f\u0ea1\u0ea3\u0ea5\u0ea5\u0ea7\u0ea7\u0eaa\u0eab\u0ead\u0eae\u0eb0\u0eb9\u0ebb\u0ebd\u0ec0\u0ec4\u0ec6\u0ec6\u0ec8\u0ecd\u0ed0\u0ed9\u0f18\u0f19\u0f20\u0f29\u0f35\u0f35\u0f37\u0f37\u0f39\u0f39\u0f3e\u0f47\u0f49\u0f69\u0f71\u0f84\u0f86\u0f8b\u0f90\u0f95\u0f97\u0f97\u0f99\u0fad\u0fb1\u0fb7\u0fb9\u0fb9\u10a0\u10c5\u10d0\u10f6\u1100\u1100\u1102\u1103\u1105\u1107\u1109\u1109\u110b\u110c\u110e\u1112\u113c\u113c\u113e\u113e\u1140\u1140\u114c\u114c\u114e\u114e\u1150\u1150\u1154\u1155\u1159\u1159\u115f\u1161\u1163\u1163\u1165\u1165\u1167\u1167\u1169\u1169\u116d\u116e\u1172\u1173\u1175\u1175\u119e\u119e\u11a8\u11a8\u11ab\u11ab\u11ae\u11af\u11b7\u11b8\u11ba\u11ba\u11bc\u11c2\u11eb\u11eb\u11f0\u11f0\u11f9\u11f9\u1e00\u1e9b\u1ea0\u1ef9\u1f00\u1f15\u1f18\u1f1d\u1f20\u1f45\u1f48\u1f4d\u1f50\u1f57\u1f59\u1f59\u1f5b\u1f5b\u1f5d\u1f5d\u1f5f\u1f7d\u1f80\u1fb4\u1fb6\u1fbc\u1fbe\u1fbe\u1fc2\u1fc4\u1fc6\u1fcc\u1fd0\u1fd3\u1fd6\u1fdb\u1fe0\u1fec\u1ff2\u1ff4\u1ff6\u1ffc\u20d0\u20dc\u20e1\u20e1\u2126\u2126\u212a\u212b\u212e\u212e\u2180\u2182\u3005\u3005\u3007\u3007\u3021\u302f\u3031\u3035\u3041\u3094\u3099\u309a\u309d\u309e\u30a1\u30fa\u30fc\u30fe\u3105\u312c\u4e00\u9fa5\uac00\ud7a3"

.field private static final SPACES:Ljava/lang/String; = "\t\n\r\r  "

.field private static ranges:Ljava/util/Hashtable;

.field private static ranges2:Ljava/util/Hashtable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;-><init>()V

    return-void
.end method

.method public static declared-synchronized getRange(Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;
    .locals 4

    const-class v0, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->ranges:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->ranges:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->ranges2:Ljava/util/Hashtable;

    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v1

    const-string v2, "\t\n\r\r  "

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->setupRange(Lorg/apache/xmlbeans/impl/regex/Token;Ljava/lang/String;)V

    sget-object v2, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->ranges:Ljava/util/Hashtable;

    const-string v3, "xml:isSpace"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->ranges2:Ljava/util/Hashtable;

    const-string v3, "xml:isSpace"

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/Token;->complementRanges(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v1

    const-string v2, "09\u0660\u0669\u06f0\u06f9\u0966\u096f\u09e6\u09ef\u0a66\u0a6f\u0ae6\u0aef\u0b66\u0b6f\u0be7\u0bef\u0c66\u0c6f\u0ce6\u0cef\u0d66\u0d6f\u0e50\u0e59\u0ed0\u0ed9\u0f20\u0f29"

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->setupRange(Lorg/apache/xmlbeans/impl/regex/Token;Ljava/lang/String;)V

    sget-object v2, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->ranges:Ljava/util/Hashtable;

    const-string v3, "xml:isDigit"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->ranges2:Ljava/util/Hashtable;

    const-string v3, "xml:isDigit"

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/Token;->complementRanges(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v1

    const-string v2, "09\u0660\u0669\u06f0\u06f9\u0966\u096f\u09e6\u09ef\u0a66\u0a6f\u0ae6\u0aef\u0b66\u0b6f\u0be7\u0bef\u0c66\u0c6f\u0ce6\u0cef\u0d66\u0d6f\u0e50\u0e59\u0ed0\u0ed9\u0f20\u0f29"

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->setupRange(Lorg/apache/xmlbeans/impl/regex/Token;Ljava/lang/String;)V

    sget-object v2, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->ranges:Ljava/util/Hashtable;

    const-string v3, "xml:isDigit"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->ranges2:Ljava/util/Hashtable;

    const-string v3, "xml:isDigit"

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/Token;->complementRanges(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v1

    const-string v2, "AZaz\u00c0\u00d6\u00d8\u00f6\u00f8\u0131\u0134\u013e\u0141\u0148\u014a\u017e\u0180\u01c3\u01cd\u01f0\u01f4\u01f5\u01fa\u0217\u0250\u02a8\u02bb\u02c1\u0386\u0386\u0388\u038a\u038c\u038c\u038e\u03a1\u03a3\u03ce\u03d0\u03d6\u03da\u03da\u03dc\u03dc\u03de\u03de\u03e0\u03e0\u03e2\u03f3\u0401\u040c\u040e\u044f\u0451\u045c\u045e\u0481\u0490\u04c4\u04c7\u04c8\u04cb\u04cc\u04d0\u04eb\u04ee\u04f5\u04f8\u04f9\u0531\u0556\u0559\u0559\u0561\u0586\u05d0\u05ea\u05f0\u05f2\u0621\u063a\u0641\u064a\u0671\u06b7\u06ba\u06be\u06c0\u06ce\u06d0\u06d3\u06d5\u06d5\u06e5\u06e6\u0905\u0939\u093d\u093d\u0958\u0961\u0985\u098c\u098f\u0990\u0993\u09a8\u09aa\u09b0\u09b2\u09b2\u09b6\u09b9\u09dc\u09dd\u09df\u09e1\u09f0\u09f1\u0a05\u0a0a\u0a0f\u0a10\u0a13\u0a28\u0a2a\u0a30\u0a32\u0a33\u0a35\u0a36\u0a38\u0a39\u0a59\u0a5c\u0a5e\u0a5e\u0a72\u0a74\u0a85\u0a8b\u0a8d\u0a8d\u0a8f\u0a91\u0a93\u0aa8\u0aaa\u0ab0\u0ab2\u0ab3\u0ab5\u0ab9\u0abd\u0abd\u0ae0\u0ae0\u0b05\u0b0c\u0b0f\u0b10\u0b13\u0b28\u0b2a\u0b30\u0b32\u0b33\u0b36\u0b39\u0b3d\u0b3d\u0b5c\u0b5d\u0b5f\u0b61\u0b85\u0b8a\u0b8e\u0b90\u0b92\u0b95\u0b99\u0b9a\u0b9c\u0b9c\u0b9e\u0b9f\u0ba3\u0ba4\u0ba8\u0baa\u0bae\u0bb5\u0bb7\u0bb9\u0c05\u0c0c\u0c0e\u0c10\u0c12\u0c28\u0c2a\u0c33\u0c35\u0c39\u0c60\u0c61\u0c85\u0c8c\u0c8e\u0c90\u0c92\u0ca8\u0caa\u0cb3\u0cb5\u0cb9\u0cde\u0cde\u0ce0\u0ce1\u0d05\u0d0c\u0d0e\u0d10\u0d12\u0d28\u0d2a\u0d39\u0d60\u0d61\u0e01\u0e2e\u0e30\u0e30\u0e32\u0e33\u0e40\u0e45\u0e81\u0e82\u0e84\u0e84\u0e87\u0e88\u0e8a\u0e8a\u0e8d\u0e8d\u0e94\u0e97\u0e99\u0e9f\u0ea1\u0ea3\u0ea5\u0ea5\u0ea7\u0ea7\u0eaa\u0eab\u0ead\u0eae\u0eb0\u0eb0\u0eb2\u0eb3\u0ebd\u0ebd\u0ec0\u0ec4\u0f40\u0f47\u0f49\u0f69\u10a0\u10c5\u10d0\u10f6\u1100\u1100\u1102\u1103\u1105\u1107\u1109\u1109\u110b\u110c\u110e\u1112\u113c\u113c\u113e\u113e\u1140\u1140\u114c\u114c\u114e\u114e\u1150\u1150\u1154\u1155\u1159\u1159\u115f\u1161\u1163\u1163\u1165\u1165\u1167\u1167\u1169\u1169\u116d\u116e\u1172\u1173\u1175\u1175\u119e\u119e\u11a8\u11a8\u11ab\u11ab\u11ae\u11af\u11b7\u11b8\u11ba\u11ba\u11bc\u11c2\u11eb\u11eb\u11f0\u11f0\u11f9\u11f9\u1e00\u1e9b\u1ea0\u1ef9\u1f00\u1f15\u1f18\u1f1d\u1f20\u1f45\u1f48\u1f4d\u1f50\u1f57\u1f59\u1f59\u1f5b\u1f5b\u1f5d\u1f5d\u1f5f\u1f7d\u1f80\u1fb4\u1fb6\u1fbc\u1fbe\u1fbe\u1fc2\u1fc4\u1fc6\u1fcc\u1fd0\u1fd3\u1fd6\u1fdb\u1fe0\u1fec\u1ff2\u1ff4\u1ff6\u1ffc\u2126\u2126\u212a\u212b\u212e\u212e\u2180\u2182\u3007\u3007\u3021\u3029\u3041\u3094\u30a1\u30fa\u3105\u312c\u4e00\u9fa5\uac00\ud7a3"

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->setupRange(Lorg/apache/xmlbeans/impl/regex/Token;Ljava/lang/String;)V

    sget-object v2, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->ranges:Ljava/util/Hashtable;

    const-string v3, "xml:isDigit"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/regex/Token;

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->mergeRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V

    sget-object v2, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->ranges:Ljava/util/Hashtable;

    const-string v3, "xml:isWord"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->ranges2:Ljava/util/Hashtable;

    const-string v3, "xml:isWord"

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/Token;->complementRanges(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v1

    const-string v2, "-.0:AZ__az\u00b7\u00b7\u00c0\u00d6\u00d8\u00f6\u00f8\u0131\u0134\u013e\u0141\u0148\u014a\u017e\u0180\u01c3\u01cd\u01f0\u01f4\u01f5\u01fa\u0217\u0250\u02a8\u02bb\u02c1\u02d0\u02d1\u0300\u0345\u0360\u0361\u0386\u038a\u038c\u038c\u038e\u03a1\u03a3\u03ce\u03d0\u03d6\u03da\u03da\u03dc\u03dc\u03de\u03de\u03e0\u03e0\u03e2\u03f3\u0401\u040c\u040e\u044f\u0451\u045c\u045e\u0481\u0483\u0486\u0490\u04c4\u04c7\u04c8\u04cb\u04cc\u04d0\u04eb\u04ee\u04f5\u04f8\u04f9\u0531\u0556\u0559\u0559\u0561\u0586\u0591\u05a1\u05a3\u05b9\u05bb\u05bd\u05bf\u05bf\u05c1\u05c2\u05c4\u05c4\u05d0\u05ea\u05f0\u05f2\u0621\u063a\u0640\u0652\u0660\u0669\u0670\u06b7\u06ba\u06be\u06c0\u06ce\u06d0\u06d3\u06d5\u06e8\u06ea\u06ed\u06f0\u06f9\u0901\u0903\u0905\u0939\u093c\u094d\u0951\u0954\u0958\u0963\u0966\u096f\u0981\u0983\u0985\u098c\u098f\u0990\u0993\u09a8\u09aa\u09b0\u09b2\u09b2\u09b6\u09b9\u09bc\u09bc\u09be\u09c4\u09c7\u09c8\u09cb\u09cd\u09d7\u09d7\u09dc\u09dd\u09df\u09e3\u09e6\u09f1\u0a02\u0a02\u0a05\u0a0a\u0a0f\u0a10\u0a13\u0a28\u0a2a\u0a30\u0a32\u0a33\u0a35\u0a36\u0a38\u0a39\u0a3c\u0a3c\u0a3e\u0a42\u0a47\u0a48\u0a4b\u0a4d\u0a59\u0a5c\u0a5e\u0a5e\u0a66\u0a74\u0a81\u0a83\u0a85\u0a8b\u0a8d\u0a8d\u0a8f\u0a91\u0a93\u0aa8\u0aaa\u0ab0\u0ab2\u0ab3\u0ab5\u0ab9\u0abc\u0ac5\u0ac7\u0ac9\u0acb\u0acd\u0ae0\u0ae0\u0ae6\u0aef\u0b01\u0b03\u0b05\u0b0c\u0b0f\u0b10\u0b13\u0b28\u0b2a\u0b30\u0b32\u0b33\u0b36\u0b39\u0b3c\u0b43\u0b47\u0b48\u0b4b\u0b4d\u0b56\u0b57\u0b5c\u0b5d\u0b5f\u0b61\u0b66\u0b6f\u0b82\u0b83\u0b85\u0b8a\u0b8e\u0b90\u0b92\u0b95\u0b99\u0b9a\u0b9c\u0b9c\u0b9e\u0b9f\u0ba3\u0ba4\u0ba8\u0baa\u0bae\u0bb5\u0bb7\u0bb9\u0bbe\u0bc2\u0bc6\u0bc8\u0bca\u0bcd\u0bd7\u0bd7\u0be7\u0bef\u0c01\u0c03\u0c05\u0c0c\u0c0e\u0c10\u0c12\u0c28\u0c2a\u0c33\u0c35\u0c39\u0c3e\u0c44\u0c46\u0c48\u0c4a\u0c4d\u0c55\u0c56\u0c60\u0c61\u0c66\u0c6f\u0c82\u0c83\u0c85\u0c8c\u0c8e\u0c90\u0c92\u0ca8\u0caa\u0cb3\u0cb5\u0cb9\u0cbe\u0cc4\u0cc6\u0cc8\u0cca\u0ccd\u0cd5\u0cd6\u0cde\u0cde\u0ce0\u0ce1\u0ce6\u0cef\u0d02\u0d03\u0d05\u0d0c\u0d0e\u0d10\u0d12\u0d28\u0d2a\u0d39\u0d3e\u0d43\u0d46\u0d48\u0d4a\u0d4d\u0d57\u0d57\u0d60\u0d61\u0d66\u0d6f\u0e01\u0e2e\u0e30\u0e3a\u0e40\u0e4e\u0e50\u0e59\u0e81\u0e82\u0e84\u0e84\u0e87\u0e88\u0e8a\u0e8a\u0e8d\u0e8d\u0e94\u0e97\u0e99\u0e9f\u0ea1\u0ea3\u0ea5\u0ea5\u0ea7\u0ea7\u0eaa\u0eab\u0ead\u0eae\u0eb0\u0eb9\u0ebb\u0ebd\u0ec0\u0ec4\u0ec6\u0ec6\u0ec8\u0ecd\u0ed0\u0ed9\u0f18\u0f19\u0f20\u0f29\u0f35\u0f35\u0f37\u0f37\u0f39\u0f39\u0f3e\u0f47\u0f49\u0f69\u0f71\u0f84\u0f86\u0f8b\u0f90\u0f95\u0f97\u0f97\u0f99\u0fad\u0fb1\u0fb7\u0fb9\u0fb9\u10a0\u10c5\u10d0\u10f6\u1100\u1100\u1102\u1103\u1105\u1107\u1109\u1109\u110b\u110c\u110e\u1112\u113c\u113c\u113e\u113e\u1140\u1140\u114c\u114c\u114e\u114e\u1150\u1150\u1154\u1155\u1159\u1159\u115f\u1161\u1163\u1163\u1165\u1165\u1167\u1167\u1169\u1169\u116d\u116e\u1172\u1173\u1175\u1175\u119e\u119e\u11a8\u11a8\u11ab\u11ab\u11ae\u11af\u11b7\u11b8\u11ba\u11ba\u11bc\u11c2\u11eb\u11eb\u11f0\u11f0\u11f9\u11f9\u1e00\u1e9b\u1ea0\u1ef9\u1f00\u1f15\u1f18\u1f1d\u1f20\u1f45\u1f48\u1f4d\u1f50\u1f57\u1f59\u1f59\u1f5b\u1f5b\u1f5d\u1f5d\u1f5f\u1f7d\u1f80\u1fb4\u1fb6\u1fbc\u1fbe\u1fbe\u1fc2\u1fc4\u1fc6\u1fcc\u1fd0\u1fd3\u1fd6\u1fdb\u1fe0\u1fec\u1ff2\u1ff4\u1ff6\u1ffc\u20d0\u20dc\u20e1\u20e1\u2126\u2126\u212a\u212b\u212e\u212e\u2180\u2182\u3005\u3005\u3007\u3007\u3021\u302f\u3031\u3035\u3041\u3094\u3099\u309a\u309d\u309e\u30a1\u30fa\u30fc\u30fe\u3105\u312c\u4e00\u9fa5\uac00\ud7a3"

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->setupRange(Lorg/apache/xmlbeans/impl/regex/Token;Ljava/lang/String;)V

    sget-object v2, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->ranges:Ljava/util/Hashtable;

    const-string v3, "xml:isNameChar"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->ranges2:Ljava/util/Hashtable;

    const-string v3, "xml:isNameChar"

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/Token;->complementRanges(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v1

    const-string v2, "AZaz\u00c0\u00d6\u00d8\u00f6\u00f8\u0131\u0134\u013e\u0141\u0148\u014a\u017e\u0180\u01c3\u01cd\u01f0\u01f4\u01f5\u01fa\u0217\u0250\u02a8\u02bb\u02c1\u0386\u0386\u0388\u038a\u038c\u038c\u038e\u03a1\u03a3\u03ce\u03d0\u03d6\u03da\u03da\u03dc\u03dc\u03de\u03de\u03e0\u03e0\u03e2\u03f3\u0401\u040c\u040e\u044f\u0451\u045c\u045e\u0481\u0490\u04c4\u04c7\u04c8\u04cb\u04cc\u04d0\u04eb\u04ee\u04f5\u04f8\u04f9\u0531\u0556\u0559\u0559\u0561\u0586\u05d0\u05ea\u05f0\u05f2\u0621\u063a\u0641\u064a\u0671\u06b7\u06ba\u06be\u06c0\u06ce\u06d0\u06d3\u06d5\u06d5\u06e5\u06e6\u0905\u0939\u093d\u093d\u0958\u0961\u0985\u098c\u098f\u0990\u0993\u09a8\u09aa\u09b0\u09b2\u09b2\u09b6\u09b9\u09dc\u09dd\u09df\u09e1\u09f0\u09f1\u0a05\u0a0a\u0a0f\u0a10\u0a13\u0a28\u0a2a\u0a30\u0a32\u0a33\u0a35\u0a36\u0a38\u0a39\u0a59\u0a5c\u0a5e\u0a5e\u0a72\u0a74\u0a85\u0a8b\u0a8d\u0a8d\u0a8f\u0a91\u0a93\u0aa8\u0aaa\u0ab0\u0ab2\u0ab3\u0ab5\u0ab9\u0abd\u0abd\u0ae0\u0ae0\u0b05\u0b0c\u0b0f\u0b10\u0b13\u0b28\u0b2a\u0b30\u0b32\u0b33\u0b36\u0b39\u0b3d\u0b3d\u0b5c\u0b5d\u0b5f\u0b61\u0b85\u0b8a\u0b8e\u0b90\u0b92\u0b95\u0b99\u0b9a\u0b9c\u0b9c\u0b9e\u0b9f\u0ba3\u0ba4\u0ba8\u0baa\u0bae\u0bb5\u0bb7\u0bb9\u0c05\u0c0c\u0c0e\u0c10\u0c12\u0c28\u0c2a\u0c33\u0c35\u0c39\u0c60\u0c61\u0c85\u0c8c\u0c8e\u0c90\u0c92\u0ca8\u0caa\u0cb3\u0cb5\u0cb9\u0cde\u0cde\u0ce0\u0ce1\u0d05\u0d0c\u0d0e\u0d10\u0d12\u0d28\u0d2a\u0d39\u0d60\u0d61\u0e01\u0e2e\u0e30\u0e30\u0e32\u0e33\u0e40\u0e45\u0e81\u0e82\u0e84\u0e84\u0e87\u0e88\u0e8a\u0e8a\u0e8d\u0e8d\u0e94\u0e97\u0e99\u0e9f\u0ea1\u0ea3\u0ea5\u0ea5\u0ea7\u0ea7\u0eaa\u0eab\u0ead\u0eae\u0eb0\u0eb0\u0eb2\u0eb3\u0ebd\u0ebd\u0ec0\u0ec4\u0f40\u0f47\u0f49\u0f69\u10a0\u10c5\u10d0\u10f6\u1100\u1100\u1102\u1103\u1105\u1107\u1109\u1109\u110b\u110c\u110e\u1112\u113c\u113c\u113e\u113e\u1140\u1140\u114c\u114c\u114e\u114e\u1150\u1150\u1154\u1155\u1159\u1159\u115f\u1161\u1163\u1163\u1165\u1165\u1167\u1167\u1169\u1169\u116d\u116e\u1172\u1173\u1175\u1175\u119e\u119e\u11a8\u11a8\u11ab\u11ab\u11ae\u11af\u11b7\u11b8\u11ba\u11ba\u11bc\u11c2\u11eb\u11eb\u11f0\u11f0\u11f9\u11f9\u1e00\u1e9b\u1ea0\u1ef9\u1f00\u1f15\u1f18\u1f1d\u1f20\u1f45\u1f48\u1f4d\u1f50\u1f57\u1f59\u1f59\u1f5b\u1f5b\u1f5d\u1f5d\u1f5f\u1f7d\u1f80\u1fb4\u1fb6\u1fbc\u1fbe\u1fbe\u1fc2\u1fc4\u1fc6\u1fcc\u1fd0\u1fd3\u1fd6\u1fdb\u1fe0\u1fec\u1ff2\u1ff4\u1ff6\u1ffc\u2126\u2126\u212a\u212b\u212e\u212e\u2180\u2182\u3007\u3007\u3021\u3029\u3041\u3094\u30a1\u30fa\u3105\u312c\u4e00\u9fa5\uac00\ud7a3"

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->setupRange(Lorg/apache/xmlbeans/impl/regex/Token;Ljava/lang/String;)V

    const/16 v2, 0x5f

    invoke-virtual {v1, v2, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->addRange(II)V

    const/16 v2, 0x3a

    invoke-virtual {v1, v2, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->addRange(II)V

    sget-object v2, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->ranges:Ljava/util/Hashtable;

    const-string v3, "xml:isInitialNameChar"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->ranges2:Ljava/util/Hashtable;

    const-string v3, "xml:isInitialNameChar"

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/Token;->complementRanges(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->ranges:Ljava/util/Hashtable;

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;

    goto :goto_1

    :cond_1
    sget-object p1, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->ranges2:Ljava/util/Hashtable;

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setupRange(Lorg/apache/xmlbeans/impl/regex/Token;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/xmlbeans/impl/regex/Token;->addRange(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public checkQuestion(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public decodeEscaped()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_2

    const/16 v2, 0x3f

    if-eq v0, v2, :cond_2

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_3

    const/16 v1, 0x72

    if-eq v0, v1, :cond_1

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x2

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_0
    const/16 v1, 0x9

    goto :goto_0

    :cond_1
    const/16 v1, 0xd

    goto :goto_0

    :cond_2
    :pswitch_0
    move v1, v0

    :cond_3
    :goto_0
    return v1

    :cond_4
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.next.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getTokenForShorthand(I)Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 7

    const/16 v0, 0x43

    const-string v1, "xml:isNameChar"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_9

    const/16 v0, 0x44

    const-string v3, "xml:isDigit"

    if-eq p1, v0, :cond_8

    const/16 v0, 0x49

    const-string v4, "xml:isInitialNameChar"

    if-eq p1, v0, :cond_7

    const/16 v0, 0x53

    const-string v5, "xml:isSpace"

    if-eq p1, v0, :cond_6

    const/16 v0, 0x57

    const-string v6, "xml:isWord"

    if-eq p1, v0, :cond_5

    const/16 v0, 0x69

    const/4 v2, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x73

    if-eq p1, v0, :cond_3

    const/16 v0, 0x77

    if-eq p1, v0, :cond_2

    const/16 v0, 0x63

    if-eq p1, v0, :cond_1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    invoke-static {v3, v2}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->getRange(Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Internal Error: shorthands: \\u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x10

    invoke-static {p1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->getRange(Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {v6, v2}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->getRange(Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v5, v2}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->getRange(Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {v4, v2}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->getRange(Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-static {v6, v2}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->getRange(Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-static {v5, v2}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->getRange(Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {v4, v2}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->getRange(Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-static {v3, v2}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->getRange(Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->getRange(Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object p1

    return-object p1
.end method

.method public parseCharacterClass(Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->setContext(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget v2, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    const/16 v4, 0x5e

    if-ne v2, v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v2

    const v4, 0x10ffff

    invoke-virtual {v2, v3, v4}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->addRange(II)V

    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v4

    move v5, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v4

    const/4 v2, 0x0

    move v5, v3

    :goto_0
    move v6, v1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v7

    const-string v8, "parser.cc.2"

    if-eq v7, v1, :cond_1c

    const/16 v9, 0x5d

    if-nez v7, :cond_1

    iget v10, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    if-ne v10, v9, :cond_1

    if-nez v6, :cond_1

    if-eqz v5, :cond_1c

    invoke-virtual {v2, v4}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->subtractRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V

    goto/16 :goto_a

    :cond_1
    iget v10, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    const/16 v11, 0x18

    const/16 v12, 0xa

    if-ne v7, v12, :cond_6

    const/16 v13, 0x43

    if-eq v10, v13, :cond_5

    const/16 v13, 0x44

    if-eq v10, v13, :cond_4

    const/16 v13, 0x49

    if-eq v10, v13, :cond_5

    const/16 v13, 0x50

    if-eq v10, v13, :cond_2

    const/16 v13, 0x53

    if-eq v10, v13, :cond_4

    const/16 v13, 0x57

    if-eq v10, v13, :cond_4

    const/16 v13, 0x69

    if-eq v10, v13, :cond_5

    const/16 v13, 0x70

    if-eq v10, v13, :cond_2

    const/16 v13, 0x73

    if-eq v10, v13, :cond_4

    const/16 v13, 0x77

    if-eq v10, v13, :cond_4

    const/16 v13, 0x63

    if-eq v10, v13, :cond_5

    const/16 v13, 0x64

    if-eq v10, v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->decodeEscaped()I

    move-result v10

    goto :goto_4

    :cond_2
    iget v13, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    invoke-virtual {v0, v10}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processBacksolidus_pP(I)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v4, v14}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->mergeRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V

    goto :goto_2

    :cond_3
    const-string v1, "parser.atom.5"

    invoke-virtual {v0, v1, v13}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_4
    invoke-virtual {v0, v10}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->getTokenForShorthand(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->mergeRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V

    :goto_2
    move v13, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v0, v4, v10}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->processCIinCharacterClass(Lorg/apache/xmlbeans/impl/regex/RangeToken;I)I

    move-result v10

    if-gez v10, :cond_9

    goto :goto_2

    :cond_6
    if-ne v7, v11, :cond_9

    if-nez v6, :cond_9

    if-eqz v5, :cond_7

    invoke-virtual {v2, v4}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->subtractRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V

    goto :goto_3

    :cond_7
    move-object v2, v4

    :goto_3
    invoke-virtual {v0, v3}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->parseCharacterClass(Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->subtractRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v4

    if-nez v4, :cond_8

    iget v4, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    if-ne v4, v9, :cond_8

    goto/16 :goto_a

    :cond_8
    iget v1, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v2, "parser.cc.5"

    invoke-virtual {v0, v2, v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_9
    :goto_4
    move v13, v3

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    if-nez v13, :cond_1b

    const-string v13, "parser.cc.7"

    const-string v14, "parser.cc.6"

    const/16 v15, 0x5b

    const-string v3, "parser.cc.8"

    const/16 v12, 0x2d

    if-nez v7, :cond_d

    if-eq v10, v15, :cond_c

    if-eq v10, v9, :cond_b

    if-ne v10, v12, :cond_d

    if-nez v6, :cond_d

    iget v6, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    if-ne v6, v9, :cond_a

    goto :goto_6

    :cond_a
    iget v1, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v3, v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_b
    iget v1, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v13, v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_c
    iget v1, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v14, v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_d
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v6

    if-nez v6, :cond_1a

    iget v6, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    if-eq v6, v12, :cond_e

    goto/16 :goto_8

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v6

    if-eq v6, v1, :cond_19

    if-eq v6, v11, :cond_18

    if-nez v6, :cond_f

    iget v7, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    if-ne v7, v9, :cond_f

    invoke-virtual {v4, v10, v10}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->addRange(II)V

    invoke-virtual {v4, v12, v12}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->addRange(II)V

    goto :goto_9

    :cond_f
    iget v7, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    if-nez v6, :cond_13

    if-eq v7, v15, :cond_12

    if-eq v7, v9, :cond_11

    if-ne v7, v12, :cond_14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    iget v6, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    if-ne v6, v9, :cond_10

    goto :goto_7

    :cond_10
    iget v1, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v3, v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_11
    iget v2, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v13, v2}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_12
    iget v2, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v14, v2}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_13
    const/16 v3, 0xa

    if-ne v6, v3, :cond_14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->decodeEscaped()I

    move-result v7

    :cond_14
    :goto_7
    if-ne v7, v12, :cond_15

    iget v3, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    if-eq v3, v9, :cond_16

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    :cond_16
    if-gt v10, v7, :cond_17

    invoke-virtual {v4, v10, v7}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->addRange(II)V

    goto :goto_9

    :cond_17
    iget v2, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    sub-int/2addr v2, v1

    const-string v1, "parser.ope.3"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_18
    iget v2, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_19
    iget v1, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    invoke-virtual {v0, v8, v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_1a
    :goto_8
    invoke-virtual {v4, v10, v10}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->addRange(II)V

    :cond_1b
    :goto_9
    const/4 v3, 0x0

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_1c
    move-object v2, v4

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v3

    if-eq v3, v1, :cond_1d

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sortRanges()V

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->compactRanges()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->setContext(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    return-object v2

    :cond_1d
    iget v1, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    invoke-virtual {v0, v8, v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v1

    throw v1
.end method

.method public parseSetOperations()Lorg/apache/xmlbeans/impl/regex/RangeToken;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method public processBackreference()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x4

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method public processBacksolidus_A()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method public processBacksolidus_B()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method public processBacksolidus_C()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->getTokenForShorthand(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    return-object v0
.end method

.method public processBacksolidus_I()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    const/16 v0, 0x49

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->getTokenForShorthand(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    return-object v0
.end method

.method public processBacksolidus_X()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x2

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method public processBacksolidus_Z()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method public processBacksolidus_b()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method public processBacksolidus_c()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    const/16 v0, 0x63

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->getTokenForShorthand(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    return-object v0
.end method

.method public processBacksolidus_g()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x2

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method public processBacksolidus_gt()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method public processBacksolidus_i()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    const/16 v0, 0x69

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->getTokenForShorthand(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    return-object v0
.end method

.method public processBacksolidus_lt()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method public processBacksolidus_z()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method public processCIinCharacterClass(Lorg/apache/xmlbeans/impl/regex/RangeToken;I)I
    .locals 0

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;->getTokenForShorthand(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->mergeRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V

    const/4 p1, -0x1

    return p1
.end method

.method public processCaret()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    const/16 v0, 0x5e

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/Token;->createChar(I)Lorg/apache/xmlbeans/impl/regex/Token$CharToken;

    move-result-object v0

    return-object v0
.end method

.method public processCondition()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method public processDollar()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    const/16 v0, 0x24

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/Token;->createChar(I)Lorg/apache/xmlbeans/impl/regex/Token$CharToken;

    move-result-object v0

    return-object v0
.end method

.method public processIndependent()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method public processLookahead()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method public processLookbehind()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method public processModifiers()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method public processNegativelookahead()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method public processNegativelookbehind()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method public processParen()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parseRegex()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/regex/Token;->createParen(Lorg/apache/xmlbeans/impl/regex/Token;I)Lorg/apache/xmlbeans/impl/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    return-object v0

    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method public processParen2()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method public processPlus(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->createClosure(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/regex/Token;->createConcat(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token$ConcatToken;

    move-result-object p1

    return-object p1
.end method

.method public processQuestion(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createUnion()Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->addChild(Lorg/apache/xmlbeans/impl/regex/Token;)V

    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createEmpty()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->addChild(Lorg/apache/xmlbeans/impl/regex/Token;)V

    return-object v0
.end method

.method public processStar(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->createClosure(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;

    move-result-object p1

    return-object p1
.end method
