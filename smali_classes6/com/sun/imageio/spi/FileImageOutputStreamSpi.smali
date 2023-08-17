.class public Lcom/sun/imageio/spi/FileImageOutputStreamSpi;
.super Lorg/apache/poi/javax/imageio/spi/ImageOutputStreamSpi;
.source "SourceFile"


# static fields
.field private static final outputClass:Ljava/lang/Class;

.field private static final vendorName:Ljava/lang/String; = "Oracle Corporation"

.field private static final version:Ljava/lang/String; = "1.0"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/io/File;

    sput-object v0, Lcom/sun/imageio/spi/FileImageOutputStreamSpi;->outputClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/sun/imageio/spi/FileImageOutputStreamSpi;->outputClass:Ljava/lang/Class;

    const-string v1, "Oracle Corporation"

    const-string v2, "1.0"

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/poi/javax/imageio/spi/ImageOutputStreamSpi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createOutputStreamInstance(Ljava/lang/Object;ZLjava/io/File;)Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;
    .locals 0

    instance-of p2, p1, Ljava/io/File;

    if-eqz p2, :cond_0

    :try_start_0
    new-instance p2, Lorg/apache/poi/javax/imageio/stream/FileImageOutputStream;

    check-cast p1, Ljava/io/File;

    invoke-direct {p2, p1}, Lorg/apache/poi/javax/imageio/stream/FileImageOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p1, "Service provider that instantiates a FileImageOutputStream from a File"

    return-object p1
.end method
