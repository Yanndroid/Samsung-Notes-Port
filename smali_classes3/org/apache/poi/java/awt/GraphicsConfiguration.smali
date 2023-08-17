.class public abstract Lorg/apache/poi/java/awt/GraphicsConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/GraphicsConfiguration$DefaultBufferCapabilities;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static defaultBufferCaps:Lorg/apache/poi/java/awt/BufferCapabilities;

.field private static defaultImageCaps:Lorg/apache/poi/java/awt/ImageCapabilities;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCompatibleImage(II)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/java/awt/image/ColorModel;->createCompatibleWritableRaster(II)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p2, v0, p1, v1, v2}, Lorg/apache/poi/java/awt/image/BufferedImage;-><init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object p2
.end method

.method public createCompatibleImage(III)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->getTransparency()I

    move-result v0

    if-ne v0, p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->createCompatibleImage(II)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p3}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getColorModel(I)Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/java/awt/image/ColorModel;->createCompatibleWritableRaster(II)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result p3

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, p3, v1}, Lorg/apache/poi/java/awt/image/BufferedImage;-><init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown transparency: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createCompatibleVolatileImage(II)Lorg/apache/poi/java/awt/image/VolatileImage;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->createCompatibleVolatileImage(IILorg/apache/poi/java/awt/ImageCapabilities;I)Lorg/apache/poi/java/awt/image/VolatileImage;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/poi/java/awt/AWTException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method public createCompatibleVolatileImage(III)Lorg/apache/poi/java/awt/image/VolatileImage;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->createCompatibleVolatileImage(IILorg/apache/poi/java/awt/ImageCapabilities;I)Lorg/apache/poi/java/awt/image/VolatileImage;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/java/awt/AWTException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public createCompatibleVolatileImage(IILorg/apache/poi/java/awt/ImageCapabilities;)Lorg/apache/poi/java/awt/image/VolatileImage;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->createCompatibleVolatileImage(IILorg/apache/poi/java/awt/ImageCapabilities;I)Lorg/apache/poi/java/awt/image/VolatileImage;

    move-result-object p1

    return-object p1
.end method

.method public createCompatibleVolatileImage(IILorg/apache/poi/java/awt/ImageCapabilities;I)Lorg/apache/poi/java/awt/image/VolatileImage;
    .locals 7

    new-instance v6, Lorg/apache/poi/sun/awt/image/SunVolatileImage;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/sun/awt/image/SunVolatileImage;-><init>(Lorg/apache/poi/java/awt/GraphicsConfiguration;IIILorg/apache/poi/java/awt/ImageCapabilities;)V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/ImageCapabilities;->isAccelerated()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/image/VolatileImage;->getCapabilities()Lorg/apache/poi/java/awt/ImageCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/ImageCapabilities;->isAccelerated()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/AWTException;

    const-string p2, "Supplied image capabilities could not be met by this graphics configuration."

    invoke-direct {p1, p2}, Lorg/apache/poi/java/awt/AWTException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object v6
.end method

.method public abstract getBounds()Lorg/apache/poi/java/awt/Rectangle;
.end method

.method public getBufferCapabilities()Lorg/apache/poi/java/awt/BufferCapabilities;
    .locals 2

    sget-object v0, Lorg/apache/poi/java/awt/GraphicsConfiguration;->defaultBufferCaps:Lorg/apache/poi/java/awt/BufferCapabilities;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/GraphicsConfiguration$DefaultBufferCapabilities;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getImageCapabilities()Lorg/apache/poi/java/awt/ImageCapabilities;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/GraphicsConfiguration$DefaultBufferCapabilities;-><init>(Lorg/apache/poi/java/awt/ImageCapabilities;)V

    sput-object v0, Lorg/apache/poi/java/awt/GraphicsConfiguration;->defaultBufferCaps:Lorg/apache/poi/java/awt/BufferCapabilities;

    :cond_0
    sget-object v0, Lorg/apache/poi/java/awt/GraphicsConfiguration;->defaultBufferCaps:Lorg/apache/poi/java/awt/BufferCapabilities;

    return-object v0
.end method

.method public abstract getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;
.end method

.method public abstract getColorModel(I)Lorg/apache/poi/java/awt/image/ColorModel;
.end method

.method public abstract getDefaultTransform()Lorg/apache/poi/java/awt/geom/AffineTransform;
.end method

.method public abstract getDevice()Lorg/apache/poi/java/awt/GraphicsDevice;
.end method

.method public getImageCapabilities()Lorg/apache/poi/java/awt/ImageCapabilities;
    .locals 2

    sget-object v0, Lorg/apache/poi/java/awt/GraphicsConfiguration;->defaultImageCaps:Lorg/apache/poi/java/awt/ImageCapabilities;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/ImageCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/ImageCapabilities;-><init>(Z)V

    sput-object v0, Lorg/apache/poi/java/awt/GraphicsConfiguration;->defaultImageCaps:Lorg/apache/poi/java/awt/ImageCapabilities;

    :cond_0
    sget-object v0, Lorg/apache/poi/java/awt/GraphicsConfiguration;->defaultImageCaps:Lorg/apache/poi/java/awt/ImageCapabilities;

    return-object v0
.end method

.method public abstract getNormalizingTransform()Lorg/apache/poi/java/awt/geom/AffineTransform;
.end method

.method public isTranslucencyCapable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
