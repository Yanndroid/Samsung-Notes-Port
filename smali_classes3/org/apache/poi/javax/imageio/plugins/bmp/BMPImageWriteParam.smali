.class public Lorg/apache/poi/javax/imageio/plugins/bmp/BMPImageWriteParam;
.super Lorg/apache/poi/javax/imageio/ImageWriteParam;
.source "SourceFile"


# instance fields
.field private topDown:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/javax/imageio/plugins/bmp/BMPImageWriteParam;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/ImageWriteParam;-><init>(Ljava/util/Locale;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/javax/imageio/plugins/bmp/BMPImageWriteParam;->topDown:Z

    invoke-static {}, Lcom/sun/imageio/plugins/bmp/BMPCompressionTypes;->getCompressionTypes()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionTypes:[Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteCompressed:Z

    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionMode:I

    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isTopDown()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/plugins/bmp/BMPImageWriteParam;->topDown:Z

    return v0
.end method

.method public setTopDown(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/javax/imageio/plugins/bmp/BMPImageWriteParam;->topDown:Z

    return-void
.end method
