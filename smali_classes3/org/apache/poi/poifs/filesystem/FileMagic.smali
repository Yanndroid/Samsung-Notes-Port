.class public final enum Lorg/apache/poi/poifs/filesystem/FileMagic;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/poifs/filesystem/FileMagic;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum BIFF2:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum BIFF3:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum BIFF4:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum MSWRITE:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum OOXML:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum PDF:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum RTF:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum UNKNOWN:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum XML:Lorg/apache/poi/poifs/filesystem/FileMagic;


# instance fields
.field public final magic:[[B


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/apache/poi/poifs/filesystem/FileMagic;

    const-string v1, "OLE2"

    const/4 v2, 0x0

    const-wide v3, -0x1ee54e5e1fee3030L    # -5.8639378995972355E159

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v1, Lorg/apache/poi/poifs/filesystem/FileMagic;

    const/4 v3, 0x1

    new-array v4, v3, [[B

    sget-object v5, Lorg/apache/poi/poifs/common/POIFSConstants;->OOXML_FILE_HEADER:[B

    aput-object v5, v4, v2

    const-string v5, "OOXML"

    invoke-direct {v1, v5, v3, v4}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[[B)V

    sput-object v1, Lorg/apache/poi/poifs/filesystem/FileMagic;->OOXML:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v4, Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-array v5, v3, [[B

    sget-object v6, Lorg/apache/poi/poifs/common/POIFSConstants;->RAW_XML_FILE_HEADER:[B

    aput-object v6, v5, v2

    const-string v6, "XML"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v5}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[[B)V

    sput-object v4, Lorg/apache/poi/poifs/filesystem/FileMagic;->XML:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v5, Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-array v6, v3, [[B

    const/16 v8, 0x8

    new-array v9, v8, [B

    fill-array-data v9, :array_0

    aput-object v9, v6, v2

    const-string v9, "BIFF2"

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v6}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[[B)V

    sput-object v5, Lorg/apache/poi/poifs/filesystem/FileMagic;->BIFF2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v6, Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-array v9, v3, [[B

    new-array v11, v8, [B

    fill-array-data v11, :array_1

    aput-object v11, v9, v2

    const-string v11, "BIFF3"

    const/4 v12, 0x4

    invoke-direct {v6, v11, v12, v9}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[[B)V

    sput-object v6, Lorg/apache/poi/poifs/filesystem/FileMagic;->BIFF3:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v9, Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-array v11, v7, [[B

    new-array v13, v8, [B

    fill-array-data v13, :array_2

    aput-object v13, v11, v2

    new-array v13, v8, [B

    fill-array-data v13, :array_3

    aput-object v13, v11, v3

    const-string v13, "BIFF4"

    const/4 v14, 0x5

    invoke-direct {v9, v13, v14, v11}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[[B)V

    sput-object v9, Lorg/apache/poi/poifs/filesystem/FileMagic;->BIFF4:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v11, Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-array v13, v7, [[B

    new-array v15, v12, [B

    fill-array-data v15, :array_4

    aput-object v15, v13, v2

    new-array v15, v12, [B

    fill-array-data v15, :array_5

    aput-object v15, v13, v3

    const-string v15, "MSWRITE"

    const/4 v14, 0x6

    invoke-direct {v11, v15, v14, v13}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[[B)V

    sput-object v11, Lorg/apache/poi/poifs/filesystem/FileMagic;->MSWRITE:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v13, Lorg/apache/poi/poifs/filesystem/FileMagic;

    const-string v15, "RTF"

    const/4 v14, 0x7

    const-string/jumbo v12, "{\\rtf"

    invoke-direct {v13, v15, v14, v12}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/apache/poi/poifs/filesystem/FileMagic;->RTF:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v12, Lorg/apache/poi/poifs/filesystem/FileMagic;

    const-string v15, "PDF"

    const-string v14, "%PDF"

    invoke-direct {v12, v15, v8, v14}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/apache/poi/poifs/filesystem/FileMagic;->PDF:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v14, Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-array v15, v3, [[B

    new-array v8, v2, [B

    aput-object v8, v15, v2

    const-string v8, "UNKNOWN"

    const/16 v10, 0x9

    invoke-direct {v14, v8, v10, v15}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[[B)V

    sput-object v14, Lorg/apache/poi/poifs/filesystem/FileMagic;->UNKNOWN:Lorg/apache/poi/poifs/filesystem/FileMagic;

    const/16 v8, 0xa

    new-array v8, v8, [Lorg/apache/poi/poifs/filesystem/FileMagic;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v7

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v6, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v12, v8, v0

    aput-object v14, v8, v10

    sput-object v8, Lorg/apache/poi/poifs/filesystem/FileMagic;->$VALUES:[Lorg/apache/poi/poifs/filesystem/FileMagic;

    return-void

    :array_0
    .array-data 1
        0x9t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x70t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x9t
        0x2t
        0x6t
        0x0t
        0x0t
        0x0t
        0x70t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x9t
        0x4t
        0x6t
        0x0t
        0x0t
        0x0t
        0x70t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x9t
        0x4t
        0x6t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x31t
        -0x42t
        0x0t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x32t
        -0x42t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    const-class p2, B

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/FileMagic;->magic:[[B

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-static {p1, p2, p3, p4}, Lorg/apache/poi/util/LittleEndian;->putLong([BIJ)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x8
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[B

    sget-object v1, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[[B)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/FileMagic;->magic:[[B

    return-void
.end method

.method public static prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;
    .locals 1

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->peekFirst8Bytes(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf([B)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "getFileMagic() only operates on streams which support mark(int)"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/FileMagic;
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/filesystem/FileMagic;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/filesystem/FileMagic;

    return-object p0
.end method

.method public static valueOf([B)Lorg/apache/poi/poifs/filesystem/FileMagic;
    .locals 16

    invoke-static {}, Lorg/apache/poi/poifs/filesystem/FileMagic;->values()[Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    iget-object v5, v4, Lorg/apache/poi/poifs/filesystem/FileMagic;->magic:[[B

    array-length v6, v5

    const/4 v7, 0x1

    move v8, v2

    move v9, v8

    :goto_1
    if-ge v8, v6, :cond_4

    aget-object v10, v5, v8

    array-length v11, v10

    move v12, v2

    :goto_2
    if-ge v12, v11, :cond_2

    aget-byte v13, v10, v12

    add-int/lit8 v14, v9, 0x1

    aget-byte v9, p0, v9

    if-eq v9, v13, :cond_1

    const/16 v15, 0x70

    if-ne v13, v15, :cond_0

    const/16 v13, 0x10

    if-eq v9, v13, :cond_1

    const/16 v13, 0x20

    if-eq v9, v13, :cond_1

    const/16 v13, 0x40

    if-eq v9, v13, :cond_1

    :cond_0
    move v7, v2

    move v9, v14

    goto :goto_3

    :cond_1
    add-int/lit8 v12, v12, 0x1

    move v9, v14

    goto :goto_2

    :cond_2
    :goto_3
    if-eqz v7, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    sget-object v0, Lorg/apache/poi/poifs/filesystem/FileMagic;->UNKNOWN:Lorg/apache/poi/poifs/filesystem/FileMagic;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/poifs/filesystem/FileMagic;
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/filesystem/FileMagic;->$VALUES:[Lorg/apache/poi/poifs/filesystem/FileMagic;

    invoke-virtual {v0}, [Lorg/apache/poi/poifs/filesystem/FileMagic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/filesystem/FileMagic;

    return-object v0
.end method
