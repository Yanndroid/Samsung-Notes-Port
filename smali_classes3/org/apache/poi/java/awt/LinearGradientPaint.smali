.class public final Lorg/apache/poi/java/awt/LinearGradientPaint;
.super Lorg/apache/poi/java/awt/MultipleGradientPaint;
.source "SourceFile"


# instance fields
.field private final end:Lorg/apache/poi/java/awt/geom/Point2D;

.field private final start:Lorg/apache/poi/java/awt/geom/Point2D;


# direct methods
.method public constructor <init>(FFFF[F[Lorg/apache/poi/java/awt/Color;)V
    .locals 6

    new-instance v1, Lorg/apache/poi/java/awt/geom/Point2D$Float;

    invoke-direct {v1, p1, p2}, Lorg/apache/poi/java/awt/geom/Point2D$Float;-><init>(FF)V

    new-instance v2, Lorg/apache/poi/java/awt/geom/Point2D$Float;

    invoke-direct {v2, p3, p4}, Lorg/apache/poi/java/awt/geom/Point2D$Float;-><init>(FF)V

    sget-object v5, Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;->NO_CYCLE:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    move-object v0, p0

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/LinearGradientPaint;-><init>(Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/Point2D;[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;)V

    return-void
.end method

.method public constructor <init>(FFFF[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;)V
    .locals 6

    new-instance v1, Lorg/apache/poi/java/awt/geom/Point2D$Float;

    invoke-direct {v1, p1, p2}, Lorg/apache/poi/java/awt/geom/Point2D$Float;-><init>(FF)V

    new-instance v2, Lorg/apache/poi/java/awt/geom/Point2D$Float;

    invoke-direct {v2, p3, p4}, Lorg/apache/poi/java/awt/geom/Point2D$Float;-><init>(FF)V

    move-object v0, p0

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/LinearGradientPaint;-><init>(Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/Point2D;[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/Point2D;[F[Lorg/apache/poi/java/awt/Color;)V
    .locals 6

    sget-object v5, Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;->NO_CYCLE:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/LinearGradientPaint;-><init>(Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/Point2D;[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/Point2D;[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;)V
    .locals 8

    sget-object v6, Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;->SRGB:Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    new-instance v7, Lorg/apache/poi/java/awt/geom/AffineTransform;

    invoke-direct {v7}, Lorg/apache/poi/java/awt/geom/AffineTransform;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/java/awt/LinearGradientPaint;-><init>(Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/Point2D;[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;Lorg/apache/poi/java/awt/geom/AffineTransform;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/Point2D;[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;Lorg/apache/poi/java/awt/geom/AffineTransform;)V
    .locals 6
    .annotation runtime Ljava/beans/ConstructorProperties;
        value = {
            "startPoint",
            "endPoint",
            "fractions",
            "colors",
            "cycleMethod",
            "colorSpace",
            "transform"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/MultipleGradientPaint;-><init>([F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;Lorg/apache/poi/java/awt/geom/AffineTransform;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lorg/apache/poi/java/awt/geom/Point2D;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    new-instance p3, Lorg/apache/poi/java/awt/geom/Point2D$Double;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide p4

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide p6

    invoke-direct {p3, p4, p5, p6, p7}, Lorg/apache/poi/java/awt/geom/Point2D$Double;-><init>(DD)V

    iput-object p3, p0, Lorg/apache/poi/java/awt/LinearGradientPaint;->start:Lorg/apache/poi/java/awt/geom/Point2D;

    new-instance p1, Lorg/apache/poi/java/awt/geom/Point2D$Double;

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide p3

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide p5

    invoke-direct {p1, p3, p4, p5, p6}, Lorg/apache/poi/java/awt/geom/Point2D$Double;-><init>(DD)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/LinearGradientPaint;->end:Lorg/apache/poi/java/awt/geom/Point2D;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Start point cannot equalendpoint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Start and end points must benon-null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createContext(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/java/awt/geom/AffineTransform;Lorg/apache/poi/java/awt/RenderingHints;)Lorg/apache/poi/java/awt/PaintContext;
    .locals 15

    move-object v13, p0

    new-instance v5, Lorg/apache/poi/java/awt/geom/AffineTransform;

    move-object/from16 v0, p4

    invoke-direct {v5, v0}, Lorg/apache/poi/java/awt/geom/AffineTransform;-><init>(Lorg/apache/poi/java/awt/geom/AffineTransform;)V

    iget-object v0, v13, Lorg/apache/poi/java/awt/MultipleGradientPaint;->gradientTransform:Lorg/apache/poi/java/awt/geom/AffineTransform;

    invoke-virtual {v5, v0}, Lorg/apache/poi/java/awt/geom/AffineTransform;->concatenate(Lorg/apache/poi/java/awt/geom/AffineTransform;)V

    iget-object v0, v13, Lorg/apache/poi/java/awt/MultipleGradientPaint;->fractions:[F

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, v13, Lorg/apache/poi/java/awt/MultipleGradientPaint;->cycleMethod:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    sget-object v1, Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;->REPEAT:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    if-eq v0, v1, :cond_1

    iget-object v1, v13, Lorg/apache/poi/java/awt/MultipleGradientPaint;->colorSpace:Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    sget-object v2, Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;->SRGB:Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;->NO_CYCLE:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v3

    :goto_0
    new-instance v8, Lorg/apache/poi/java/awt/GradientPaintContext;

    iget-object v4, v13, Lorg/apache/poi/java/awt/LinearGradientPaint;->start:Lorg/apache/poi/java/awt/geom/Point2D;

    iget-object v6, v13, Lorg/apache/poi/java/awt/LinearGradientPaint;->end:Lorg/apache/poi/java/awt/geom/Point2D;

    iget-object v0, v13, Lorg/apache/poi/java/awt/MultipleGradientPaint;->colors:[Lorg/apache/poi/java/awt/Color;

    aget-object v9, v0, v3

    aget-object v10, v0, v2

    move-object v0, v8

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v6

    move-object v4, v5

    move-object v5, v9

    move-object v6, v10

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/java/awt/GradientPaintContext;-><init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/AffineTransform;Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/Color;Z)V

    return-object v8

    :cond_1
    new-instance v14, Lorg/apache/poi/java/awt/LinearGradientPaintContext;

    iget-object v7, v13, Lorg/apache/poi/java/awt/LinearGradientPaint;->start:Lorg/apache/poi/java/awt/geom/Point2D;

    iget-object v8, v13, Lorg/apache/poi/java/awt/LinearGradientPaint;->end:Lorg/apache/poi/java/awt/geom/Point2D;

    iget-object v9, v13, Lorg/apache/poi/java/awt/MultipleGradientPaint;->fractions:[F

    iget-object v10, v13, Lorg/apache/poi/java/awt/MultipleGradientPaint;->colors:[Lorg/apache/poi/java/awt/Color;

    iget-object v11, v13, Lorg/apache/poi/java/awt/MultipleGradientPaint;->cycleMethod:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    iget-object v12, v13, Lorg/apache/poi/java/awt/MultipleGradientPaint;->colorSpace:Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v12}, Lorg/apache/poi/java/awt/LinearGradientPaintContext;-><init>(Lorg/apache/poi/java/awt/LinearGradientPaint;Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/java/awt/geom/AffineTransform;Lorg/apache/poi/java/awt/RenderingHints;Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/Point2D;[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;)V

    return-object v14
.end method

.method public getEndPoint()Lorg/apache/poi/java/awt/geom/Point2D;
    .locals 5

    new-instance v0, Lorg/apache/poi/java/awt/geom/Point2D$Double;

    iget-object v1, p0, Lorg/apache/poi/java/awt/LinearGradientPaint;->end:Lorg/apache/poi/java/awt/geom/Point2D;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/poi/java/awt/LinearGradientPaint;->end:Lorg/apache/poi/java/awt/geom/Point2D;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public getStartPoint()Lorg/apache/poi/java/awt/geom/Point2D;
    .locals 5

    new-instance v0, Lorg/apache/poi/java/awt/geom/Point2D$Double;

    iget-object v1, p0, Lorg/apache/poi/java/awt/LinearGradientPaint;->start:Lorg/apache/poi/java/awt/geom/Point2D;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/poi/java/awt/LinearGradientPaint;->start:Lorg/apache/poi/java/awt/geom/Point2D;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method
