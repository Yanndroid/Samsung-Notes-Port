.class Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;
.super Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Banded"
.end annotation


# instance fields
.field public bandOffsets:[I

.field public bankIndices:[I

.field public colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

.field public dataType:I

.field public hasAlpha:Z

.field public isAlphaPremultiplied:Z


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/color/ColorSpace;[I[IIZZ)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;-><init>(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$1;)V

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_3

    if-eqz p4, :cond_1

    const/4 v0, 0x2

    if-eq p4, v0, :cond_1

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x3

    if-eq p4, v0, :cond_1

    const/4 v0, 0x4

    if-eq p4, v0, :cond_1

    const/4 v0, 0x5

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad value for dataType!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result v0

    add-int/2addr v0, p5

    array-length v1, p3

    if-ne v1, v0, :cond_2

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->bankIndices:[I

    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->bandOffsets:[I

    iput p4, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->dataType:I

    iput-boolean p5, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->hasAlpha:Z

    iput-boolean p6, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->isAlphaPremultiplied:Z

    array-length v0, p2

    invoke-static {p1, v0, p4, p5, p6}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createComponentCM(Lorg/apache/poi/java/awt/color/ColorSpace;IIZZ)Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    const/4 v4, 0x1

    const/4 v3, 0x1

    new-instance p1, Lorg/apache/poi/java/awt/image/BandedSampleModel;

    move-object v0, p1

    move v1, p4

    move v2, v4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/java/awt/image/BandedSampleModel;-><init>(IIII[I[I)V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bandOffsets.length is wrong!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bankIndices.length != bandOffsets.length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bandOffsets == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bankIndices == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "colorSpace == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    instance-of v1, p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    check-cast p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    iget-object v2, p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->dataType:I

    iget v2, p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->dataType:I

    if-ne v1, v2, :cond_6

    iget-boolean v1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->hasAlpha:Z

    iget-boolean v2, p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->hasAlpha:Z

    if-ne v1, v2, :cond_6

    iget-boolean v1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->isAlphaPremultiplied:Z

    iget-boolean v2, p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->isAlphaPremultiplied:Z

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->bankIndices:[I

    array-length v1, v1

    iget-object v2, p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->bankIndices:[I

    array-length v2, v2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->bandOffsets:[I

    array-length v1, v1

    iget-object v2, p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->bandOffsets:[I

    array-length v2, v2

    if-eq v1, v2, :cond_1

    goto :goto_2

    :cond_1
    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->bankIndices:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget v2, v2, v1

    iget-object v3, p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->bankIndices:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_1
    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->bandOffsets:[I

    array-length v3, v2

    if-ge v1, v3, :cond_5

    aget v2, v2, v1

    iget-object v3, p1, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->bandOffsets:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->bandOffsets:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->bankIndices:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->dataType:I

    mul-int/lit8 v1, v1, 0x15

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier$Banded;->hasAlpha:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
