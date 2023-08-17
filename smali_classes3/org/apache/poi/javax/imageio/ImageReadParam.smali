.class public Lorg/apache/poi/javax/imageio/ImageReadParam;
.super Lorg/apache/poi/javax/imageio/IIOParam;
.source "SourceFile"


# instance fields
.field public canSetSourceRenderSize:Z

.field public destination:Lorg/apache/poi/java/awt/image/BufferedImage;

.field public destinationBands:[I

.field public minProgressivePass:I

.field public numProgressivePasses:I

.field public sourceRenderSize:Lorg/apache/poi/java/awt/Dimension;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/IIOParam;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageReadParam;->canSetSourceRenderSize:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/javax/imageio/ImageReadParam;->sourceRenderSize:Lorg/apache/poi/java/awt/Dimension;

    iput-object v1, p0, Lorg/apache/poi/javax/imageio/ImageReadParam;->destination:Lorg/apache/poi/java/awt/image/BufferedImage;

    iput-object v1, p0, Lorg/apache/poi/javax/imageio/ImageReadParam;->destinationBands:[I

    iput v0, p0, Lorg/apache/poi/javax/imageio/ImageReadParam;->minProgressivePass:I

    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/poi/javax/imageio/ImageReadParam;->numProgressivePasses:I

    return-void
.end method


# virtual methods
.method public canSetSourceRenderSize()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageReadParam;->canSetSourceRenderSize:Z

    return v0
.end method

.method public getDestination()Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReadParam;->destination:Lorg/apache/poi/java/awt/image/BufferedImage;

    return-object v0
.end method

.method public getDestinationBands()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReadParam;->destinationBands:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getSourceMaxProgressivePass()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/javax/imageio/ImageReadParam;->numProgressivePasses:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget v1, p0, Lorg/apache/poi/javax/imageio/ImageReadParam;->minProgressivePass:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public getSourceMinProgressivePass()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/javax/imageio/ImageReadParam;->minProgressivePass:I

    return v0
.end method

.method public getSourceNumProgressivePasses()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/javax/imageio/ImageReadParam;->numProgressivePasses:I

    return v0
.end method

.method public getSourceRenderSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageReadParam;->sourceRenderSize:Lorg/apache/poi/java/awt/Dimension;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/Dimension2D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Dimension;

    :goto_0
    return-object v0
.end method

.method public setDestination(Lorg/apache/poi/java/awt/image/BufferedImage;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageReadParam;->destination:Lorg/apache/poi/java/awt/image/BufferedImage;

    return-void
.end method

.method public setDestinationBands([I)V
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageReadParam;->destinationBands:[I

    goto :goto_1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :cond_1
    if-ge v1, v0, :cond_4

    aget v2, p1, v1

    if-ltz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    aget v4, p1, v3

    if-eq v2, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Duplicate band value!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Band value < 0!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageReadParam;->destinationBands:[I

    :goto_1
    return-void
.end method

.method public setDestinationType(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/javax/imageio/IIOParam;->setDestinationType(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReadParam;->setDestination(Lorg/apache/poi/java/awt/image/BufferedImage;)V

    return-void
.end method

.method public setSourceProgressivePasses(II)V
    .locals 2

    if-ltz p1, :cond_3

    if-lez p2, :cond_2

    const v0, 0x7fffffff

    if-eq p2, v0, :cond_1

    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minPass + numPasses - 1 > INTEGER.MAX_VALUE!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lorg/apache/poi/javax/imageio/ImageReadParam;->minProgressivePass:I

    iput p2, p0, Lorg/apache/poi/javax/imageio/ImageReadParam;->numProgressivePasses:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "numPasses <= 0!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minPass < 0!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSourceRenderSize(Lorg/apache/poi/java/awt/Dimension;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReadParam;->canSetSourceRenderSize()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageReadParam;->sourceRenderSize:Lorg/apache/poi/java/awt/Dimension;

    goto :goto_1

    :cond_0
    iget v0, p1, Lorg/apache/poi/java/awt/Dimension;->width:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/apache/poi/java/awt/Dimension;->height:I

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/Dimension2D;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/Dimension;

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "width or height <= 0!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Can\'t set source render size!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
