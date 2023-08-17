.class Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Grayscale;
.super Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Grayscale"
.end annotation


# instance fields
.field public bits:I

.field public dataType:I

.field public hasAlpha:Z

.field public isAlphaPremultiplied:Z

.field public isSigned:Z


# direct methods
.method public constructor <init>(IIZZZ)V
    .locals 15

    move-object v0, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v4, p4

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;-><init>(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$1;)V

    const/16 v1, 0x10

    const/16 v2, 0x8

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v7, v10, :cond_1

    if-eq v7, v9, :cond_1

    const/4 v3, 0x4

    if-eq v7, v3, :cond_1

    if-eq v7, v2, :cond_1

    if-ne v7, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad value for bits!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-eqz v8, :cond_3

    if-eq v8, v9, :cond_3

    if-ne v8, v10, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad value for dataType!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    if-le v7, v2, :cond_5

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Too many bits for dataType!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    iput v7, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Grayscale;->bits:I

    iput v8, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Grayscale;->dataType:I

    move/from16 v3, p3

    iput-boolean v3, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Grayscale;->isSigned:Z

    iput-boolean v4, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Grayscale;->hasAlpha:Z

    move/from16 v5, p5

    iput-boolean v5, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Grayscale;->isAlphaPremultiplied:Z

    const/16 v3, 0x3eb

    invoke-static {v3}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v3

    const/4 v11, 0x0

    if-ne v7, v2, :cond_6

    if-eqz v8, :cond_7

    :cond_6
    if-ne v7, v1, :cond_c

    if-eq v8, v9, :cond_7

    if-ne v8, v10, :cond_c

    :cond_7
    if-eqz v4, :cond_8

    move v12, v9

    goto :goto_3

    :cond_8
    move v12, v10

    :goto_3
    if-eqz v4, :cond_9

    const/4 v1, 0x3

    move v6, v1

    goto :goto_4

    :cond_9
    move v6, v10

    :goto_4
    new-array v13, v12, [I

    aput v7, v13, v11

    if-ne v12, v9, :cond_a

    aput v7, v13, v10

    :cond_a
    new-instance v14, Lorg/apache/poi/java/awt/image/ComponentColorModel;

    move-object v1, v14

    move-object v2, v3

    move-object v3, v13

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/java/awt/image/ComponentColorModel;-><init>(Lorg/apache/poi/java/awt/color/ColorSpace;[IZZII)V

    iput-object v14, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    new-array v7, v12, [I

    aput v11, v7, v11

    if-ne v12, v9, :cond_b

    aput v10, v7, v10

    :cond_b
    const/4 v4, 0x1

    new-instance v9, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;

    mul-int/lit8 v6, v12, 0x1

    const/4 v3, 0x1

    move-object v1, v9

    move/from16 v2, p2

    move v5, v12

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;-><init>(IIIII[I)V

    iput-object v9, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    goto :goto_6

    :cond_c
    shl-int v3, v10, v7

    new-array v6, v3, [B

    :goto_5
    if-ge v11, v3, :cond_d

    mul-int/lit16 v1, v11, 0xff

    add-int/lit8 v2, v3, -0x1

    div-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v6, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_d
    new-instance v9, Lorg/apache/poi/java/awt/image/IndexColorModel;

    move-object v1, v9

    move/from16 v2, p1

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/java/awt/image/IndexColorModel;-><init>(II[B[B[B)V

    iput-object v9, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    new-instance v1, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    invoke-direct {v1, v8, v10, v10, v7}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;-><init>(IIII)V

    iput-object v1, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    :goto_6
    return-void
.end method
