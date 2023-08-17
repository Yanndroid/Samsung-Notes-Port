.class public Lorg/apache/xmlbeans/impl/common/EncodingMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final _iana_to_java:Ljava/util/HashMap;

.field private static final _java_to_iana:Ljava/util/HashMap;

.field public static synthetic class$org$apache$xmlbeans$impl$common$EncodingMap:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/impl/common/EncodingMap;->class$org$apache$xmlbeans$impl$common$EncodingMap:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.common.EncodingMap"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/common/EncodingMap;->class$org$apache$xmlbeans$impl$common$EncodingMap:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/common/EncodingMap;->$assertionsDisabled:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/common/EncodingMap;->_iana_to_java:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/common/EncodingMap;->_java_to_iana:Ljava/util/HashMap;

    const/4 v0, 0x0

    const-string v1, "ASCII"

    const-string v2, "ANSI_X3.4-1986"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    invoke-static {v1, v1, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v2, "CP367"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "CSASCII"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM-367"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM367"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "ISO-IR-6"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "ISO646-US"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "ISO_646.IRV:1991"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "US"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "US-ASCII"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "BIG5"

    const-string v2, "BIG5"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "BIG5"

    const-string v2, "CSBIG5"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP037"

    invoke-static {v1, v1, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "CSIBM037"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "EBCDIC-CP-CA"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "EBCDIC-CP-NL"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v2, "EBCDIC-CP-US"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v2, "EBCDIC-CP-WT"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM-37"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM037"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1026"

    const-string v2, "CP1026"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1026"

    const-string v2, "CSIBM1026"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1026"

    const-string v2, "IBM-1026"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP1026"

    const-string v2, "IBM1026"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP1047"

    const-string v2, "CP1047"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1047"

    const-string v2, "IBM-1047"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP1047"

    const-string v2, "IBM1047"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP1140"

    const-string v2, "CCSID01140"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1140"

    const-string v2, "CP01140"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1140"

    const-string v2, "IBM-1140"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP1140"

    const-string v2, "IBM01140"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP1141"

    const-string v2, "CCSID01141"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1141"

    const-string v2, "CP01141"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1141"

    const-string v2, "IBM-1141"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP1141"

    const-string v2, "IBM01141"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP1142"

    const-string v2, "CCSID01142"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1142"

    const-string v2, "CP01142"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1142"

    const-string v2, "IBM-1142"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP1142"

    const-string v2, "IBM01142"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP1143"

    const-string v2, "CCSID01143"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1143"

    const-string v2, "CP01143"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1143"

    const-string v2, "IBM-1143"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP1143"

    const-string v2, "IBM01143"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP1144"

    const-string v2, "CCSID01144"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1144"

    const-string v2, "CP01144"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1144"

    const-string v2, "IBM-1144"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP1144"

    const-string v2, "IBM01144"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP1145"

    const-string v2, "CCSID01145"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1145"

    const-string v2, "CP01145"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1145"

    const-string v2, "IBM-1145"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP1145"

    const-string v2, "IBM01145"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP1146"

    const-string v2, "CCSID01146"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1146"

    const-string v2, "CP01146"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1146"

    const-string v2, "IBM-1146"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP1146"

    const-string v2, "IBM01146"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP1147"

    const-string v2, "CCSID01147"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1147"

    const-string v2, "CP01147"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1147"

    const-string v2, "IBM-1147"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP1147"

    const-string v2, "IBM01147"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP1148"

    const-string v2, "CCSID01148"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1148"

    const-string v2, "CP01148"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1148"

    const-string v2, "IBM-1148"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP1148"

    const-string v2, "IBM01148"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP1149"

    const-string v2, "CCSID01149"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1149"

    const-string v2, "CP01149"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1149"

    const-string v2, "IBM-1149"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP1149"

    const-string v2, "IBM01149"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1250"

    const-string v2, "WINDOWS-1250"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1251"

    const-string v2, "WINDOWS-1251"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1252"

    const-string v2, "WINDOWS-1252"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1253"

    const-string v2, "WINDOWS-1253"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1254"

    const-string v2, "WINDOWS-1254"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1255"

    const-string v2, "WINDOWS-1255"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1256"

    const-string v2, "WINDOWS-1256"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1257"

    const-string v2, "WINDOWS-1257"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP1258"

    const-string v2, "WINDOWS-1258"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP273"

    const-string v2, "CP273"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP273"

    const-string v2, "CSIBM273"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP273"

    const-string v2, "IBM-273"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP273"

    const-string v2, "IBM273"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP277"

    invoke-static {v1, v1, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "CSIBM277"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v2, "EBCDIC-CP-DK"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v2, "EBCDIC-CP-NO"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM-277"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM277"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP278"

    invoke-static {v1, v1, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "CSIBM278"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v2, "EBCDIC-CP-FI"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v2, "EBCDIC-CP-SE"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM-278"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM278"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP280"

    invoke-static {v1, v1, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "CSIBM280"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v2, "EBCDIC-CP-IT"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v2, "IBM-280"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM280"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP284"

    invoke-static {v1, v1, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "CSIBM284"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v2, "EBCDIC-CP-ES"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v2, "IBM-284"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM284"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP285"

    invoke-static {v1, v1, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "CSIBM285"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v2, "EBCDIC-CP-GB"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v2, "IBM-285"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM285"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP290"

    invoke-static {v1, v1, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "CSIBM290"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v2, "EBCDIC-JP-KANA"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v2, "IBM-290"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM290"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP297"

    invoke-static {v1, v1, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "CSIBM297"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v2, "EBCDIC-CP-FR"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v2, "IBM-297"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM297"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP420"

    invoke-static {v1, v1, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "CSIBM420"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v2, "EBCDIC-CP-AR1"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v2, "IBM-420"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM420"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP424"

    invoke-static {v1, v1, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "CSIBM424"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v2, "EBCDIC-CP-HE"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v2, "IBM-424"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM424"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP437"

    const-string v2, "437"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v1, v1, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "CSPC8CODEPAGE437"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM-437"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v2, "IBM437"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP500"

    invoke-static {v1, v1, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "CSIBM500"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "EBCDIC-CP-BE"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v2, "EBCDIC-CP-CH"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v2, "IBM-500"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM500"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP775"

    const-string v2, "CP775"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP775"

    const-string v2, "CSPC775BALTIC"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP775"

    const-string v2, "IBM-775"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP775"

    const-string v2, "IBM775"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP850"

    const-string v2, "850"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v1, v1, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "CSPC850MULTILINGUAL"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM-850"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v2, "IBM850"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP852"

    const-string v2, "852"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v1, v1, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "CSPCP852"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM-852"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v2, "IBM852"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP855"

    const-string v2, "855"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP855"

    const-string v2, "CP855"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP855"

    const-string v2, "CSIBM855"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP855"

    const-string v2, "IBM-855"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP855"

    const-string v2, "IBM855"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP857"

    const-string v2, "857"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP857"

    const-string v2, "CP857"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP857"

    const-string v2, "CSIBM857"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP857"

    const-string v2, "IBM-857"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP857"

    const-string v2, "IBM857"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP858"

    const-string v2, "CCSID00858"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP858"

    const-string v2, "CP00858"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP858"

    const-string v2, "IBM-858"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP858"

    const-string v2, "IBM00858"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP860"

    const-string v2, "860"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP860"

    const-string v2, "CP860"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP860"

    const-string v2, "CSIBM860"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP860"

    const-string v2, "IBM-860"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP860"

    const-string v2, "IBM860"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP861"

    const-string v2, "861"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "CP-IS"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v1, v1, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "CSIBM861"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM-861"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v2, "IBM861"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP862"

    const-string v2, "862"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP862"

    const-string v2, "CP862"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP862"

    const-string v2, "CSPC862LATINHEBREW"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP862"

    const-string v2, "IBM-862"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP862"

    const-string v2, "IBM862"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP863"

    const-string v2, "863"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP863"

    const-string v2, "CP863"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP863"

    const-string v2, "CSIBM863"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP863"

    const-string v2, "IBM-863"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP863"

    const-string v2, "IBM863"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP864"

    const-string v2, "CP864"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP864"

    const-string v2, "CSIBM864"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP864"

    const-string v2, "IBM-864"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP864"

    const-string v2, "IBM864"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP865"

    const-string v2, "865"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP865"

    const-string v2, "CP865"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP865"

    const-string v2, "CSIBM865"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP865"

    const-string v2, "IBM-865"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP865"

    const-string v2, "IBM865"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP866"

    const-string v2, "866"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP866"

    const-string v2, "CP866"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP866"

    const-string v2, "CSIBM866"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP866"

    const-string v2, "IBM-866"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP866"

    const-string v2, "IBM866"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP868"

    const-string v2, "CP-AR"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP868"

    const-string v2, "CP868"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP868"

    const-string v2, "CSIBM868"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP868"

    const-string v2, "IBM-868"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP868"

    const-string v2, "IBM868"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP869"

    const-string v2, "CP-GR"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP869"

    const-string v2, "CP869"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP869"

    const-string v2, "CSIBM869"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP869"

    const-string v2, "IBM-869"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP869"

    const-string v2, "IBM869"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP870"

    invoke-static {v1, v1, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "CSIBM870"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v2, "EBCDIC-CP-ROECE"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v2, "EBCDIC-CP-YU"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM-870"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM870"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP871"

    const-string v2, "CP871"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP871"

    const-string v2, "CSIBM871"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP871"

    const-string v2, "EBCDIC-CP-IS"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP871"

    const-string v2, "IBM-871"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP871"

    const-string v2, "IBM871"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP918"

    const-string v2, "CP918"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP918"

    const-string v2, "CSIBM918"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP918"

    const-string v2, "EBCDIC-CP-AR2"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP918"

    const-string v2, "IBM-918"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP918"

    const-string v2, "IBM918"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP924"

    const-string v2, "CCSID00924"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP924"

    const-string v2, "CP00924"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP924"

    const-string v2, "EBCDIC-LATIN9--EURO"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP924"

    const-string v2, "IBM-924"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "CP924"

    const-string v2, "IBM00924"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP936"

    const-string v2, "GBK"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP936"

    const-string v2, "CP936"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP936"

    const-string v2, "MS936"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CP936"

    const-string v2, "WINDOWS-936"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "EUCJIS"

    const-string v2, "CSEUCPKDFMTJAPANESE"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "EUCJIS"

    const-string v2, "EUC-JP"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "EUCJIS"

    const-string v2, "EXTENDED_UNIX_CODE_PACKED_FORMAT_FOR_JAPANESE"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "GB18030"

    const-string v2, "GB18030"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "GB2312"

    const-string v2, "CSGB2312"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "GB2312"

    const-string v2, "GB2312"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO2022CN"

    const-string v2, "ISO-2022-CN"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "ISO2022KR"

    const-string v2, "CSISO2022KR"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "ISO2022KR"

    const-string v2, "ISO-2022-KR"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "ISO8859_1"

    const-string v2, "CP819"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "CSISOLATIN1"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM-819"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IBM819"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v2, "ISO-8859-1"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v2, "ISO-IR-100"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "ISO_8859-1"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "L1"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "LATIN1"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_2"

    const-string v2, "CSISOLATIN2"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "ISO8859_2"

    const-string v2, "ISO-8859-2"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "ISO8859_2"

    const-string v2, "ISO-IR-101"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_2"

    const-string v2, "ISO_8859-2"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_2"

    const-string v2, "L2"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_2"

    const-string v2, "LATIN2"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_3"

    const-string v2, "CSISOLATIN3"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "ISO8859_3"

    const-string v2, "ISO-8859-3"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "ISO8859_3"

    const-string v2, "ISO-IR-109"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_3"

    const-string v2, "ISO_8859-3"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_3"

    const-string v2, "L3"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_3"

    const-string v2, "LATIN3"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_4"

    const-string v2, "CSISOLATIN4"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "ISO8859_4"

    const-string v2, "ISO-8859-4"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "ISO8859_4"

    const-string v2, "ISO-IR-110"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_4"

    const-string v2, "ISO_8859-4"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_4"

    const-string v2, "L4"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_4"

    const-string v2, "LATIN4"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_5"

    const-string v2, "CSISOLATINCYRILLIC"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_5"

    const-string v2, "CYRILLIC"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "ISO8859_5"

    const-string v2, "ISO-8859-5"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "ISO8859_5"

    const-string v2, "ISO-IR-144"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_5"

    const-string v2, "ISO_8859-5"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_6"

    const-string v2, "ARABIC"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "ASMO-708"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "CSISOLATINARABIC"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "ECMA-114"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v2, "ISO-8859-6"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v2, "ISO-IR-127"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "ISO_8859-6"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_7"

    const-string v2, "CSISOLATINGREEK"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "ECMA-118"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "ELOT_928"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "GREEK"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "GREEK8"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v2, "ISO-8859-7"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v2, "ISO-IR-126"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "ISO_8859-7"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_8"

    const-string v2, "CSISOLATINHEBREW"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_8"

    const-string v2, "HEBREW"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "ISO8859_8"

    const-string v2, "ISO-8859-8"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "ISO8859_8"

    const-string v2, "ISO-8859-8-I"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_8"

    const-string v2, "ISO-IR-138"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_8"

    const-string v2, "ISO_8859-8"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_9"

    const-string v2, "CSISOLATIN5"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "ISO8859_9"

    const-string v2, "ISO-8859-9"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "ISO8859_9"

    const-string v2, "ISO-IR-148"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_9"

    const-string v2, "ISO_8859-9"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_9"

    const-string v2, "L5"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ISO8859_9"

    const-string v2, "LATIN5"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "JIS"

    const-string v2, "CSISO2022JP"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "JIS"

    const-string v2, "ISO-2022-JP"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "JIS0201"

    const-string v2, "CSISO13JISC6220JP"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "JIS0201"

    const-string v2, "X0201"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "JIS0208"

    const-string v2, "CSISO87JISX0208"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "JIS0208"

    const-string v2, "ISO-IR-87"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "JIS0208"

    const-string v2, "X0208"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "JIS0208"

    const-string v2, "X0208DBIJIS_X0208-1983"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "JIS0212"

    const-string v2, "CSISO159JISX02121990"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "JIS0212"

    const-string v2, "ISO-IR-159"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "JIS0212"

    const-string v2, "X0212"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "KOI8_R"

    const-string v2, "CSKOI8R"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "KOI8_R"

    const-string v2, "KOI8-R"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "KSC5601"

    const-string v2, "EUC-KR"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "MS932"

    const-string v2, "CSWINDOWS31J"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "MS932"

    const-string v2, "WINDOWS-31J"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "SJIS"

    const-string v2, "CSSHIFTJIS"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "SJIS"

    const-string v2, "MS_KANJI"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "SJIS"

    const-string v2, "SHIFT_JIS"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "TIS620"

    const-string v2, "TIS-620"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "UNICODE"

    const-string v2, "UTF-16"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "UTF-16BE"

    const-string v2, "UTF-16BE"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "UTF-16BE"

    const-string v2, "UTF_16BE"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "ISO-10646-UCS-2"

    const-string v2, "ISO-10646-UCS-2"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "UTF-16LE"

    const-string v2, "UTF-16LE"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "UTF-16LE"

    const-string v2, "UTF_16LE"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "UTF8"

    const-string v2, "UTF-8"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->addMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final addMapping(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/common/EncodingMap;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    sget-object v1, Lorg/apache/xmlbeans/impl/common/EncodingMap;->_iana_to_java:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_2
    sget-object v1, Lorg/apache/xmlbeans/impl/common/EncodingMap;->_iana_to_java:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_8

    if-nez v0, :cond_7

    sget-object p2, Lorg/apache/xmlbeans/impl/common/EncodingMap;->_java_to_iana:Ljava/util/HashMap;

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :goto_3
    sget-object p2, Lorg/apache/xmlbeans/impl/common/EncodingMap;->_java_to_iana:Ljava/util/HashMap;

    invoke-virtual {p2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method private static final completeMappings()Z
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lorg/apache/xmlbeans/impl/common/EncodingMap;->_iana_to_java:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/apache/xmlbeans/impl/common/EncodingMap;->_iana_to_java:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    sget-boolean v2, Lorg/apache/xmlbeans/impl/common/EncodingMap;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    sget-object v2, Lorg/apache/xmlbeans/impl/common/EncodingMap;->_java_to_iana:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/common/EncodingMap;->_iana_to_java:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/common/EncodingMap;->_java_to_iana:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v1
.end method
