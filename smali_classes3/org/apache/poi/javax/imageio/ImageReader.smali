.class public abstract Lorg/apache/poi/javax/imageio/ImageReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private abortFlag:Z

.field public availableLocales:[Ljava/util/Locale;

.field public ignoreMetadata:Z

.field public input:Ljava/lang/Object;

.field public locale:Ljava/util/Locale;

.field public minIndex:I

.field public originatingProvider:Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;

.field public progressListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field public seekForwardOnly:Z

.field public updateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/javax/imageio/event/IIOReadUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field public warningListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/javax/imageio/event/IIOReadWarningListener;",
            ">;"
        }
    .end annotation
.end field

.field public warningLocales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->input:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/javax/imageio/ImageReader;->seekForwardOnly:Z

    iput-boolean v1, p0, Lorg/apache/poi/javax/imageio/ImageReader;->ignoreMetadata:Z

    iput v1, p0, Lorg/apache/poi/javax/imageio/ImageReader;->minIndex:I

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->availableLocales:[Ljava/util/Locale;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->warningLocales:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    iput-boolean v1, p0, Lorg/apache/poi/javax/imageio/ImageReader;->abortFlag:Z

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageReader;->originatingProvider:Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;

    return-void
.end method

.method public static addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static checkReadParamBandSettings(Lorg/apache/poi/javax/imageio/ImageReadParam;II)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceBands()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReadParam;->getDestinationBands()[I

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez v0, :cond_1

    move v1, p1

    goto :goto_1

    :cond_1
    array-length v1, v0

    :goto_1
    if-nez p0, :cond_2

    move v2, p2

    goto :goto_2

    :cond_2
    array-length v2, p0

    :goto_2
    if-ne v1, v2, :cond_7

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move v2, v1

    :goto_3
    array-length v3, v0

    if-ge v2, v3, :cond_4

    aget v3, v0, v2

    if-ge v3, p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ImageReadParam source bands contains a value >= the number of source bands!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-eqz p0, :cond_6

    :goto_4
    array-length p1, p0

    if-ge v1, p1, :cond_6

    aget p1, p0, v1

    if-ge p1, p2, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ImageReadParam dest bands contains a value >= the number of dest bands!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ImageReadParam num source & dest bands differ!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static computeRegions(Lorg/apache/poi/javax/imageio/ImageReadParam;IILorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Rectangle;)V
    .locals 5

    if-eqz p4, :cond_9

    if-eqz p5, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p4, v0, v0, p1, p2}, Lorg/apache/poi/java/awt/Rectangle;->setBounds(IIII)V

    invoke-virtual {p5, v0, v0, p1, p2}, Lorg/apache/poi/java/awt/Rectangle;->setBounds(IIII)V

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceRegion()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p4, p2}, Lorg/apache/poi/java/awt/Rectangle;->intersection(Lorg/apache/poi/java/awt/Rectangle;)Lorg/apache/poi/java/awt/Rectangle;

    move-result-object p2

    invoke-virtual {p4, p2}, Lorg/apache/poi/java/awt/Rectangle;->setBounds(Lorg/apache/poi/java/awt/Rectangle;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result p2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/IIOParam;->getSubsamplingXOffset()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/IIOParam;->getSubsamplingYOffset()I

    move-result v3

    invoke-virtual {p4, v2, v3}, Lorg/apache/poi/java/awt/Rectangle;->translate(II)V

    iget v4, p4, Lorg/apache/poi/java/awt/Rectangle;->width:I

    sub-int/2addr v4, v2

    iput v4, p4, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v2, p4, Lorg/apache/poi/java/awt/Rectangle;->height:I

    sub-int/2addr v2, v3

    iput v2, p4, Lorg/apache/poi/java/awt/Rectangle;->height:I

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/IIOParam;->getDestinationOffset()Lorg/apache/poi/java/awt/Point;

    move-result-object p0

    invoke-virtual {p5, p0}, Lorg/apache/poi/java/awt/Rectangle;->setLocation(Lorg/apache/poi/java/awt/Point;)V

    goto :goto_0

    :cond_1
    move p2, p1

    move v1, p2

    :goto_0
    iget p0, p5, Lorg/apache/poi/java/awt/Rectangle;->x:I

    if-gez p0, :cond_2

    neg-int p0, p0

    mul-int/2addr p0, p2

    iget v2, p4, Lorg/apache/poi/java/awt/Rectangle;->x:I

    add-int/2addr v2, p0

    iput v2, p4, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v2, p4, Lorg/apache/poi/java/awt/Rectangle;->width:I

    sub-int/2addr v2, p0

    iput v2, p4, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iput v0, p5, Lorg/apache/poi/java/awt/Rectangle;->x:I

    :cond_2
    iget p0, p5, Lorg/apache/poi/java/awt/Rectangle;->y:I

    if-gez p0, :cond_3

    neg-int p0, p0

    mul-int/2addr p0, v1

    iget v2, p4, Lorg/apache/poi/java/awt/Rectangle;->y:I

    add-int/2addr v2, p0

    iput v2, p4, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v2, p4, Lorg/apache/poi/java/awt/Rectangle;->height:I

    sub-int/2addr v2, p0

    iput v2, p4, Lorg/apache/poi/java/awt/Rectangle;->height:I

    iput v0, p5, Lorg/apache/poi/java/awt/Rectangle;->y:I

    :cond_3
    iget p0, p4, Lorg/apache/poi/java/awt/Rectangle;->width:I

    add-int/2addr p0, p2

    sub-int/2addr p0, p1

    div-int/2addr p0, p2

    iget v2, p4, Lorg/apache/poi/java/awt/Rectangle;->height:I

    add-int/2addr v2, v1

    sub-int/2addr v2, p1

    div-int/2addr v2, v1

    iput p0, p5, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iput v2, p5, Lorg/apache/poi/java/awt/Rectangle;->height:I

    if-eqz p3, :cond_6

    new-instance p1, Lorg/apache/poi/java/awt/Rectangle;

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/image/BufferedImage;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/image/BufferedImage;->getHeight()I

    move-result v4

    invoke-direct {p1, v0, v0, v3, v4}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p5, p1}, Lorg/apache/poi/java/awt/Rectangle;->intersection(Lorg/apache/poi/java/awt/Rectangle;)Lorg/apache/poi/java/awt/Rectangle;

    move-result-object p1

    invoke-virtual {p5, p1}, Lorg/apache/poi/java/awt/Rectangle;->setBounds(Lorg/apache/poi/java/awt/Rectangle;)V

    invoke-virtual {p5}, Lorg/apache/poi/java/awt/Rectangle;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, p5, Lorg/apache/poi/java/awt/Rectangle;->x:I

    add-int/2addr p1, p0

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/image/BufferedImage;->getWidth()I

    move-result p0

    sub-int/2addr p1, p0

    if-lez p1, :cond_4

    iget p0, p4, Lorg/apache/poi/java/awt/Rectangle;->width:I

    mul-int/2addr p1, p2

    sub-int/2addr p0, p1

    iput p0, p4, Lorg/apache/poi/java/awt/Rectangle;->width:I

    :cond_4
    iget p0, p5, Lorg/apache/poi/java/awt/Rectangle;->y:I

    add-int/2addr p0, v2

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/image/BufferedImage;->getHeight()I

    move-result p1

    sub-int/2addr p0, p1

    if-lez p0, :cond_6

    iget p1, p4, Lorg/apache/poi/java/awt/Rectangle;->height:I

    mul-int/2addr p0, v1

    sub-int/2addr p1, p0

    iput p1, p4, Lorg/apache/poi/java/awt/Rectangle;->height:I

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty destination region!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    invoke-virtual {p4}, Lorg/apache/poi/java/awt/Rectangle;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {p5}, Lorg/apache/poi/java/awt/Rectangle;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty region!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "destRegion == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "srcRegion == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDestination(Lorg/apache/poi/javax/imageio/ImageReadParam;Ljava/util/Iterator;II)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/javax/imageio/ImageReadParam;",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;",
            ">;II)",
            "Lorg/apache/poi/java/awt/image/BufferedImage;"
        }
    .end annotation

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    int-to-long v0, p2

    int-to-long v2, p3

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReadParam;->getDestination()Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/IIOParam;->getDestinationType()Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-ImageTypeSpecifier retrieved from imageTypes!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    invoke-virtual {v2, v0}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    move p1, v1

    :goto_0
    if-eqz p1, :cond_5

    :goto_1
    new-instance v6, Lorg/apache/poi/java/awt/Rectangle;

    invoke-direct {v6, v1, v1, v1, v1}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    new-instance p1, Lorg/apache/poi/java/awt/Rectangle;

    invoke-direct {p1, v1, v1, v1, v1}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    const/4 v5, 0x0

    move-object v2, p0

    move v3, p2

    move v4, p3

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lorg/apache/poi/javax/imageio/ImageReader;->computeRegions(Lorg/apache/poi/javax/imageio/ImageReadParam;IILorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Rectangle;)V

    iget p0, p1, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget p2, p1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    add-int/2addr p0, p2

    iget p2, p1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget p1, p1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    add-int/2addr p2, p1

    invoke-virtual {v0, p0, p2}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createBufferedImage(II)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string p1, "Destination type from ImageReadParam does not match!"

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "width*height > Integer.MAX_VALUE!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "imageTypes null or empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getMetadata(Ljava/lang/String;Ljava/util/Set;ZI)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->getStreamMetadata()Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/poi/javax/imageio/ImageReader;->getImageMetadata(I)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->isStandardMetadataFormatSupported()Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "javax_imageio_1.0"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getNativeMetadataFormatName()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-object p2

    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getExtraMetadataFormatNames()[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    const/4 p4, 0x0

    :goto_1
    array-length v0, p3

    if-ge p4, v0, :cond_4

    aget-object v0, p3, p4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p2

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "nodeNames == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "formatName == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getSourceRegion(Lorg/apache/poi/javax/imageio/ImageReadParam;II)Lorg/apache/poi/java/awt/Rectangle;
    .locals 2

    new-instance v0, Lorg/apache/poi/java/awt/Rectangle;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceRegion()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Rectangle;->intersection(Lorg/apache/poi/java/awt/Rectangle;)Lorg/apache/poi/java/awt/Rectangle;

    move-result-object p1

    move-object v0, p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/IIOParam;->getSubsamplingXOffset()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/IIOParam;->getSubsamplingYOffset()I

    move-result p0

    iget p2, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    add-int/2addr p2, p1

    iput p2, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget p2, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    add-int/2addr p2, p0

    iput p2, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget p2, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    sub-int/2addr p2, p1

    iput p2, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget p1, v0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    sub-int/2addr p1, p0

    iput p1, v0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    :cond_1
    return-object v0
.end method

.method public static removeFromList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public declared-synchronized abort()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->abortFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized abortRequested()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->abortFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addIIOReadProgressListener(Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    return-void
.end method

.method public addIIOReadUpdateListener(Lorg/apache/poi/javax/imageio/event/IIOReadUpdateListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    return-void
.end method

.method public addIIOReadWarningListener(Lorg/apache/poi/javax/imageio/event/IIOReadWarningListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    iget-object p1, p0, Lorg/apache/poi/javax/imageio/ImageReader;->warningLocales:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageReader;->warningLocales:Ljava/util/List;

    return-void
.end method

.method public canReadRaster()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized clearAbortRequest()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->abortFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getAspectRatio(I)F
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->getWidth(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->getHeight(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method

.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->availableLocales:[Ljava/util/Locale;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, [Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale;

    return-object v0
.end method

.method public getDefaultReadParam()Lorg/apache/poi/javax/imageio/ImageReadParam;
    .locals 1

    new-instance v0, Lorg/apache/poi/javax/imageio/ImageReadParam;

    invoke-direct {v0}, Lorg/apache/poi/javax/imageio/ImageReadParam;-><init>()V

    return-object v0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->originatingProvider:Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->getFormatNames()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public abstract getHeight(I)I
.end method

.method public abstract getImageMetadata(I)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
.end method

.method public getImageMetadata(ILjava/lang/String;Ljava/util/Set;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->getMetadata(Ljava/lang/String;Ljava/util/Set;ZI)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    move-result-object p1

    return-object p1
.end method

.method public abstract getImageTypes(I)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;",
            ">;"
        }
    .end annotation
.end method

.method public getInput()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->input:Ljava/lang/Object;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMinIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->minIndex:I

    return v0
.end method

.method public abstract getNumImages(Z)I
.end method

.method public getNumThumbnails(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getOriginatingProvider()Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->originatingProvider:Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;

    return-object v0
.end method

.method public getRawImageType(I)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->getImageTypes(I)Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    return-object p1
.end method

.method public abstract getStreamMetadata()Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
.end method

.method public getStreamMetadata(Ljava/lang/String;Ljava/util/Set;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/poi/javax/imageio/ImageReader;->getMetadata(Ljava/lang/String;Ljava/util/Set;ZI)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getThumbnailHeight(II)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/javax/imageio/ImageReader;->readThumbnail(II)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getHeight()I

    move-result p1

    return p1
.end method

.method public getThumbnailWidth(II)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/javax/imageio/ImageReader;->readThumbnail(II)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getWidth()I

    move-result p1

    return p1
.end method

.method public getTileGridXOffset(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getTileGridYOffset(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getTileHeight(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->getHeight(I)I

    move-result p1

    return p1
.end method

.method public getTileWidth(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->getWidth(I)I

    move-result p1

    return p1
.end method

.method public abstract getWidth(I)I
.end method

.method public hasThumbnails(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->getNumThumbnails(I)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isIgnoringMetadata()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->ignoreMetadata:Z

    return v0
.end method

.method public isImageTiled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isRandomAccessEasy(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isSeekForwardOnly()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->seekForwardOnly:Z

    return v0
.end method

.method public processImageComplete()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;

    invoke-interface {v2, p0}, Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;->imageComplete(Lorg/apache/poi/javax/imageio/ImageReader;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processImageProgress(F)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;

    invoke-interface {v2, p0, p1}, Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;->imageProgress(Lorg/apache/poi/javax/imageio/ImageReader;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processImageStarted(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;

    invoke-interface {v2, p0, p1}, Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;->imageStarted(Lorg/apache/poi/javax/imageio/ImageReader;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processImageUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V
    .locals 13

    move-object v10, p0

    iget-object v0, v10, Lorg/apache/poi/javax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    const/4 v0, 0x0

    move v12, v0

    :goto_0
    if-ge v12, v11, :cond_1

    iget-object v0, v10, Lorg/apache/poi/javax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/imageio/event/IIOReadUpdateListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/event/IIOReadUpdateListener;->imageUpdate(Lorg/apache/poi/javax/imageio/ImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processPassComplete(Lorg/apache/poi/java/awt/image/BufferedImage;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/event/IIOReadUpdateListener;

    invoke-interface {v2, p0, p1}, Lorg/apache/poi/javax/imageio/event/IIOReadUpdateListener;->passComplete(Lorg/apache/poi/javax/imageio/ImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processPassStarted(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIIII[I)V
    .locals 14

    move-object v11, p0

    iget-object v0, v11, Lorg/apache/poi/javax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    const/4 v0, 0x0

    move v13, v0

    :goto_0
    if-ge v13, v12, :cond_1

    iget-object v0, v11, Lorg/apache/poi/javax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/imageio/event/IIOReadUpdateListener;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v0 .. v10}, Lorg/apache/poi/javax/imageio/event/IIOReadUpdateListener;->passStarted(Lorg/apache/poi/javax/imageio/ImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;IIIIIII[I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processReadAborted()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;

    invoke-interface {v2, p0}, Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;->readAborted(Lorg/apache/poi/javax/imageio/ImageReader;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processSequenceComplete()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;

    invoke-interface {v2, p0}, Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;->sequenceComplete(Lorg/apache/poi/javax/imageio/ImageReader;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processSequenceStarted(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;

    invoke-interface {v2, p0, p1}, Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;->sequenceStarted(Lorg/apache/poi/javax/imageio/ImageReader;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processThumbnailComplete()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;

    invoke-interface {v2, p0}, Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;->thumbnailComplete(Lorg/apache/poi/javax/imageio/ImageReader;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processThumbnailPassComplete(Lorg/apache/poi/java/awt/image/BufferedImage;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/event/IIOReadUpdateListener;

    invoke-interface {v2, p0, p1}, Lorg/apache/poi/javax/imageio/event/IIOReadUpdateListener;->thumbnailPassComplete(Lorg/apache/poi/javax/imageio/ImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processThumbnailPassStarted(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIIII[I)V
    .locals 14

    move-object v11, p0

    iget-object v0, v11, Lorg/apache/poi/javax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    const/4 v0, 0x0

    move v13, v0

    :goto_0
    if-ge v13, v12, :cond_1

    iget-object v0, v11, Lorg/apache/poi/javax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/imageio/event/IIOReadUpdateListener;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v0 .. v10}, Lorg/apache/poi/javax/imageio/event/IIOReadUpdateListener;->thumbnailPassStarted(Lorg/apache/poi/javax/imageio/ImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;IIIIIII[I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processThumbnailProgress(F)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;

    invoke-interface {v2, p0, p1}, Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;->thumbnailProgress(Lorg/apache/poi/javax/imageio/ImageReader;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processThumbnailStarted(II)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;

    invoke-interface {v2, p0, p1, p2}, Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;->thumbnailStarted(Lorg/apache/poi/javax/imageio/ImageReader;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processThumbnailUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V
    .locals 13

    move-object v10, p0

    iget-object v0, v10, Lorg/apache/poi/javax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    const/4 v0, 0x0

    move v12, v0

    :goto_0
    if-ge v12, v11, :cond_1

    iget-object v0, v10, Lorg/apache/poi/javax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/imageio/event/IIOReadUpdateListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/event/IIOReadUpdateListener;->thumbnailUpdate(Lorg/apache/poi/javax/imageio/ImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processWarningOccurred(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/event/IIOReadWarningListener;

    invoke-interface {v2, p0, p1}, Lorg/apache/poi/javax/imageio/event/IIOReadWarningListener;->warningOccurred(Lorg/apache/poi/javax/imageio/ImageReader;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "warning == null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processWarningOccurred(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/event/IIOReadWarningListener;

    iget-object v3, p0, Lorg/apache/poi/javax/imageio/ImageReader;->warningLocales:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    :cond_1
    new-instance v4, Lorg/apache/poi/javax/imageio/ImageReader$1;

    invoke-direct {v4, p0}, Lorg/apache/poi/javax/imageio/ImageReader$1;-><init>(Lorg/apache/poi/javax/imageio/ImageReader;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ClassLoader;

    :try_start_0
    invoke-static {p1, v3, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :try_start_1
    invoke-static {p1, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v3
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    invoke-virtual {v3, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-interface {v2, p0, v3}, Lorg/apache/poi/javax/imageio/event/IIOReadWarningListener;->warningOccurred(Lorg/apache/poi/javax/imageio/ImageReader;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Resource is missing!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Resource is not a String!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bundle not found!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "keyword == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "baseName == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(I)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->read(ILorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public abstract read(ILorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/java/awt/image/BufferedImage;
.end method

.method public readAll(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Lorg/apache/poi/javax/imageio/ImageReadParam;",
            ">;)",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/javax/imageio/IIOImage;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->getMinIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/javax/imageio/ImageReader;->processSequenceStarted(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v4, v3, Lorg/apache/poi/javax/imageio/ImageReadParam;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/apache/poi/javax/imageio/ImageReadParam;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-ImageReadParam supplied as part of params!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move-object v3, v2

    :goto_1
    :try_start_0
    invoke-virtual {p0, v1, v3}, Lorg/apache/poi/javax/imageio/ImageReader;->read(ILorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v1}, Lorg/apache/poi/javax/imageio/ImageReader;->getNumThumbnails(I)I

    move-result v4

    if-lez v4, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_2

    invoke-virtual {p0, v1, v5}, Lorg/apache/poi/javax/imageio/ImageReader;->readThumbnail(II)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/poi/javax/imageio/ImageReader;->getImageMetadata(I)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/javax/imageio/IIOImage;

    invoke-direct {v5, v3, v2, v4}, Lorg/apache/poi/javax/imageio/IIOImage;-><init>(Lorg/apache/poi/java/awt/image/RenderedImage;Ljava/util/List;Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->processSequenceComplete()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public readAll(ILorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/javax/imageio/IIOImage;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->getMinIndex()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/javax/imageio/ImageReader;->read(ILorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->getNumThumbnails(I)I

    move-result v1

    if-lez v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, p1, v2}, Lorg/apache/poi/javax/imageio/ImageReader;->readThumbnail(II)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->getImageMetadata(I)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    move-result-object p1

    new-instance v1, Lorg/apache/poi/javax/imageio/IIOImage;

    invoke-direct {v1, p2, v0, p1}, Lorg/apache/poi/javax/imageio/IIOImage;-><init>(Lorg/apache/poi/java/awt/image/RenderedImage;Ljava/util/List;Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;)V

    return-object v1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "imageIndex < getMinIndex()!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readAsRenderedImage(ILorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/java/awt/image/RenderedImage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/javax/imageio/ImageReader;->read(ILorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public readRaster(ILorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/java/awt/image/Raster;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "readRaster not supported!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readThumbnail(II)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Thumbnails not supported!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readTile(III)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->read(I)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid tile indices"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readTileRaster(III)Lorg/apache/poi/java/awt/image/Raster;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->canReadRaster()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/javax/imageio/ImageReader;->readRaster(ILorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/java/awt/image/Raster;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid tile indices"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "readTileRaster not supported!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readerSupportsThumbnails()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeAllIIOReadProgressListeners()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    return-void
.end method

.method public removeAllIIOReadUpdateListeners()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    return-void
.end method

.method public removeAllIIOReadWarningListeners()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->warningLocales:Ljava/util/List;

    return-void
.end method

.method public removeIIOReadProgressListener(Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->removeFromList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    :cond_1
    :goto_0
    return-void
.end method

.method public removeIIOReadUpdateListener(Lorg/apache/poi/javax/imageio/event/IIOReadUpdateListener;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->removeFromList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    :cond_1
    :goto_0
    return-void
.end method

.method public removeIIOReadWarningListener(Lorg/apache/poi/javax/imageio/event/IIOReadWarningListener;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->warningLocales:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/poi/javax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageReader;->warningLocales:Ljava/util/List;

    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/apache/poi/javax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->removeAllIIOReadUpdateListeners()V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->removeAllIIOReadProgressListeners()V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->removeAllIIOReadWarningListeners()V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->clearAbortRequest()V

    return-void
.end method

.method public setInput(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public setInput(Ljava/lang/Object;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public setInput(Ljava/lang/Object;ZZ)V
    .locals 5

    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->originatingProvider:Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;->getInputTypes()[Ljava/lang/Class;

    move-result-object v0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iput-boolean p2, p0, Lorg/apache/poi/javax/imageio/ImageReader;->seekForwardOnly:Z

    iput-boolean p3, p0, Lorg/apache/poi/javax/imageio/ImageReader;->ignoreMetadata:Z

    iput v2, p0, Lorg/apache/poi/javax/imageio/ImageReader;->minIndex:I

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Incorrect input type!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageReader;->input:Ljava/lang/Object;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid locale!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageReader;->locale:Ljava/util/Locale;

    return-void
.end method
