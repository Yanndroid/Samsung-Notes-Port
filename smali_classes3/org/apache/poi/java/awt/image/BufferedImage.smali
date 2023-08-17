.class public Lorg/apache/poi/java/awt/image/BufferedImage;
.super Lorg/apache/poi/java/awt/Image;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/image/WritableRenderedImage;
.implements Lorg/apache/poi/java/awt/Transparency;


# static fields
.field private static final DCM_555_BLU_MASK:I = 0x1f

.field private static final DCM_555_GRN_MASK:I = 0x3e0

.field private static final DCM_555_RED_MASK:I = 0x7c00

.field private static final DCM_565_BLU_MASK:I = 0x1f

.field private static final DCM_565_GRN_MASK:I = 0x7e0

.field private static final DCM_565_RED_MASK:I = 0xf800

.field private static final DCM_ALPHA_MASK:I = -0x1000000

.field private static final DCM_BGR_BLU_MASK:I = 0xff0000

.field private static final DCM_BGR_GRN_MASK:I = 0xff00

.field private static final DCM_BGR_RED_MASK:I = 0xff

.field private static final DCM_BLUE_MASK:I = 0xff

.field private static final DCM_GREEN_MASK:I = 0xff00

.field private static final DCM_RED_MASK:I = 0xff0000

.field public static final TYPE_3BYTE_BGR:I = 0x5

.field public static final TYPE_4BYTE_ABGR:I = 0x6

.field public static final TYPE_4BYTE_ABGR_PRE:I = 0x7

.field public static final TYPE_BYTE_BINARY:I = 0xc

.field public static final TYPE_BYTE_GRAY:I = 0xa

.field public static final TYPE_BYTE_INDEXED:I = 0xd

.field public static final TYPE_CUSTOM:I = 0x0

.field public static final TYPE_INT_ARGB:I = 0x2

.field public static final TYPE_INT_ARGB_PRE:I = 0x3

.field public static final TYPE_INT_BGR:I = 0x4

.field public static final TYPE_INT_RGB:I = 0x1

.field public static final TYPE_USHORT_555_RGB:I = 0x9

.field public static final TYPE_USHORT_565_RGB:I = 0x8

.field public static final TYPE_USHORT_GRAY:I = 0xb


# instance fields
.field public colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

.field public imageType:I

.field public isAlphaPremultiplied:Z

.field public osis:Lorg/apache/poi/sun/awt/image/OffScreenImageSource;

.field public properties:Ljava/util/Hashtable;

