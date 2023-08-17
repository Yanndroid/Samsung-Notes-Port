.class Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;
.super Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Interleaved"
.end annotation


# instance fields
.field public bandOffsets:[I

.field public colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

.field public dataType:I

.field public hasAlpha:Z

.field public isAlphaPremultiplied:Z


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/color/ColorSpace;[IIZZ)V
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;-><init>(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$1;)V

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result v0

    add-int/2addr v0, p4

    array-length v1, p2

    if-ne v1, v0, :cond_3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    if-eq p3, v0, :cond_1

    const/4 v1, 0x3

    if-eq p3, v1, :cond_1

    const/4 v1, 0x4

    if-eq p3, v1, :cond_1

    const/4 v1, 0x5

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad value for dataType!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;->bandOffsets:[I

    iput p3, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;->dataType:I

    iput-boolean p4, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;->hasAlpha:Z

    iput-boolean p5, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;->isAlphaPremultiplied:Z

    array-length v1, p2

    invoke-static {p1, v1, p3, p4, p5}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createComponentCM(Lorg/apache/poi/java/awt/color/ColorSpace;IIZZ)Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    const/4 p1, 0x0

    aget p4, p2, p1

    move p5, p4

    :goto_1
    array-length v1, p2

    if-ge p1, v1, :cond_2

    aget v1, p2, p1

    invoke-static {v1, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    sub-int/2addr p4, p5

    add-int/lit8 v5, p4, 0x1

    const/4 v4, 0x1

    new-instance p1, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;

    mul-int/lit8 v6, v5, 0x1

    const/4 v3, 0x1

    move-object v1, p1

    move v2, p3

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;-><init>(IIIII[I)V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bandOffsets.length is wrong!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bandOffsets == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "colorSpace == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    iget-object v2, p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;->dataType:I

    iget v2, p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;->dataType:I

    if-ne v1, v2, :cond_4

    iget-boolean v1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;->hasAlpha:Z

    iget-boolean v2, p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;->hasAlpha:Z

    if-ne v1, v2, :cond_4

    iget-boolean v1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;->isAlphaPremultiplied:Z

    iget-boolean v2, p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;->isAlphaPremultiplied:Z

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;->bandOffsets:[I

    array-length v1, v1

    iget-object v2, p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;->bandOffsets:[I

    array-length v2, v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;->bandOffsets:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget v2, v2, v1

    iget-object v3, p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;->bandOffsets:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;->bandOffsets:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;->dataType:I

    mul-int/lit8 v1, v1, 0x19

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Interleaved;->hasAlpha:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto :goto_0

    :cond_0
    const/16 v1, 0x12

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
