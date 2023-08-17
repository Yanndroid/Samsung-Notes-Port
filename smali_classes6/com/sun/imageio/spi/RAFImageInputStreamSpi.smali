.class public Lcom/sun/imageio/spi/RAFImageInputStreamSpi;
.super Lorg/apache/poi/javax/imageio/spi/ImageInputStreamSpi;
.source "SourceFile"


# static fields
.field private static final inputClass:Ljava/lang/Class;

.field private static final vendorName:Ljava/lang/String; = "Oracle Corporation"

.field private static final version:Ljava/lang/String; = "1.0"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/io/RandomAccessFile;

    sput-object v0, Lcom/sun/imageio/spi/RAFImageInputStreamSpi;->inputClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/sun/imageio/spi/RAFImageInputStreamSpi;->inputClass:Ljava/lang/Class;

    const-string v1, "Oracle Corporation"

    const-string v2, "1.0"

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/poi/javax/imageio/spi/ImageInputStreamSpi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createInputStreamInstance(Ljava/lang/Object;ZLjava/io/File;)Lorg/apache/poi/javax/imageio/stream/ImageInputStream;
    .locals 0

    instance-of p2, p1, Ljava/io/RandomAccessFile;

    if-eqz p2, :cond_0

    :try_start_0
    new-instance p2, Lorg/apache/poi/javax/imageio/stream/FileImageInputStream;

    check-cast p1, Ljava/io/RandomAccessFile;

    invoke-direct {p2, p1}, Lorg/apache/poi/javax/imageio/stream/FileImageInputStream;-><init>(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input not a RandomAccessFile!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p1, "Service provider that instantiates a FileImageInputStream from a RandomAccessFile"

    return-object p1
.end method
