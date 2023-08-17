.class public abstract Lorg/apache/poi/javax/imageio/IIOParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public controller:Lorg/apache/poi/javax/imageio/IIOParamController;

.field public defaultController:Lorg/apache/poi/javax/imageio/IIOParamController;

.field public destinationOffset:Lorg/apache/poi/java/awt/Point;

.field public destinationType:Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

.field public sourceBands:[I

.field public sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

.field public sourceXSubsampling:I

.field public sourceYSubsampling:I

.field public subsamplingXOffset:I

.field public subsamplingYOffset:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/IIOParam;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    const/4 v1, 0x1

    iput v1, p0, Lorg/apache/poi/javax/imageio/IIOParam;->sourceXSubsampling:I

    iput v1, p0, Lorg/apache/poi/javax/imageio/IIOParam;->sourceYSubsampling:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/poi/javax/imageio/IIOParam;->subsamplingXOffset:I

    iput v1, p0, Lorg/apache/poi/javax/imageio/IIOParam;->subsamplingYOffset:I

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/IIOParam;->sourceBands:[I

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/IIOParam;->destinationType:Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    new-instance v2, Lorg/apache/poi/java/awt/Point;

    invoke-direct {v2, v1, v1}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    iput-object v2, p0, Lorg/apache/poi/javax/imageio/IIOParam;->destinationOffset:Lorg/apache/poi/java/awt/Point;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/IIOParam;->defaultController:Lorg/apache/poi/javax/imageio/IIOParamController;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/IIOParam;->controller:Lorg/apache/poi/javax/imageio/IIOParamController;

    return-void
.end method


# virtual methods
.method public activateController()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/IIOParam;->hasController()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/IIOParam;->getController()Lorg/apache/poi/javax/imageio/IIOParamController;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/poi/javax/imageio/IIOParamController;->activate(Lorg/apache/poi/javax/imageio/IIOParam;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "hasController() == false!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getController()Lorg/apache/poi/javax/imageio/IIOParamController;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/IIOParam;->controller:Lorg/apache/poi/javax/imageio/IIOParamController;

    return-object v0
.end method

.method public getDefaultController()Lorg/apache/poi/javax/imageio/IIOParamController;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/IIOParam;->defaultController:Lorg/apache/poi/javax/imageio/IIOParamController;

    return-object v0
.end method

.method public getDestinationOffset()Lorg/apache/poi/java/awt/Point;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/IIOParam;->destinationOffset:Lorg/apache/poi/java/awt/Point;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/Point2D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Point;

    return-object v0
.end method

.method public getDestinationType()Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/IIOParam;->destinationType:Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    return-object v0
.end method

.method public getSourceBands()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/IIOParam;->sourceBands:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getSourceRegion()Lorg/apache/poi/java/awt/Rectangle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/IIOParam;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Rectangle;

    return-object v0
.end method

.method public getSourceXSubsampling()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/javax/imageio/IIOParam;->sourceXSubsampling:I

    return v0
.end method

.method public getSourceYSubsampling()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/javax/imageio/IIOParam;->sourceYSubsampling:I

    return v0
.end method

.method public getSubsamplingXOffset()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/javax/imageio/IIOParam;->subsamplingXOffset:I

    return v0
.end method

.method public getSubsamplingYOffset()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/javax/imageio/IIOParam;->subsamplingYOffset:I

    return v0
.end method

.method public hasController()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/IIOParam;->controller:Lorg/apache/poi/javax/imageio/IIOParamController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setController(Lorg/apache/poi/javax/imageio/IIOParamController;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/IIOParam;->controller:Lorg/apache/poi/javax/imageio/IIOParamController;

    return-void
.end method

.method public setDestinationOffset(Lorg/apache/poi/java/awt/Point;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/Point2D;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/Point;

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/IIOParam;->destinationOffset:Lorg/apache/poi/java/awt/Point;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "destinationOffset == null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDestinationType(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/IIOParam;->destinationType:Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    return-void
.end method

.method public setSourceBands([I)V
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/IIOParam;->sourceBands:[I

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

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/IIOParam;->sourceBands:[I

    :goto_1
    return-void
.end method

.method public setSourceRegion(Lorg/apache/poi/java/awt/Rectangle;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/javax/imageio/IIOParam;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    return-void

    :cond_0
    iget v0, p1, Lorg/apache/poi/java/awt/Rectangle;->x:I

    if-ltz v0, :cond_6

    iget v0, p1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    if-ltz v0, :cond_5

    iget v0, p1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    if-lez v0, :cond_4

    iget v1, p1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    if-lez v1, :cond_3

    iget v2, p0, Lorg/apache/poi/javax/imageio/IIOParam;->subsamplingXOffset:I

    if-le v0, v2, :cond_2

    iget v0, p0, Lorg/apache/poi/javax/imageio/IIOParam;->subsamplingYOffset:I

    if-le v1, v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/Rectangle;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "sourceRegion.height <= subsamplingYOffset!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "sourceRegion.width <= subsamplingXOffset!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "sourceRegion.height <= 0!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "sourceRegion.width <= 0!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "sourceRegion.y < 0!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "sourceRegion.x < 0!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSourceSubsampling(IIII)V
    .locals 2

    if-lez p1, :cond_5

    if-lez p2, :cond_4

    if-ltz p3, :cond_3

    if-ge p3, p1, :cond_3

    if-ltz p4, :cond_2

    if-ge p4, p2, :cond_2

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/IIOParam;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    if-eqz v0, :cond_1

    iget v1, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    if-ge p3, v1, :cond_0

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    if-ge p4, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "region contains no pixels!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lorg/apache/poi/javax/imageio/IIOParam;->sourceXSubsampling:I

    iput p2, p0, Lorg/apache/poi/javax/imageio/IIOParam;->sourceYSubsampling:I

    iput p3, p0, Lorg/apache/poi/javax/imageio/IIOParam;->subsamplingXOffset:I

    iput p4, p0, Lorg/apache/poi/javax/imageio/IIOParam;->subsamplingYOffset:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "subsamplingYOffset out of range!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "subsamplingXOffset out of range!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "sourceYSubsampling <= 0!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "sourceXSubsampling <= 0!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
