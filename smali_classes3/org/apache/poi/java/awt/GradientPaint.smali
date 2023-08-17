.class public Lorg/apache/poi/java/awt/GradientPaint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/Paint;


# instance fields
.field public color1:Lorg/apache/poi/java/awt/Color;

.field public color2:Lorg/apache/poi/java/awt/Color;

.field public cyclic:Z

.field public p1:Lorg/apache/poi/java/awt/geom/Point2D$Float;

.field public p2:Lorg/apache/poi/java/awt/geom/Point2D$Float;


# direct methods
.method public constructor <init>(FFLorg/apache/poi/java/awt/Color;FFLorg/apache/poi/java/awt/Color;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    if-eqz p6, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/geom/Point2D$Float;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/java/awt/geom/Point2D$Float;-><init>(FF)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/GradientPaint;->p1:Lorg/apache/poi/java/awt/geom/Point2D$Float;

    new-instance p1, Lorg/apache/poi/java/awt/geom/Point2D$Float;

    invoke-direct {p1, p4, p5}, Lorg/apache/poi/java/awt/geom/Point2D$Float;-><init>(FF)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/GradientPaint;->p2:Lorg/apache/poi/java/awt/geom/Point2D$Float;

    iput-object p3, p0, Lorg/apache/poi/java/awt/GradientPaint;->color1:Lorg/apache/poi/java/awt/Color;

    iput-object p6, p0, Lorg/apache/poi/java/awt/GradientPaint;->color2:Lorg/apache/poi/java/awt/Color;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Colors cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(FFLorg/apache/poi/java/awt/Color;FFLorg/apache/poi/java/awt/Color;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/apache/poi/java/awt/GradientPaint;-><init>(FFLorg/apache/poi/java/awt/Color;FFLorg/apache/poi/java/awt/Color;)V

    iput-boolean p7, p0, Lorg/apache/poi/java/awt/GradientPaint;->cyclic:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/Color;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/geom/Point2D$Float;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide v2

    double-to-float p1, v2

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/java/awt/geom/Point2D$Float;-><init>(FF)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/GradientPaint;->p1:Lorg/apache/poi/java/awt/geom/Point2D$Float;

    new-instance p1, Lorg/apache/poi/java/awt/geom/Point2D$Float;

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide v1

    double-to-float p3, v1

    invoke-direct {p1, v0, p3}, Lorg/apache/poi/java/awt/geom/Point2D$Float;-><init>(FF)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/GradientPaint;->p2:Lorg/apache/poi/java/awt/geom/Point2D$Float;

    iput-object p2, p0, Lorg/apache/poi/java/awt/GradientPaint;->color1:Lorg/apache/poi/java/awt/Color;

    iput-object p4, p0, Lorg/apache/poi/java/awt/GradientPaint;->color2:Lorg/apache/poi/java/awt/Color;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Colors and points should be non-null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/Color;Z)V
    .locals 0
    .annotation runtime Ljava/beans/ConstructorProperties;
        value = {
            "point1",
            "color1",
            "point2",
            "color2",
            "cyclic"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/GradientPaint;-><init>(Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/Color;)V

    iput-boolean p5, p0, Lorg/apache/poi/java/awt/GradientPaint;->cyclic:Z

    return-void
.end method


# virtual methods
.method public createContext(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/java/awt/geom/AffineTransform;Lorg/apache/poi/java/awt/RenderingHints;)Lorg/apache/poi/java/awt/PaintContext;
    .locals 8

    new-instance p2, Lorg/apache/poi/java/awt/GradientPaintContext;

    iget-object v2, p0, Lorg/apache/poi/java/awt/GradientPaint;->p1:Lorg/apache/poi/java/awt/geom/Point2D$Float;

    iget-object v3, p0, Lorg/apache/poi/java/awt/GradientPaint;->p2:Lorg/apache/poi/java/awt/geom/Point2D$Float;

    iget-object v5, p0, Lorg/apache/poi/java/awt/GradientPaint;->color1:Lorg/apache/poi/java/awt/Color;

    iget-object v6, p0, Lorg/apache/poi/java/awt/GradientPaint;->color2:Lorg/apache/poi/java/awt/Color;

    iget-boolean v7, p0, Lorg/apache/poi/java/awt/GradientPaint;->cyclic:Z

    move-object v0, p2

    move-object v1, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/java/awt/GradientPaintContext;-><init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/AffineTransform;Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/Color;Z)V

    return-object p2
.end method

.method public getColor1()Lorg/apache/poi/java/awt/Color;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/GradientPaint;->color1:Lorg/apache/poi/java/awt/Color;

    return-object v0
.end method

.method public getColor2()Lorg/apache/poi/java/awt/Color;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/GradientPaint;->color2:Lorg/apache/poi/java/awt/Color;

    return-object v0
.end method

.method public getPoint1()Lorg/apache/poi/java/awt/geom/Point2D;
    .locals 3

    new-instance v0, Lorg/apache/poi/java/awt/geom/Point2D$Float;

    iget-object v1, p0, Lorg/apache/poi/java/awt/GradientPaint;->p1:Lorg/apache/poi/java/awt/geom/Point2D$Float;

    iget v2, v1, Lorg/apache/poi/java/awt/geom/Point2D$Float;->x:F

    iget v1, v1, Lorg/apache/poi/java/awt/geom/Point2D$Float;->y:F

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/java/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getPoint2()Lorg/apache/poi/java/awt/geom/Point2D;
    .locals 3

    new-instance v0, Lorg/apache/poi/java/awt/geom/Point2D$Float;

    iget-object v1, p0, Lorg/apache/poi/java/awt/GradientPaint;->p2:Lorg/apache/poi/java/awt/geom/Point2D$Float;

    iget v2, v1, Lorg/apache/poi/java/awt/geom/Point2D$Float;->x:F

    iget v1, v1, Lorg/apache/poi/java/awt/geom/Point2D$Float;->y:F

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/java/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getTransparency()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/GradientPaint;->color1:Lorg/apache/poi/java/awt/Color;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Color;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/GradientPaint;->color2:Lorg/apache/poi/java/awt/Color;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Color;->getAlpha()I

    move-result v1

    and-int/2addr v0, v1

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public isCyclic()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/GradientPaint;->cyclic:Z

    return v0
.end method