.field public raster:Lorg/apache/poi/java/awt/image/WritableRaster;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->loadLibraries()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v8, p3

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/java/awt/Image;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lorg/apache/poi/java/awt/image/BufferedImage;->imageType:I

    const/16 v4, 0x3eb

    const/16 v5, 0x1f

    const/16 v6, 0x10

    const/16 v7, 0x3e8

    const/4 v9, 0x1

    const/4 v10, 0x4

    packed-switch v8, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown image type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/16 v4, 0x100

    new-array v13, v4, [I

    move v5, v1

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_2

    move v7, v1

    :goto_1
    if-ge v7, v4, :cond_1

    move v10, v1

    :goto_2
    if-ge v10, v4, :cond_0

    add-int/lit8 v11, v6, 0x1

    shl-int/lit8 v12, v5, 0x10

    shl-int/lit8 v14, v7, 0x8

    or-int/2addr v12, v14

    or-int/2addr v12, v10

    aput v12, v13, v6

    add-int/lit8 v10, v10, 0x33

    move v6, v11

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x33

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x33

    goto :goto_0

    :cond_2
    rsub-int v5, v6, 0x100

    div-int v5, v4, v5

    mul-int/lit8 v7, v5, 0x3

    :goto_3
    if-ge v6, v4, :cond_3

    shl-int/lit8 v10, v7, 0x10

    shl-int/lit8 v11, v7, 0x8

    or-int/2addr v10, v11

    or-int/2addr v10, v7

    aput v10, v13, v6

    add-int/2addr v7, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    new-instance v4, Lorg/apache/poi/java/awt/image/IndexColorModel;

    const/16 v11, 0x8

    const/16 v12, 0x100

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    move-object v10, v4

    invoke-direct/range {v10 .. v17}, Lorg/apache/poi/java/awt/image/IndexColorModel;-><init>(II[IIZII)V

    iput-object v4, v0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v9, v4}, Lorg/apache/poi/java/awt/image/Raster;->createInterleavedRaster(IIIILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_1
    const/4 v1, 0x2

    new-array v14, v1, [B

    fill-array-data v14, :array_0

    new-instance v1, Lorg/apache/poi/java/awt/image/IndexColorModel;

    const/4 v10, 0x1

    const/4 v11, 0x2

    move-object v9, v1

    move-object v12, v14

    move-object v13, v14

    invoke-direct/range {v9 .. v14}, Lorg/apache/poi/java/awt/image/IndexColorModel;-><init>(II[B[B[B)V

    iput-object v1, v0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/java/awt/image/Raster;->createPackedRaster(IIIIILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_2
    invoke-static {v4}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v10

    new-array v11, v9, [I

    aput v6, v11, v1

    new-instance v1, Lorg/apache/poi/java/awt/image/ComponentColorModel;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lorg/apache/poi/java/awt/image/ComponentColorModel;-><init>(Lorg/apache/poi/java/awt/color/ColorSpace;[IZZII)V

    goto/16 :goto_4

    :pswitch_3
    invoke-static {v4}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v10

    new-array v11, v9, [I

    const/16 v4, 0x8

    aput v4, v11, v1

    new-instance v1, Lorg/apache/poi/java/awt/image/ComponentColorModel;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lorg/apache/poi/java/awt/image/ComponentColorModel;-><init>(Lorg/apache/poi/java/awt/color/ColorSpace;[IZZII)V

    goto/16 :goto_4

    :pswitch_4
    new-instance v1, Lorg/apache/poi/java/awt/image/DirectColorModel;

    const/16 v4, 0xf

    const/16 v6, 0x7c00

    const/16 v7, 0x3e0

    invoke-direct {v1, v4, v6, v7, v5}, Lorg/apache/poi/java/awt/image/DirectColorModel;-><init>(IIII)V

    goto/16 :goto_4

    :pswitch_5
    new-instance v1, Lorg/apache/poi/java/awt/image/DirectColorModel;

    const v4, 0xf800

    const/16 v7, 0x7e0

    invoke-direct {v1, v6, v4, v7, v5}, Lorg/apache/poi/java/awt/image/DirectColorModel;-><init>(IIII)V

    goto/16 :goto_4

    :pswitch_6
    invoke-static {v7}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v1

    new-array v11, v10, [I

    fill-array-data v11, :array_1

    new-array v6, v10, [I

    fill-array-data v6, :array_2

    new-instance v4, Lorg/apache/poi/java/awt/image/ComponentColorModel;

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x3

    const/4 v15, 0x0

    move-object v9, v4

    move-object v10, v1

    invoke-direct/range {v9 .. v15}, Lorg/apache/poi/java/awt/image/ComponentColorModel;-><init>(Lorg/apache/poi/java/awt/color/ColorSpace;[IZZII)V

    iput-object v4, v0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    const/4 v1, 0x0

    mul-int/lit8 v4, v2, 0x4

    const/4 v5, 0x4

    const/4 v7, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v7}, Lorg/apache/poi/java/awt/image/Raster;->createInterleavedRaster(IIIII[ILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_7
    invoke-static {v7}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v1

    new-array v11, v10, [I

    fill-array-data v11, :array_3

    new-array v6, v10, [I

    fill-array-data v6, :array_4

    new-instance v4, Lorg/apache/poi/java/awt/image/ComponentColorModel;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x0

    move-object v9, v4

    move-object v10, v1

    invoke-direct/range {v9 .. v15}, Lorg/apache/poi/java/awt/image/ComponentColorModel;-><init>(Lorg/apache/poi/java/awt/color/ColorSpace;[IZZII)V

    iput-object v4, v0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    const/4 v1, 0x0

    mul-int/lit8 v4, v2, 0x4

    const/4 v5, 0x4

    const/4 v7, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v7}, Lorg/apache/poi/java/awt/image/Raster;->createInterleavedRaster(IIIII[ILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_8
    invoke-static {v7}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v10

    const/4 v1, 0x3

    new-array v11, v1, [I

    fill-array-data v11, :array_5

    new-array v6, v1, [I

    fill-array-data v6, :array_6

    new-instance v1, Lorg/apache/poi/java/awt/image/ComponentColorModel;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lorg/apache/poi/java/awt/image/ComponentColorModel;-><init>(Lorg/apache/poi/java/awt/color/ColorSpace;[IZZII)V

    iput-object v1, v0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    const/4 v1, 0x0

    mul-int/lit8 v4, v2, 0x3

    const/4 v5, 0x3

    const/4 v7, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v7}, Lorg/apache/poi/java/awt/image/Raster;->createInterleavedRaster(IIIII[ILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v1

    goto :goto_5

    :pswitch_9
    new-instance v1, Lorg/apache/poi/java/awt/image/DirectColorModel;

    const/16 v4, 0x18

    const/16 v5, 0xff

    const v6, 0xff00

    const/high16 v7, 0xff0000

    invoke-direct {v1, v4, v5, v6, v7}, Lorg/apache/poi/java/awt/image/DirectColorModel;-><init>(IIII)V

    goto :goto_4

    :pswitch_a
    new-instance v1, Lorg/apache/poi/java/awt/image/DirectColorModel;

    invoke-static {v7}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v10

    const/16 v11, 0x20

    const/high16 v12, 0xff0000

    const v13, 0xff00

    const/16 v14, 0xff

    const/high16 v15, -0x1000000

    const/16 v16, 0x1

    const/16 v17, 0x3

    move-object v9, v1

    invoke-direct/range {v9 .. v17}, Lorg/apache/poi/java/awt/image/DirectColorModel;-><init>(Lorg/apache/poi/java/awt/color/ColorSpace;IIIIIZI)V

    goto :goto_4

    :pswitch_b
    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGBdefault()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v1

    goto :goto_4

    :pswitch_c
    new-instance v1, Lorg/apache/poi/java/awt/image/DirectColorModel;

    const/16 v10, 0x18

    const/high16 v11, 0xff0000

    const v12, 0xff00

    const/16 v13, 0xff

    const/4 v14, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lorg/apache/poi/java/awt/image/DirectColorModel;-><init>(IIIII)V

    :goto_4
    iput-object v1, v0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/java/awt/image/ColorModel;->createCompatibleWritableRaster(II)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v1

    :goto_5
    iput-object v1, v0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    iput v8, v0, Lorg/apache/poi/java/awt/image/BufferedImage;->imageType:I

    return-void

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
    .array-data 1
        0x0t
        -0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x8
        0x8
        0x8
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x8
        0x8
        0x8
        0x8
    .end array-data

    :array_4
    .array-data 4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data

    :array_6
    .array-data 4
        0x2
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>(IIILorg/apache/poi/java/awt/image/IndexColorModel;)V
    .locals 9

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Image;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->imageType:I

    invoke-virtual {p4}, Lorg/apache/poi/java/awt/image/ColorModel;->hasAlpha()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p4}, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This image types do not have premultiplied alpha."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v1, 0xc

    const/4 v2, 0x1

    if-eq p3, v1, :cond_3

    const/16 v1, 0xd

    if-ne p3, v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v2, v1}, Lorg/apache/poi/java/awt/image/Raster;->createInterleavedRaster(IIIILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    goto :goto_3

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid image type ("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ").  Image type must be either TYPE_BYTE_BINARY or  TYPE_BYTE_INDEXED"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p4}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getMapSize()I

    move-result v0

    const/4 v1, 0x4

    const/4 v3, 0x2

    if-gt v0, v3, :cond_4

    move v7, v2

    goto :goto_2

    :cond_4
    if-gt v0, v1, :cond_5

    move v7, v3

    goto :goto_2

    :cond_5
    const/16 v2, 0x10

    if-gt v0, v2, :cond_7

    move v7, v1

    :goto_2
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move v4, p1

    move v5, p2

    invoke-static/range {v3 .. v8}, Lorg/apache/poi/java/awt/image/Raster;->createPackedRaster(IIIIILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    goto :goto_1

    :goto_3
    iget-object p1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {p4, p1}, Lorg/apache/poi/java/awt/image/IndexColorModel;->isCompatibleRaster(Lorg/apache/poi/java/awt/image/Raster;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput-object p4, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    iput p3, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->imageType:I

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Incompatible image type and IndexColorModel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Color map for TYPE_BYTE_BINARY must have no more than 16 entries"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/WritableRaster;ZLjava/util/Hashtable;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/java/awt/image/ColorModel;",
            "Lorg/apache/poi/java/awt/image/WritableRaster;",
            "Z",
            "Ljava/util/Hashtable<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Image;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->imageType:I

    invoke-virtual {p1, p2}, Lorg/apache/poi/java/awt/image/ColorModel;->isCompatibleRaster(Lorg/apache/poi/java/awt/image/Raster;)Z

    move-result v1

    const-string v2, "Raster "

    if-eqz v1, :cond_18

    iget v1, p2, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-nez v1, :cond_17

    iget v1, p2, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-nez v1, :cond_17

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    iput-object p2, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    iput-object p4, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->properties:Ljava/util/Hashtable;

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/Raster;->getNumBands()I

    move-result p4

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v1

    invoke-static {p1, p2}, Lorg/apache/poi/java/awt/image/BufferedImage;->isStandard(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/WritableRaster;)Z

    move-result v2

    invoke-virtual {p0, p3}, Lorg/apache/poi/java/awt/image/BufferedImage;->coerceData(Z)V

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object p3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getColorSpace()Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/color/ColorSpace;->getType()I

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-eq v3, v5, :cond_4

    if-ne v3, v4, :cond_2

    if-eqz v2, :cond_2

    instance-of v1, p1, Lorg/apache/poi/java/awt/image/ComponentColorModel;

    if-eqz v1, :cond_2

    instance-of v1, p3, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    if-eqz v1, :cond_0

    check-cast p3, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getPixelStride()I

    move-result p3

    if-eq p3, p4, :cond_0

    goto :goto_1

    :cond_0
    instance-of p3, p2, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/Raster;->getNumBands()I

    move-result p3

    if-ne p3, v7, :cond_1

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/image/ColorModel;->getComponentSize(I)I

    move-result p3

    if-ne p3, v6, :cond_1

    move-object p3, p2

    check-cast p3, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;

    invoke-virtual {p3}, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->getPixelStride()I

    move-result p3

    if-ne p3, v7, :cond_1

    const/16 p1, 0xa

    :goto_0
    iput p1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->imageType:I

    goto :goto_2

    :cond_1
    instance-of p3, p2, Lorg/apache/poi/sun/awt/image/ShortComponentRaster;

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/Raster;->getNumBands()I

    move-result p3

    if-ne p3, v7, :cond_3

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/image/ColorModel;->getComponentSize(I)I

    move-result p1

    const/16 p3, 0x10

    if-ne p1, p3, :cond_3

    check-cast p2, Lorg/apache/poi/sun/awt/image/ShortComponentRaster;

    invoke-virtual {p2}, Lorg/apache/poi/sun/awt/image/ShortComponentRaster;->getPixelStride()I

    move-result p1

    if-ne p1, v7, :cond_3

    const/16 p1, 0xb

    goto :goto_0

    :cond_2
    :goto_1
    iput v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->imageType:I

    :cond_3
    :goto_2
    return-void

    :cond_4
    instance-of p3, p2, Lorg/apache/poi/sun/awt/image/IntegerComponentRaster;

    const/4 v3, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eqz p3, :cond_a

    if-eq p4, v9, :cond_5

    if-ne p4, v8, :cond_a

    :cond_5
    check-cast p2, Lorg/apache/poi/sun/awt/image/IntegerComponentRaster;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getPixelSize()I

    move-result p3

    invoke-virtual {p2}, Lorg/apache/poi/sun/awt/image/IntegerComponentRaster;->getPixelStride()I

    move-result p2

    if-ne p2, v7, :cond_16

    if-eqz v2, :cond_16

    instance-of p2, p1, Lorg/apache/poi/java/awt/image/DirectColorModel;

    if-eqz p2, :cond_16

    const/16 p2, 0x20

    if-eq p3, p2, :cond_6

    const/16 p2, 0x18

    if-ne p3, p2, :cond_16

    :cond_6
    check-cast p1, Lorg/apache/poi/java/awt/image/DirectColorModel;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getRedMask()I

    move-result p2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getGreenMask()I

    move-result p3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getBlueMask()I

    move-result p4

    const v0, 0xff00

    const/16 v2, 0xff

    const/high16 v4, 0xff0000

    if-ne p2, v4, :cond_9

    if-ne p3, v0, :cond_9

    if-ne p4, v2, :cond_9

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getAlphaMask()I

    move-result p2

    const/high16 p3, -0x1000000

    if-ne p2, p3, :cond_8

    if-eqz v1, :cond_7

    move v3, v9

    :cond_7
    iput v3, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->imageType:I

    goto/16 :goto_6

    :cond_8
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->hasAlpha()Z

    move-result p1

    if-nez p1, :cond_16

    iput v7, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->imageType:I

    goto/16 :goto_6

    :cond_9
    if-ne p2, v2, :cond_16

    if-ne p3, v0, :cond_16

    if-ne p4, v4, :cond_16

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->hasAlpha()Z

    move-result p1

    if-nez p1, :cond_16

    iput v8, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->imageType:I

    goto/16 :goto_6

    :cond_a
    instance-of p3, p1, Lorg/apache/poi/java/awt/image/IndexColorModel;

    if-eqz p3, :cond_d

    if-ne p4, v7, :cond_d

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->hasAlpha()Z

    move-result p3

    if-eqz p3, :cond_b

    if-nez v1, :cond_d

    :cond_b
    check-cast p1, Lorg/apache/poi/java/awt/image/IndexColorModel;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getPixelSize()I

    move-result p1

    instance-of p3, p2, Lorg/apache/poi/sun/awt/image/BytePackedRaster;

    if-eqz p3, :cond_c

    const/16 p1, 0xc

    :goto_3
    iput p1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->imageType:I

    goto/16 :goto_6

    :cond_c
    instance-of p3, p2, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;

    if-eqz p3, :cond_16

    check-cast p2, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;

    invoke-virtual {p2}, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->getPixelStride()I

    move-result p2

    if-ne p2, v7, :cond_16

    if-gt p1, v6, :cond_16

    const/16 p1, 0xd

    goto :goto_3

    :cond_d
    instance-of p3, p2, Lorg/apache/poi/sun/awt/image/ShortComponentRaster;

    if-eqz p3, :cond_f

    instance-of p3, p1, Lorg/apache/poi/java/awt/image/DirectColorModel;

    if-eqz p3, :cond_f

    if-eqz v2, :cond_f

    if-ne p4, v9, :cond_f

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->hasAlpha()Z

    move-result p3

    if-nez p3, :cond_f

    check-cast p1, Lorg/apache/poi/java/awt/image/DirectColorModel;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getRedMask()I

    move-result p2

    const p3, 0xf800

    const/16 p4, 0x1f

    if-ne p2, p3, :cond_e

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getGreenMask()I

    move-result p2

    const/16 p3, 0x7e0

    if-ne p2, p3, :cond_16

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getBlueMask()I

    move-result p1

    if-ne p1, p4, :cond_16

    iput v6, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->imageType:I

    goto/16 :goto_6

    :cond_e
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getRedMask()I

    move-result p2

    const/16 p3, 0x7c00

    if-ne p2, p3, :cond_16

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getGreenMask()I

    move-result p2

    const/16 p3, 0x3e0

    if-ne p2, p3, :cond_16

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getBlueMask()I

    move-result p1

    if-ne p1, p4, :cond_16

    const/16 p1, 0x9

    goto :goto_3

    :cond_f
    instance-of p3, p2, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;

    if-eqz p3, :cond_16

    instance-of p3, p1, Lorg/apache/poi/java/awt/image/ComponentColorModel;

    if-eqz p3, :cond_16

    if-eqz v2, :cond_16

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object p3

    instance-of p3, p3, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;

    if-eqz p3, :cond_16

    if-eq p4, v9, :cond_10

    if-ne p4, v8, :cond_16

    :cond_10
    check-cast p1, Lorg/apache/poi/java/awt/image/ComponentColorModel;

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;

    check-cast p2, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getBandOffsets()[I

    move-result-object p3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getNumComponents()I

    move-result v2

    if-ne v2, p4, :cond_15

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getComponentSize()[I

    move-result-object v2

    move v8, v0

    :goto_4
    if-ge v8, p4, :cond_12

    aget v10, v2, v8

    if-eq v10, v6, :cond_11

    move v2, v0

    goto :goto_5

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_12
    move v2, v7

    :goto_5
    if-eqz v2, :cond_16

    invoke-virtual {p2}, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->getPixelStride()I

    move-result p2

    if-ne p2, p4, :cond_16

    aget p2, p3, v0

    add-int/lit8 v0, p4, -0x1

    if-ne p2, v0, :cond_16

    aget p2, p3, v7

    add-int/lit8 v0, p4, -0x2

    if-ne p2, v0, :cond_16

    aget p2, p3, v3

    add-int/lit8 v0, p4, -0x3

    if-ne p2, v0, :cond_16

    if-ne p4, v9, :cond_13

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->hasAlpha()Z

    move-result p2

    if-nez p2, :cond_13

    iput v5, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->imageType:I

    goto :goto_6

    :cond_13
    aget p2, p3, v9

    if-nez p2, :cond_16

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->hasAlpha()Z

    move-result p1

    if-eqz p1, :cond_16

    if-eqz v1, :cond_14

    const/4 v4, 0x7

    :cond_14
    iput v4, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->imageType:I

    goto :goto_6

    :cond_15
    new-instance p2, Lorg/apache/poi/java/awt/image/RasterFormatException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number of components in ColorModel ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getNumComponents()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") does not match # in  Raster ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_16
    :goto_6
    return-void

    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " has minX or minY not equal to zero: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p2, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is incompatible with ColorModel "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private static isStandard(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/WritableRaster;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v1, Lorg/apache/poi/java/awt/image/BufferedImage$1;

    invoke-direct {v1, p0, p1, v0}, Lorg/apache/poi/java/awt/image/BufferedImage$1;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addTileObserver(Lorg/apache/poi/java/awt/image/TileObserver;)V
    .locals 0

    return-void
.end method

.method public coerceData(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/java/awt/image/ColorModel;->coerceData(Lorg/apache/poi/java/awt/image/WritableRaster;Z)Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    :cond_0
    return-void
.end method

.method public copyData(Lorg/apache/poi/java/awt/image/WritableRaster;)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 12

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/BufferedImage;->getData()Lorg/apache/poi/java/awt/image/Raster;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/image/WritableRaster;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getMinX()I

    move-result v8

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getMinY()I

    move-result v9

    const/4 v0, 0x0

    move-object v5, v0

    move v10, v9

    :goto_0
    add-int v0, v9, v7

    if-ge v10, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    const/4 v4, 0x1

    move v1, v8

    move v2, v10

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, p1

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public createGraphics()Lorg/apache/poi/java/awt/Graphics2D;
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Lorg/apache/poi/java/awt/GraphicsEnvironment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->createGraphics(Lorg/apache/poi/java/awt/image/BufferedImage;)Lorg/apache/poi/java/awt/Graphics2D;

    move-result-object v0

    return-object v0
.end method

.method public getAlphaRaster()Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/image/ColorModel;->getAlphaRaster(Lorg/apache/poi/java/awt/image/WritableRaster;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v0

    return-object v0
.end method

.method public getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    return-object v0
.end method

.method public getData()Lorg/apache/poi/java/awt/image/Raster;
    .locals 13

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v7

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/Raster;->getMinX()I

    move-result v8

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/Raster;->getMinY()I

    move-result v9

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/java/awt/Point;

    iget-object v3, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModelTranslateX()I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModelTranslateY()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    invoke-static {v1, v2}, Lorg/apache/poi/java/awt/image/Raster;->createWritableRaster(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v10

    const/4 v1, 0x0

    move-object v6, v1

    move v11, v9

    :goto_0
    add-int v1, v9, v7

    if-ge v11, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    const/4 v5, 0x1

    move v2, v8

    move v3, v11

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v1, v10

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    return-object v10
.end method

.method public getData(Lorg/apache/poi/java/awt/Rectangle;)Lorg/apache/poi/java/awt/image/Raster;
    .locals 12

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v0

    iget v1, p1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v2, p1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/java/awt/image/SampleModel;->createCompatibleSampleModel(II)Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Rectangle;->getLocation()Lorg/apache/poi/java/awt/Point;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/image/Raster;->createWritableRaster(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v0

    iget v8, p1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v9, p1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    iget v10, p1, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget p1, p1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    const/4 v1, 0x0

    move v11, p1

    :goto_0
    move-object v6, v1

    add-int v1, p1, v9

    if-ge v11, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    const/4 v5, 0x1

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v6, 0x1

    move-object v2, v0

    move v3, v10

    move v4, v11

    move v5, v8

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getGraphics()Lorg/apache/poi/java/awt/Graphics;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/BufferedImage;->createGraphics()Lorg/apache/poi/java/awt/Graphics2D;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHeight(Lorg/apache/poi/java/awt/image/ImageObserver;)I
    .locals 0

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result p1

    return p1
.end method

.method public getMinTileX()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMinTileY()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMinX()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/Raster;->getMinX()I

    move-result v0

    return v0
.end method

.method public getMinY()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/Raster;->getMinY()I

    move-result v0

    return v0
.end method

.method public getNumXTiles()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getNumYTiles()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "null property name is not allowed"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->properties:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    sget-object p1, Lorg/apache/poi/java/awt/Image;->UndefinedProperty:Ljava/lang/Object;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/apache/poi/java/awt/Image;->UndefinedProperty:Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method public getProperty(Ljava/lang/String;Lorg/apache/poi/java/awt/image/ImageObserver;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyNames()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRGB(II)I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGB(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getRGB(IIII[III)[I
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/Raster;->getNumBands()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataType()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    new-array v0, v0, [D

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown data buffer type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-array v0, v0, [F

    goto :goto_0

    :cond_2
    new-array v0, v0, [I

    goto :goto_0

    :cond_3
    new-array v0, v0, [S

    goto :goto_0

    :cond_4
    new-array v0, v0, [B

    :goto_0
    if-nez p5, :cond_5

    mul-int p5, p4, p7

    add-int/2addr p5, p6

    new-array p5, p5, [I

    :cond_5
    move v1, p2

    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_7

    move v2, p1

    move v3, p6

    :goto_2
    add-int v4, p1, p3

    if-ge v2, v4, :cond_6

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    iget-object v6, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v6, v2, v1, v0}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGB(Ljava/lang/Object;)I

    move-result v5

    aput v5, p5, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    add-int/2addr p6, p7

    goto :goto_1

    :cond_7
    return-object p5
.end method

.method public getRaster()Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    return-object v0
.end method

.method public getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lorg/apache/poi/java/awt/image/ImageProducer;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->osis:Lorg/apache/poi/sun/awt/image/OffScreenImageSource;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->properties:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->properties:Ljava/util/Hashtable;

    :cond_0
    new-instance v0, Lorg/apache/poi/sun/awt/image/OffScreenImageSource;

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->properties:Ljava/util/Hashtable;

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/sun/awt/image/OffScreenImageSource;-><init>(Lorg/apache/poi/java/awt/image/BufferedImage;Ljava/util/Hashtable;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->osis:Lorg/apache/poi/sun/awt/image/OffScreenImageSource;

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->osis:Lorg/apache/poi/sun/awt/image/OffScreenImageSource;

    return-object v0
.end method

.method public getSources()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lorg/apache/poi/java/awt/image/RenderedImage;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubimage(IIII)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 10

    new-instance v0, Lorg/apache/poi/java/awt/image/BufferedImage;

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v9}, Lorg/apache/poi/java/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result p2

    iget-object p3, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->properties:Ljava/util/Hashtable;

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/apache/poi/java/awt/image/BufferedImage;-><init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v0
.end method

.method public getTile(II)Lorg/apache/poi/java/awt/image/Raster;
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "BufferedImages only have one tile with index 0,0"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTileGridXOffset()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModelTranslateX()I

    move-result v0

    return v0
.end method

.method public getTileGridYOffset()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModelTranslateY()I

    move-result v0

    return v0
.end method

.method public getTileHeight()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v0

    return v0
.end method

.method public getTileWidth()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v0

    return v0
.end method

.method public getTransparency()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->getTransparency()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->imageType:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v0

    return v0
.end method

.method public getWidth(Lorg/apache/poi/java/awt/image/ImageObserver;)I
    .locals 0

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result p1

    return p1
.end method

.method public getWritableTile(II)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 0

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    return-object p1
.end method

.method public getWritableTileIndices()[Lorg/apache/poi/java/awt/Point;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/java/awt/Point;

    new-instance v1, Lorg/apache/poi/java/awt/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    aput-object v1, v0, v2

    return-object v0
.end method

.method public hasTileWriters()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAlphaPremultiplied()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v0

    return v0
.end method

.method public isTileWritable(II)Z
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only 1 tile in image"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public releaseWritableTile(II)V
    .locals 0

    return-void
.end method

.method public removeTileObserver(Lorg/apache/poi/java/awt/image/TileObserver;)V
    .locals 0

    return-void
.end method

.method public setData(Lorg/apache/poi/java/awt/image/Raster;)V
    .locals 12

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getMinX()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getMinY()I

    move-result v3

    new-instance v4, Lorg/apache/poi/java/awt/Rectangle;

    invoke-direct {v4, v2, v3, v0, v1}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    new-instance v0, Lorg/apache/poi/java/awt/Rectangle;

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    iget v2, v1, Lorg/apache/poi/java/awt/image/Raster;->width:I

    iget v1, v1, Lorg/apache/poi/java/awt/image/Raster;->height:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2, v1}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v4, v0}, Lorg/apache/poi/java/awt/Rectangle;->intersection(Lorg/apache/poi/java/awt/Rectangle;)Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Rectangle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v8, v0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    iget v9, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    const/4 v2, 0x0

    move v10, v0

    move-object v7, v2

    :goto_0
    add-int v2, v0, v8

    if-ge v10, v2, :cond_1

    const/4 v6, 0x1

    move-object v2, p1

    move v3, v9

    move v4, v10

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/java/awt/image/Raster;->getPixels(IIII[I)[I

    move-result-object v11

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    move-object v7, v11

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/java/awt/image/WritableRaster;->setPixels(IIII[I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized setRGB(III)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Lorg/apache/poi/java/awt/image/ColorModel;->getDataElements(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRGB(IIII[III)V
    .locals 6

    const/4 v0, 0x0

    move v1, p2

    :goto_0
    add-int v2, p2, p4

    if-ge v1, v2, :cond_1

    move v2, p1

    move v3, p6

    :goto_1
    add-int v4, p1, p3

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    add-int/lit8 v5, v3, 0x1

    aget v3, p5, v3

    invoke-virtual {v4, v3, v0}, Lorg/apache/poi/java/awt/image/ColorModel;->getDataElements(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v3, v2, v1, v0}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/2addr p6, p7

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BufferedImage@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->imageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImage;->raster:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
