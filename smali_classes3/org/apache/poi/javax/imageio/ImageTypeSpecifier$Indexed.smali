.class Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Indexed;
.super Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Indexed"
.end annotation


# instance fields
.field public alphaLUT:[B

.field public bits:I

.field public blueLUT:[B

.field public dataType:I

.field public greenLUT:[B

.field public redLUT:[B


# direct methods
.method public constructor <init>([B[B[B[BII)V
    .locals 15

    move-object v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;-><init>(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$1;)V

    iput-object v1, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Indexed;->alphaLUT:[B

    if-eqz v4, :cond_e

    if-eqz v5, :cond_e

    if-eqz v6, :cond_e

    const/16 v10, 0x10

    const/16 v11, 0x8

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v8, v13, :cond_1

    if-eq v8, v12, :cond_1

    const/4 v1, 0x4

    if-eq v8, v1, :cond_1

    if-eq v8, v11, :cond_1

    if-ne v8, v10, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad value for bits!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    const/4 v1, 0x3

    if-eqz v9, :cond_3

    if-eq v9, v12, :cond_3

    if-eq v9, v13, :cond_3

    if-ne v9, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad value for dataType!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    if-le v8, v11, :cond_4

    if-eqz v9, :cond_5

    :cond_4
    if-le v8, v10, :cond_6

    if-ne v9, v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Too many bits for dataType!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_2
    shl-int v1, v13, v8

    array-length v2, v4

    if-ne v2, v1, :cond_d

    array-length v2, v5

    if-ne v2, v1, :cond_d

    array-length v2, v6

    if-ne v2, v1, :cond_d

    if-eqz v7, :cond_7

    array-length v2, v7

    if-ne v2, v1, :cond_d

    :cond_7
    invoke-virtual/range {p1 .. p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Indexed;->redLUT:[B

    invoke-virtual/range {p2 .. p2}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Indexed;->greenLUT:[B

    invoke-virtual/range {p3 .. p3}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Indexed;->blueLUT:[B

    if-eqz v7, :cond_8

    invoke-virtual/range {p4 .. p4}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Indexed;->alphaLUT:[B

    :cond_8
    iput v8, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Indexed;->bits:I

    iput v9, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Indexed;->dataType:I

    if-nez v7, :cond_9

    new-instance v7, Lorg/apache/poi/java/awt/image/IndexColorModel;

    array-length v3, v4

    move-object v1, v7

    move/from16 v2, p5

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/java/awt/image/IndexColorModel;-><init>(II[B[B[B)V

    iput-object v7, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    goto :goto_3

    :cond_9
    new-instance v14, Lorg/apache/poi/java/awt/image/IndexColorModel;

    array-length v3, v4

    move-object v1, v14

    move/from16 v2, p5

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/java/awt/image/IndexColorModel;-><init>(II[B[B[B[B)V

    iput-object v14, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    :goto_3
    if-ne v8, v11, :cond_a

    if-eqz v9, :cond_b

    :cond_a
    if-ne v8, v10, :cond_c

    if-eq v9, v12, :cond_b

    if-ne v9, v13, :cond_c

    :cond_b
    new-array v7, v13, [I

    const/4 v1, 0x0

    aput v1, v7, v1

    new-instance v8, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, v8

    move/from16 v2, p6

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;-><init>(IIIII[I)V

    iput-object v8, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    goto :goto_4

    :cond_c
    new-instance v1, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    invoke-direct {v1, v9, v13, v13, v8}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;-><init>(IIII)V

    iput-object v1, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    :goto_4
    return-void

    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "LUT has improper length!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "LUT is null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
