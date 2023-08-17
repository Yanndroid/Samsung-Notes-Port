.class Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Packed;
.super Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Packed"
.end annotation


# instance fields
.field public alphaMask:I

.field public blueMask:I

.field public colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

.field public greenMask:I

.field public isAlphaPremultiplied:Z

.field public redMask:I

.field public transferType:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/color/ColorSpace;IIIIIZ)V
    .locals 12

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p6

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;-><init>(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$1;)V

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/color/ColorSpace;->getType()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    if-eq v9, v10, :cond_1

    const/4 v1, 0x3

    if-ne v9, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad value for transferType!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    if-nez v6, :cond_3

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No mask has at least 1 bit set!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    iput-object v2, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Packed;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    iput v4, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Packed;->redMask:I

    iput v5, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Packed;->greenMask:I

    iput v6, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Packed;->blueMask:I

    iput v7, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Packed;->alphaMask:I

    iput v9, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Packed;->transferType:I

    move/from16 v8, p7

    iput-boolean v8, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Packed;->isAlphaPremultiplied:Z

    const/16 v3, 0x20

    new-instance v11, Lorg/apache/poi/java/awt/image/DirectColorModel;

    move-object v1, v11

    move-object v2, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lorg/apache/poi/java/awt/image/DirectColorModel;-><init>(Lorg/apache/poi/java/awt/color/ColorSpace;IIIIIZI)V

    iput-object v11, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-virtual {v11, v10, v10}, Lorg/apache/poi/java/awt/image/ColorModel;->createCompatibleSampleModel(II)Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    return-void

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "colorSpace is not of type TYPE_RGB!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "colorSpace == null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
