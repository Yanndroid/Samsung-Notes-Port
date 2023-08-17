.class public Lorg/apache/poi/java/awt/TexturePaint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/Paint;


# instance fields
.field public bufImg:Lorg/apache/poi/java/awt/image/BufferedImage;

.field public sx:D

.field public sy:D

.field public tx:D

.field public ty:D


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/geom/Rectangle2D;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/java/awt/TexturePaint;->bufImg:Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/TexturePaint;->tx:D

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/TexturePaint;->ty:D

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    iget-object p1, p0, Lorg/apache/poi/java/awt/TexturePaint;->bufImg:Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getWidth()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/java/awt/TexturePaint;->sx:D

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide p1

    iget-object v0, p0, Lorg/apache/poi/java/awt/TexturePaint;->bufImg:Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/BufferedImage;->getHeight()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/poi/java/awt/TexturePaint;->sy:D

    return-void
.end method


# virtual methods
.method public createContext(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/java/awt/geom/AffineTransform;Lorg/apache/poi/java/awt/RenderingHints;)Lorg/apache/poi/java/awt/PaintContext;
    .locals 2

    if-nez p4, :cond_0

    new-instance p1, Lorg/apache/poi/java/awt/geom/AffineTransform;

    invoke-direct {p1}, Lorg/apache/poi/java/awt/geom/AffineTransform;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lorg/apache/poi/java/awt/geom/AffineTransform;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/geom/AffineTransform;

    :goto_0
    iget-wide p3, p0, Lorg/apache/poi/java/awt/TexturePaint;->tx:D

    iget-wide v0, p0, Lorg/apache/poi/java/awt/TexturePaint;->ty:D

    invoke-virtual {p1, p3, p4, v0, v1}, Lorg/apache/poi/java/awt/geom/AffineTransform;->translate(DD)V

    iget-wide p3, p0, Lorg/apache/poi/java/awt/TexturePaint;->sx:D

    iget-wide v0, p0, Lorg/apache/poi/java/awt/TexturePaint;->sy:D

    invoke-virtual {p1, p3, p4, v0, v1}, Lorg/apache/poi/java/awt/geom/AffineTransform;->scale(DD)V

    iget-object p3, p0, Lorg/apache/poi/java/awt/TexturePaint;->bufImg:Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-static {p3, p1, p5, p2}, Lorg/apache/poi/java/awt/TexturePaintContext;->getContext(Lorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/geom/AffineTransform;Lorg/apache/poi/java/awt/RenderingHints;Lorg/apache/poi/java/awt/Rectangle;)Lorg/apache/poi/java/awt/PaintContext;

    move-result-object p1

    return-object p1
.end method

.method public getAnchorRect()Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 12

    new-instance v9, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    iget-wide v1, p0, Lorg/apache/poi/java/awt/TexturePaint;->tx:D

    iget-wide v3, p0, Lorg/apache/poi/java/awt/TexturePaint;->ty:D

    iget-wide v5, p0, Lorg/apache/poi/java/awt/TexturePaint;->sx:D

    iget-object v0, p0, Lorg/apache/poi/java/awt/TexturePaint;->bufImg:Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/BufferedImage;->getWidth()I

    move-result v0

    int-to-double v7, v0

    mul-double/2addr v5, v7

    iget-wide v7, p0, Lorg/apache/poi/java/awt/TexturePaint;->sy:D

    iget-object v0, p0, Lorg/apache/poi/java/awt/TexturePaint;->bufImg:Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/BufferedImage;->getHeight()I

    move-result v0

    int-to-double v10, v0

    mul-double/2addr v7, v10

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v9
.end method

.method public getImage()Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/TexturePaint;->bufImg:Lorg/apache/poi/java/awt/image/BufferedImage;

    return-object v0
.end method

.method public getTransparency()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/TexturePaint;->bufImg:Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/BufferedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->getTransparency()I

    move-result v0

    return v0
.end method
