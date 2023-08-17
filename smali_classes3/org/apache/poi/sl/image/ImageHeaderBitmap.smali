.class public Lorg/apache/poi/sl/image/ImageHeaderBitmap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final size:Lorg/apache/poi/java/awt/Dimension;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/sl/image/ImageHeaderBitmap;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/image/ImageHeaderBitmap;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    array-length v1, p1

    sub-int/2addr v1, p2

    invoke-direct {v0, p1, p2, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-static {v0}, Lorg/apache/poi/javax/imageio/ImageIO;->read(Ljava/io/InputStream;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lorg/apache/poi/sl/image/ImageHeaderBitmap;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v0, 0x5

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Can\'t determine image dimensions"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/poi/java/awt/Dimension;

    const/16 p2, 0xc8

    invoke-direct {p1, p2, p2}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    goto :goto_1

    :cond_0
    new-instance p2, Lorg/apache/poi/java/awt/Dimension;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getWidth()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/util/Units;->pixelToPoints(I)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getHeight()I

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/util/Units;->pixelToPoints(I)D

    move-result-wide v1

    double-to-int p1, v1

    invoke-direct {p2, v0, p1}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    move-object p1, p2

    :goto_1
    iput-object p1, p0, Lorg/apache/poi/sl/image/ImageHeaderBitmap;->size:Lorg/apache/poi/java/awt/Dimension;

    return-void
.end method


# virtual methods
.method public getSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/image/ImageHeaderBitmap;->size:Lorg/apache/poi/java/awt/Dimension;

    return-object v0
.end method
