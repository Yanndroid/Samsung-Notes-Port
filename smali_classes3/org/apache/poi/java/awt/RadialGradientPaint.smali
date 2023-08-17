.class public final Lorg/apache/poi/java/awt/RadialGradientPaint;
.super Lorg/apache/poi/java/awt/MultipleGradientPaint;
.source "SourceFile"


# instance fields
.field private final center:Lorg/apache/poi/java/awt/geom/Point2D;

.field private final focus:Lorg/apache/poi/java/awt/geom/Point2D;

.field private final radius:F


# direct methods
.method public constructor <init>(FFFFF[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;)V
    .locals 7

    new-instance v1, Lorg/apache/poi/java/awt/geom/Point2D$Float;

    invoke-direct {v1, p1, p2}, Lorg/apache/poi/java/awt/geom/Point2D$Float;-><init>(FF)V

    new-instance v3, Lorg/apache/poi/java/awt/geom/Point2D$Float;

    invoke-direct {v3, p4, p5}, Lorg/apache/poi/java/awt/geom/Point2D$Float;-><init>(FF)V

    move-object v0, p0

    move v2, p3

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/java/awt/RadialGradientPaint;-><init>(Lorg/apache/poi/java/awt/geom/Point2D;FLorg/apache/poi/java/awt/geom/Point2D;[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;)V

    return-void
.end method

.method public constructor <init>(FFF[F[Lorg/apache/poi/java/awt/Color;)V
    .locals 9

    sget-object v8, Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;->NO_CYCLE:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p1

    move v5, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/java/awt/RadialGradientPaint;-><init>(FFFFF[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;)V

    return-void
.end method

.method public constructor <init>(FFF[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p1

    move v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/java/awt/RadialGradientPaint;-><init>(FFFFF[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/geom/Point2D;FLorg/apache/poi/java/awt/geom/Point2D;[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;)V
    .locals 9

    sget-object v7, Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;->SRGB:Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    new-instance v8, Lorg/apache/poi/java/awt/geom/AffineTransform;

    invoke-direct {v8}, Lorg/apache/poi/java/awt/geom/AffineTransform;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/java/awt/RadialGradientPaint;-><init>(Lorg/apache/poi/java/awt/geom/Point2D;FLorg/apache/poi/java/awt/geom/Point2D;[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;Lorg/apache/poi/java/awt/geom/AffineTransform;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/geom/Point2D;FLorg/apache/poi/java/awt/geom/Point2D;[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;Lorg/apache/poi/java/awt/geom/AffineTransform;)V
    .locals 6
    .annotation runtime Ljava/beans/ConstructorProperties;
        value = {
            "centerPoint",
            "radius",
            "focusPoint",
            "fractions",
            "colors",
            "cycleMethod",
            "colorSpace",
            "transform"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/MultipleGradientPaint;-><init>([F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;Lorg/apache/poi/java/awt/geom/AffineTransform;)V

    const-string p4, "Center point must be non-null"

    invoke-static {p1, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p4, "Focus point must be non-null"

    invoke-static {p3, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p4, 0x0

    cmpg-float p4, p2, p4

    if-lez p4, :cond_0

    new-instance p4, Lorg/apache/poi/java/awt/geom/Point2D$Double;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide p5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide p7

    invoke-direct {p4, p5, p6, p7, p8}, Lorg/apache/poi/java/awt/geom/Point2D$Double;-><init>(DD)V

    iput-object p4, p0, Lorg/apache/poi/java/awt/RadialGradientPaint;->center:Lorg/apache/poi/java/awt/geom/Point2D;

    new-instance p1, Lorg/apache/poi/java/awt/geom/Point2D$Double;

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide p4

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide p6

    invoke-direct {p1, p4, p5, p6, p7}, Lorg/apache/poi/java/awt/geom/Point2D$Double;-><init>(DD)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/RadialGradientPaint;->focus:Lorg/apache/poi/java/awt/geom/Point2D;

    iput p2, p0, Lorg/apache/poi/java/awt/RadialGradientPaint;->radius:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Radius must be greater than zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/geom/Point2D;F[F[Lorg/apache/poi/java/awt/Color;)V
    .locals 7

    sget-object v6, Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;->NO_CYCLE:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/java/awt/RadialGradientPaint;-><init>(Lorg/apache/poi/java/awt/geom/Point2D;FLorg/apache/poi/java/awt/geom/Point2D;[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/geom/Point2D;F[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/java/awt/RadialGradientPaint;-><init>(Lorg/apache/poi/java/awt/geom/Point2D;FLorg/apache/poi/java/awt/geom/Point2D;[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/geom/Rectangle2D;[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;)V
    .locals 9

    new-instance v1, Lorg/apache/poi/java/awt/geom/Point2D$Double;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/java/awt/geom/Point2D$Double;-><init>(DD)V

    new-instance v3, Lorg/apache/poi/java/awt/geom/Point2D$Double;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/poi/java/awt/geom/Point2D$Double;-><init>(DD)V

    sget-object v7, Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;->SRGB:Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    invoke-static {p1}, Lorg/apache/poi/java/awt/RadialGradientPaint;->createGradientTransform(Lorg/apache/poi/java/awt/geom/Rectangle2D;)Lorg/apache/poi/java/awt/geom/AffineTransform;

    move-result-object v8

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/java/awt/RadialGradientPaint;-><init>(Lorg/apache/poi/java/awt/geom/Point2D;FLorg/apache/poi/java/awt/geom/Point2D;[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;Lorg/apache/poi/java/awt/geom/AffineTransform;)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Gradient bounds must be non-empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static createGradientTransform(Lorg/apache/poi/java/awt/geom/Rectangle2D;)Lorg/apache/poi/java/awt/geom/AffineTransform;
    .locals 11

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/poi/java/awt/geom/AffineTransform;->getTranslateInstance(DD)Lorg/apache/poi/java/awt/geom/AffineTransform;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v9

    div-double/2addr v9, v7

    invoke-virtual {v4, v5, v6, v9, v10}, Lorg/apache/poi/java/awt/geom/AffineTransform;->scale(DD)V

    neg-double v0, v0

    neg-double v2, v2

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/apache/poi/java/awt/geom/AffineTransform;->translate(DD)V

    return-object v4
.end method


# virtual methods
.method public createContext(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/java/awt/geom/AffineTransform;Lorg/apache/poi/java/awt/RenderingHints;)Lorg/apache/poi/java/awt/PaintContext;
    .locals 18

    move-object/from16 v15, p0

    new-instance v5, Lorg/apache/poi/java/awt/geom/AffineTransform;

    move-object/from16 v0, p4

    invoke-direct {v5, v0}, Lorg/apache/poi/java/awt/geom/AffineTransform;-><init>(Lorg/apache/poi/java/awt/geom/AffineTransform;)V

    iget-object v0, v15, Lorg/apache/poi/java/awt/MultipleGradientPaint;->gradientTransform:Lorg/apache/poi/java/awt/geom/AffineTransform;

    invoke-virtual {v5, v0}, Lorg/apache/poi/java/awt/geom/AffineTransform;->concatenate(Lorg/apache/poi/java/awt/geom/AffineTransform;)V

    new-instance v16, Lorg/apache/poi/java/awt/RadialGradientPaintContext;

    iget-object v0, v15, Lorg/apache/poi/java/awt/RadialGradientPaint;->center:Lorg/apache/poi/java/awt/geom/Point2D;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide v0

    double-to-float v7, v0

    iget-object v0, v15, Lorg/apache/poi/java/awt/RadialGradientPaint;->center:Lorg/apache/poi/java/awt/geom/Point2D;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide v0

    double-to-float v8, v0

    iget v9, v15, Lorg/apache/poi/java/awt/RadialGradientPaint;->radius:F

    iget-object v0, v15, Lorg/apache/poi/java/awt/RadialGradientPaint;->focus:Lorg/apache/poi/java/awt/geom/Point2D;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide v0

    double-to-float v10, v0

    iget-object v0, v15, Lorg/apache/poi/java/awt/RadialGradientPaint;->focus:Lorg/apache/poi/java/awt/geom/Point2D;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide v0

    double-to-float v11, v0

    iget-object v12, v15, Lorg/apache/poi/java/awt/MultipleGradientPaint;->fractions:[F

    iget-object v13, v15, Lorg/apache/poi/java/awt/MultipleGradientPaint;->colors:[Lorg/apache/poi/java/awt/Color;

    iget-object v14, v15, Lorg/apache/poi/java/awt/MultipleGradientPaint;->cycleMethod:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    iget-object v6, v15, Lorg/apache/poi/java/awt/MultipleGradientPaint;->colorSpace:Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v17, v6

    move-object/from16 v6, p5

    move-object/from16 v15, v17

    invoke-direct/range {v0 .. v15}, Lorg/apache/poi/java/awt/RadialGradientPaintContext;-><init>(Lorg/apache/poi/java/awt/RadialGradientPaint;Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/java/awt/geom/AffineTransform;Lorg/apache/poi/java/awt/RenderingHints;FFFFF[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;)V

    return-object v16
.end method

.method public getCenterPoint()Lorg/apache/poi/java/awt/geom/Point2D;
    .locals 5

    new-instance v0, Lorg/apache/poi/java/awt/geom/Point2D$Double;

    iget-object v1, p0, Lorg/apache/poi/java/awt/RadialGradientPaint;->center:Lorg/apache/poi/java/awt/geom/Point2D;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/poi/java/awt/RadialGradientPaint;->center:Lorg/apache/poi/java/awt/geom/Point2D;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public getFocusPoint()Lorg/apache/poi/java/awt/geom/Point2D;
    .locals 5

    new-instance v0, Lorg/apache/poi/java/awt/geom/Point2D$Double;

    iget-object v1, p0, Lorg/apache/poi/java/awt/RadialGradientPaint;->focus:Lorg/apache/poi/java/awt/geom/Point2D;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/poi/java/awt/RadialGradientPaint;->focus:Lorg/apache/poi/java/awt/geom/Point2D;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/RadialGradientPaint;->radius:F

    return v0
.end method
