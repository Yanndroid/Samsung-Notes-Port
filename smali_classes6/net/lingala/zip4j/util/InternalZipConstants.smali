.class public interface abstract Lnet/lingala/zip4j/util/InternalZipConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AESSIG:I = 0x9901

.field public static final AES_AUTH_LENGTH:I = 0xa

.field public static final AES_BLOCK_SIZE:I = 0x10

.field public static final ARCEXTDATREC:J = 0x8064b50L

.field public static final BUFF_SIZE:I = 0x1000

.field public static final CENATT:I = 0x24

.field public static final CENATX:I = 0x26

.field public static final CENCOM:I = 0x20

.field public static final CENCRC:I = 0x10

.field public static final CENDSK:I = 0x22

.field public static final CENEXT:I = 0x1e

.field public static final CENFLG:I = 0x8

.field public static final CENHDR:I = 0x2e

.field public static final CENHOW:I = 0xa

.field public static final CENLEN:I = 0x18

.field public static final CENNAM:I = 0x1c

.field public static final CENOFF:I = 0x2a

.field public static final CENSIG:J = 0x2014b50L

.field public static final CENSIZ:I = 0x14

.field public static final CENTIM:I = 0xc

.field public static final CENVEM:I = 0x4

.field public static final CENVER:I = 0x6

.field public static final CHARSET_COMMENTS_DEFAULT:Ljava/lang/String; = "windows-1254"

.field public static final CHARSET_CP850:Ljava/lang/String; = "Cp850"

.field public static final CHARSET_DEFAULT:Ljava/lang/String;

.field public static final CHARSET_UTF8:Ljava/lang/String; = "UTF8"

.field public static final DIGSIG:J = 0x5054b50L

.field public static final ENDCOM:I = 0x14

.field public static final ENDHDR:I = 0x16

.field public static final ENDOFF:I = 0x10

.field public static final ENDSIG:J = 0x6054b50L

.field public static final ENDSIZ:I = 0xc

.field public static final ENDSUB:I = 0x8

.field public static final ENDTOT:I = 0xa

.field public static final EXTCRC:I = 0x4

.field public static final EXTHDR:I = 0x10

.field public static final EXTLEN:I = 0xc

.field public static final EXTRAFIELDZIP64LENGTH:I = 0x1

.field public static final EXTSIG:J = 0x8074b50L

.field public static final EXTSIZ:I = 0x8

.field public static final FILE_MODE_ARCHIVE:I = 0x20

.field public static final FILE_MODE_HIDDEN:I = 0x2

.field public static final FILE_MODE_HIDDEN_ARCHIVE:I = 0x22

.field public static final FILE_MODE_NONE:I = 0x0

.field public static final FILE_MODE_READ_ONLY:I = 0x1

.field public static final FILE_MODE_READ_ONLY_ARCHIVE:I = 0x21

.field public static final FILE_MODE_READ_ONLY_HIDDEN:I = 0x3

.field public static final FILE_MODE_READ_ONLY_HIDDEN_ARCHIVE:I = 0x23

.field public static final FILE_MODE_SYSTEM:I = 0x26

.field public static final FILE_SEPARATOR:Ljava/lang/String;

.field public static final FOLDER_MODE_ARCHIVE:I = 0x30

.field public static final FOLDER_MODE_HIDDEN:I = 0x12

.field public static final FOLDER_MODE_HIDDEN_ARCHIVE:I = 0x32

.field public static final FOLDER_MODE_NONE:I = 0x10

.field public static final LIST_TYPE_FILE:I = 0x1

.field public static final LIST_TYPE_STRING:I = 0x2

.field public static final LOCCRC:I = 0xe

.field public static final LOCEXT:I = 0x1c

.field public static final LOCFLG:I = 0x6

.field public static final LOCHDR:I = 0x1e

.field public static final LOCHOW:I = 0x8

.field public static final LOCLEN:I = 0x16

.field public static final LOCNAM:I = 0x1a

.field public static final LOCSIG:J = 0x4034b50L

.field public static final LOCSIZ:I = 0x12

.field public static final LOCTIM:I = 0xa

.field public static final LOCVER:I = 0x4

.field public static final MAX_ALLOWED_ZIP_COMMENT_LENGTH:I = 0xffff

.field public static final MIN_SPLIT_LENGTH:I = 0x10000

.field public static final MODE_UNZIP:I = 0x2

.field public static final MODE_ZIP:I = 0x1

.field public static final OFFSET_CENTRAL_DIR:Ljava/lang/String; = "offsetCentralDir"

.field public static final READ_MODE:Ljava/lang/String; = "r"

.field public static final SPLITSIG:J = 0x8074b50L

.field public static final STD_DEC_HDR_SIZE:I = 0xc

.field public static final THREAD_NAME:Ljava/lang/String; = "Zip4j"

.field public static final UFT8_NAMES_FLAG:I = 0x800

.field public static final UPDATE_LFH_COMP_SIZE:I = 0x12

.field public static final UPDATE_LFH_CRC:I = 0xe

.field public static final UPDATE_LFH_UNCOMP_SIZE:I = 0x16

.field public static final VERSION:Ljava/lang/String; = "1.3.1"

.field public static final WRITE_MODE:Ljava/lang/String; = "rw"

.field public static final ZIP64ENDCENDIRLOC:J = 0x7064b50L

.field public static final ZIP64ENDCENDIRREC:J = 0x6064b50L

.field public static final ZIP_64_LIMIT:J = 0xffffffffL

.field public static final ZIP_FILE_SEPARATOR:Ljava/lang/String; = "/"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/lingala/zip4j/util/InternalZipConstants;->CHARSET_DEFAULT:Ljava/lang/String;

    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    return-void
.end method
