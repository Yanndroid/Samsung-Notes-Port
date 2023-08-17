.class public Lorg/apache/poi/openxml4j/util/ZipSecureFile;
.super Ljava/util/zip/ZipFile;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;
    }
.end annotation


# static fields
.field private static final GRACE_ENTRY_SIZE:J = 0x19000L

.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field private static MAX_ENTRY_SIZE:J

.field private static MAX_TEXT_SIZE:J

.field private static MIN_INFLATE_RATIO:D


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->LOG:Lorg/apache/poi/util/POILogger;

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    sput-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MIN_INFLATE_RATIO:D

    const-wide v0, 0xffffffffL

    sput-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_ENTRY_SIZE:J

    const-wide/32 v0, 0xa00000

    sput-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_TEXT_SIZE:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000()Lorg/apache/poi/util/POILogger;
    .locals 1

    sget-object v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->LOG:Lorg/apache/poi/util/POILogger;

    return-object v0
.end method

.method public static synthetic access$100()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_ENTRY_SIZE:J

    return-wide v0
.end method

.method public static synthetic access$200()D
    .locals 2

    sget-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MIN_INFLATE_RATIO:D

    return-wide v0
.end method

.method public static addThreshold(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;
    .locals 2

    instance-of v0, p0, Ljava/util/zip/InflaterInputStream;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/util/ZipSecureFile$1;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;)V

    return-object v1
.end method

.method public static getMaxEntrySize()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_ENTRY_SIZE:J

    return-wide v0
.end method

.method public static getMaxTextSize()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_TEXT_SIZE:J

    return-wide v0
.end method

.method public static getMinInflateRatio()D
    .locals 2

    sget-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MIN_INFLATE_RATIO:D

    return-wide v0
.end method

.method public static setMaxEntrySize(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    sput-wide p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_ENTRY_SIZE:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max entry size is bounded [0-4GB], but had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setMaxTextSize(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    sput-wide p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_TEXT_SIZE:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max text size is bounded [0-4GB], but had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setMinInflateRatio(D)V
    .locals 0

    sput-wide p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MIN_INFLATE_RATIO:D

    return-void
.end method


# virtual methods
.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 0

    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->addThreshold(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;

    move-result-object p1

    return-object p1
.end method
