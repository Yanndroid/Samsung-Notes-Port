.class public Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Indexed;,
        Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Grayscale;,
        Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;,
        Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;,
        Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Packed;
    }
.end annotation


# static fields
.field private static BISpecifier:[Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

.field private static sRGB:Lorg/apache/poi/java/awt/color/ColorSpace;


# instance fields
.field public colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

.field public sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e8

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sRGB:Lorg/apache/poi/java/awt/color/ColorSpace;

    const/16 v0, 0xe

    new-array v0, v0, [Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    sput-object v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->BISpecifier:[Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/SampleModel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lorg/apache/poi/java/awt/image/ColorModel;->isCompatibleSampleModel(Lorg/apache/poi/java/awt/image/SampleModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    iput-object p2, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sampleModel is incompatible with colorModel!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sampleModel == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "colorModel == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/image/RenderedImage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-interface {p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "image == null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;-><init>()V

    return-void
.end method

.method public static createBanded(Lorg/apache/poi/java/awt/color/ColorSpace;[I[IIZZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
    .locals 8

    new-instance v7, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;-><init>(Lorg/apache/poi/java/awt/color/ColorSpace;[I[IIZZ)V

    return-object v7
.end method

.method public static createComponentCM(Lorg/apache/poi/java/awt/color/ColorSpace;IIZZ)Lorg/apache/poi/java/awt/image/ColorModel;
    .locals 8

    if-eqz p3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move v6, v0

    new-array v3, p1, [I

    invoke-static {p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataTypeSize(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    aput v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/apache/poi/java/awt/image/ComponentColorModel;

    move-object v1, p1

    move-object v2, p0

    move v4, p3

    move v5, p4

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/java/awt/image/ComponentColorModel;-><init>(Lorg/apache/poi/java/awt/color/ColorSpace;[IZZII)V

    return-object p1
.end method

.method public static createFromBufferedImageType(I)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0xd

    if-gt p0, v0, :cond_0

    invoke-static {p0}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getSpecifier(I)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot create from TYPE_CUSTOM!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid BufferedImage type!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromRenderedImage(Lorg/apache/poi/java/awt/image/RenderedImage;)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/BufferedImage;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getSpecifier(I)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    invoke-direct {v0, p0}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;-><init>(Lorg/apache/poi/java/awt/image/RenderedImage;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "image == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createGrayscale(IIZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
    .locals 7

    new-instance v6, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Grayscale;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Grayscale;-><init>(IIZZZ)V

    return-object v6
.end method

.method public static createGrayscale(IIZZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
    .locals 7

    new-instance v6, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Grayscale;

    const/4 v4, 0x1

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Grayscale;-><init>(IIZZZ)V

    return-object v6
.end method

.method public static createIndexed([B[B[B[BII)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
    .locals 8

    new-instance v7, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Indexed;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Indexed;-><init>([B[B[B[BII)V

    return-object v7
.end method

.method public static createInterleaved(Lorg/apache/poi/java/awt/color/ColorSpace;[IIZZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
    .locals 7

    new-instance v6, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;-><init>(Lorg/apache/poi/java/awt/color/ColorSpace;[IIZZ)V

    return-object v6
.end method

.method public static createPacked(Lorg/apache/poi/java/awt/color/ColorSpace;IIIIIZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
    .locals 9

    new-instance v8, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Packed;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Packed;-><init>(Lorg/apache/poi/java/awt/color/ColorSpace;IIIIIZ)V

    return-object v8
.end method

.method private static createSpecifier(I)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid BufferedImage type!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/java/awt/image/BufferedImage;

    const/16 v0, 0xd

    invoke-direct {p0, v1, v1, v0}, Lorg/apache/poi/java/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/BufferedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/image/IndexColorModel;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getMapSize()I

    move-result v0

    new-array v1, v0, [B

    new-array v2, v0, [B

    new-array v3, v0, [B

    new-array v4, v0, [B

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getReds([B)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getGreens([B)V

    invoke-virtual {p0, v3}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getBlues([B)V

    invoke-virtual {p0, v4}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getAlphas([B)V

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createIndexed([B[B[B[BII)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {v1, v2, v2}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createGrayscale(IIZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/16 p0, 0x10

    invoke-static {p0, v1, v2}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createGrayscale(IIZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_3
    const/16 p0, 0x8

    invoke-static {p0, v2, v2}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createGrayscale(IIZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget-object v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sRGB:Lorg/apache/poi/java/awt/color/ColorSpace;

    const/16 v1, 0x7c00

    const/16 v2, 0x3e0

    const/16 v3, 0x1f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createPacked(Lorg/apache/poi/java/awt/color/ColorSpace;IIIIIZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sRGB:Lorg/apache/poi/java/awt/color/ColorSpace;

    const v1, 0xf800

    const/16 v2, 0x7e0

    const/16 v3, 0x1f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createPacked(Lorg/apache/poi/java/awt/color/ColorSpace;IIIIIZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sRGB:Lorg/apache/poi/java/awt/color/ColorSpace;

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p0, v0, v2, v1, v1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createInterleaved(Lorg/apache/poi/java/awt/color/ColorSpace;[IIZZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sRGB:Lorg/apache/poi/java/awt/color/ColorSpace;

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {p0, v0, v2, v1, v2}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createInterleaved(Lorg/apache/poi/java/awt/color/ColorSpace;[IIZZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_8
    sget-object p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sRGB:Lorg/apache/poi/java/awt/color/ColorSpace;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {p0, v0, v2, v2, v2}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createInterleaved(Lorg/apache/poi/java/awt/color/ColorSpace;[IIZZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_9
    sget-object v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sRGB:Lorg/apache/poi/java/awt/color/ColorSpace;

    const/16 v1, 0xff

    const v2, 0xff00

    const/high16 v3, 0xff0000

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createPacked(Lorg/apache/poi/java/awt/color/ColorSpace;IIIIIZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_a
    sget-object v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sRGB:Lorg/apache/poi/java/awt/color/ColorSpace;

    const/high16 v1, 0xff0000

    const v2, 0xff00

    const/16 v3, 0xff

    const/high16 v4, -0x1000000

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createPacked(Lorg/apache/poi/java/awt/color/ColorSpace;IIIIIZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_b
    sget-object v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sRGB:Lorg/apache/poi/java/awt/color/ColorSpace;

    const/high16 v1, 0xff0000

    const v2, 0xff00

    const/16 v3, 0xff

    const/high16 v4, -0x1000000

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createPacked(Lorg/apache/poi/java/awt/color/ColorSpace;IIIIIZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_c
    sget-object v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sRGB:Lorg/apache/poi/java/awt/color/ColorSpace;

    const/high16 v1, 0xff0000

    const v2, 0xff00

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createPacked(Lorg/apache/poi/java/awt/color/ColorSpace;IIIIIZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x1
        0x0
    .end array-data
.end method

.method private static getSpecifier(I)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
    .locals 2

    sget-object v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->BISpecifier:[Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    aget-object v1, v0, p0

    if-nez v1, :cond_0

    invoke-static {p0}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createSpecifier(I)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v1

    aput-object v1, v0, p0

    :cond_0
    sget-object v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->BISpecifier:[Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method public createBufferedImage(II)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getSampleModel(II)Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/java/awt/Point;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    invoke-static {p1, p2}, Lorg/apache/poi/java/awt/image/Raster;->createWritableRaster(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/java/awt/image/BufferedImage;

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v1

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    invoke-direct {p2, v0, p1, v1, v2}, Lorg/apache/poi/java/awt/image/BufferedImage;-><init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/WritableRaster;ZLjava/util/Hashtable;)V
    :try_end_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array size > Integer.MAX_VALUE!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    iget-object v2, p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/image/ColorModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    iget-object p1, p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getBitsPerBand(I)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getNumBands()I

    move-result v3

    if-lt p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    or-int/2addr v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize(I)I

    move-result p1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "band out of range!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBufferedImageType()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createBufferedImage(II)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/BufferedImage;->getType()I

    move-result v0

    return v0
.end method

.method public getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    return-object v0
.end method

.method public getNumBands()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result v0

    return v0
.end method

.method public getNumComponents()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->getNumComponents()I

    move-result v0

    return v0
.end method

.method public getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    return-object v0
.end method

.method public getSampleModel(II)Lorg/apache/poi/java/awt/image/SampleModel;
    .locals 4

    int-to-long v0, p1

    int-to-long v2, p2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/java/awt/image/SampleModel;->createCompatibleSampleModel(II)Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "width*height > Integer.MAX_VALUE!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xe

    add-int/2addr v0, v1

    return v0
.end method
