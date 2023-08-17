.class public Lorg/apache/poi/sl/draw/DrawShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/Drawable;


# instance fields
.field public final shape:Lorg/apache/poi/sl/usermodel/Shape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/Shape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    return-void
.end method

.method public static getAnchor(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/java/awt/geom/Rectangle2D;)Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 1

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Graphics2D;->getRenderingHint(Lorg/apache/poi/java/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/geom/AffineTransform;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/AffineTransform;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/geom/AffineTransform;->createTransformedShape(Lorg/apache/poi/java/awt/Shape;)Lorg/apache/poi/java/awt/Shape;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/java/awt/Shape;->getBounds2D()Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public static getAnchor(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/java/awt/Graphics2D;",
            "Lorg/apache/poi/sl/usermodel/PlaceableShape<",
            "**>;)",
            "Lorg/apache/poi/java/awt/geom/Rectangle2D;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getAnchor()Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/java/awt/geom/Rectangle2D;)Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public static getStroke(Lorg/apache/poi/sl/usermodel/StrokeStyle;)Lorg/apache/poi/java/awt/BasicStroke;
    .locals 8

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineWidth()D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3e800000    # 0.25f

    :cond_0
    move v5, v0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->SOLID:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    :cond_1
    iget-object v0, v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->pattern:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    array-length v1, v0

    new-array v1, v1, [F

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    aget v4, v0, v3

    int-to-float v4, v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float/2addr v4, v6

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v6, v1

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineCap()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-result-object p0

    if-nez p0, :cond_3

    sget-object p0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->FLAT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    :cond_3
    sget-object v0, Lorg/apache/poi/sl/draw/DrawShape$1;->$SwitchMap$org$apache$poi$sl$usermodel$StrokeStyle$LineCap:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v0

    goto :goto_1

    :cond_5
    move v3, v1

    :goto_1
    const/4 v4, 0x1

    new-instance p0, Lorg/apache/poi/java/awt/BasicStroke;

    const/4 v7, 0x0

    move-object v1, p0

    move v2, v5

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/java/awt/BasicStroke;-><init>(FIIF[FF)V

    return-object p0
.end method

.method public static isHSLF(Lorg/apache/poi/sl/usermodel/Shape;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "hslf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static safeScale(DD)D
    .locals 5

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-nez v2, :cond_0

    return-wide v3

    :cond_0
    cmpl-double v0, p2, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    div-double v3, p0, p2

    :goto_0
    return-wide v3
.end method


# virtual methods
.method public applyTransform(Lorg/apache/poi/java/awt/Graphics2D;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    instance-of v3, v2, Lorg/apache/poi/sl/usermodel/PlaceableShape;

    if-nez v3, :cond_0

    return-void

    :cond_0
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/sl/usermodel/PlaceableShape;

    invoke-static {v2}, Lorg/apache/poi/sl/draw/DrawShape;->isHSLF(Lorg/apache/poi/sl/usermodel/Shape;)Z

    move-result v2

    sget-object v4, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {v1, v4}, Lorg/apache/poi/java/awt/Graphics2D;->getRenderingHint(Lorg/apache/poi/java/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/java/awt/geom/AffineTransform;

    if-nez v4, :cond_1

    new-instance v4, Lorg/apache/poi/java/awt/geom/AffineTransform;

    invoke-direct {v4}, Lorg/apache/poi/java/awt/geom/AffineTransform;-><init>()V

    :cond_1
    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getAnchor()Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/java/awt/geom/AffineTransform;->createTransformedShape(Lorg/apache/poi/java/awt/Shape;)Lorg/apache/poi/java/awt/Shape;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/poi/java/awt/Shape;->getBounds2D()Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v5

    const/4 v6, 0x3

    new-array v7, v6, [C

    if-eqz v2, :cond_2

    fill-array-data v7, :array_0

    goto :goto_0

    :cond_2
    fill-array-data v7, :array_1

    :goto_0
    array-length v8, v7

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_f

    aget-char v11, v7, v10

    const/16 v12, 0x68

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    move/from16 v16, v10

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-eq v11, v12, :cond_d

    const/16 v12, 0x72

    if-eq v11, v12, :cond_5

    const/16 v12, 0x76

    if-ne v11, v12, :cond_4

    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getFlipVertical()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v11

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v17

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v19

    move-object/from16 v21, v7

    add-double v6, v17, v19

    invoke-virtual {v1, v11, v12, v6, v7}, Lorg/apache/poi/java/awt/Graphics2D;->translate(DD)V

    invoke-virtual {v1, v9, v10, v13, v14}, Lorg/apache/poi/java/awt/Graphics2D;->scale(DD)V

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v9

    neg-double v9, v9

    invoke-virtual {v1, v6, v7, v9, v10}, Lorg/apache/poi/java/awt/Graphics2D;->translate(DD)V

    goto/16 :goto_5

    :cond_3
    move-object/from16 v21, v7

    goto/16 :goto_5

    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected transform code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move-object/from16 v21, v7

    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getRotation()D

    move-result-wide v6

    const-wide/16 v11, 0x0

    cmpl-double v13, v6, v11

    if-eqz v13, :cond_c

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v13

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v9

    const-wide v19, 0x4076800000000000L    # 360.0

    rem-double v6, v6, v19

    cmpg-double v22, v6, v11

    if-gez v22, :cond_6

    add-double v6, v6, v19

    :cond_6
    double-to-int v15, v6

    add-int/lit8 v15, v15, 0x2d

    div-int/lit8 v15, v15, 0x5a

    rem-int/lit8 v15, v15, 0x4

    const/4 v11, 0x1

    if-eq v15, v11, :cond_8

    const/4 v11, 0x3

    if-ne v15, v11, :cond_7

    goto :goto_2

    :cond_7
    move-object v11, v1

    move-wide/from16 v23, v6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v15, 0x0

    goto :goto_4

    :cond_8
    :goto_2
    new-instance v11, Lorg/apache/poi/java/awt/geom/AffineTransform;

    if-eqz v2, :cond_9

    invoke-direct {v11, v4}, Lorg/apache/poi/java/awt/geom/AffineTransform;-><init>(Lorg/apache/poi/java/awt/geom/AffineTransform;)V

    move-wide/from16 v23, v6

    goto :goto_3

    :cond_9
    invoke-direct {v11}, Lorg/apache/poi/java/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {v11, v13, v14, v9, v10}, Lorg/apache/poi/java/awt/geom/AffineTransform;->translate(DD)V

    move-wide/from16 v23, v6

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-virtual {v11, v6, v7}, Lorg/apache/poi/java/awt/geom/AffineTransform;->rotate(D)V

    neg-double v6, v13

    neg-double v0, v9

    invoke-virtual {v11, v6, v7, v0, v1}, Lorg/apache/poi/java/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v11, v4}, Lorg/apache/poi/java/awt/geom/AffineTransform;->concatenate(Lorg/apache/poi/java/awt/geom/AffineTransform;)V

    :goto_3
    invoke-virtual {v11, v13, v14, v9, v10}, Lorg/apache/poi/java/awt/geom/AffineTransform;->translate(DD)V

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-virtual {v11, v0, v1}, Lorg/apache/poi/java/awt/geom/AffineTransform;->rotate(D)V

    neg-double v0, v13

    neg-double v6, v9

    invoke-virtual {v11, v0, v1, v6, v7}, Lorg/apache/poi/java/awt/geom/AffineTransform;->translate(DD)V

    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getAnchor()Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/apache/poi/java/awt/geom/AffineTransform;->createTransformedShape(Lorg/apache/poi/java/awt/Shape;)Lorg/apache/poi/java/awt/Shape;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/java/awt/Shape;->getBounds2D()Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v11

    invoke-static {v6, v7, v11, v12}, Lorg/apache/poi/sl/draw/DrawShape;->safeScale(DD)D

    move-result-wide v6

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v11

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    invoke-static {v11, v12, v0, v1}, Lorg/apache/poi/sl/draw/DrawShape;->safeScale(DD)D

    move-result-wide v0

    move-object/from16 v11, p1

    :goto_4
    invoke-virtual {v11, v13, v14, v9, v10}, Lorg/apache/poi/java/awt/Graphics2D;->translate(DD)V

    move-object v12, v4

    move-object/from16 v20, v5

    int-to-double v4, v15

    const-wide v17, 0x4056800000000000L    # 90.0

    mul-double v4, v4, v17

    sub-double v17, v23, v4

    move/from16 v23, v2

    move-object v15, v3

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const-wide/16 v17, 0x0

    cmpl-double v22, v2, v17

    if-eqz v22, :cond_a

    invoke-virtual {v11, v2, v3}, Lorg/apache/poi/java/awt/Graphics2D;->rotate(D)V

    :cond_a
    invoke-virtual {v11, v6, v7, v0, v1}, Lorg/apache/poi/java/awt/Graphics2D;->scale(DD)V

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    cmpl-double v2, v0, v17

    if-eqz v2, :cond_b

    invoke-virtual {v11, v0, v1}, Lorg/apache/poi/java/awt/Graphics2D;->rotate(D)V

    :cond_b
    neg-double v0, v13

    neg-double v2, v9

    goto :goto_6

    :cond_c
    :goto_5
    move-object v11, v1

    move/from16 v23, v2

    move-object v15, v3

    move-object v12, v4

    move-object/from16 v20, v5

    goto :goto_7

    :cond_d
    move-object v11, v1

    move/from16 v23, v2

    move-object v15, v3

    move-object v12, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v7

    invoke-interface {v15}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getFlipHorizontal()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual/range {v20 .. v20}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual/range {v20 .. v20}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    invoke-virtual {v11, v0, v1, v2, v3}, Lorg/apache/poi/java/awt/Graphics2D;->translate(DD)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v11, v13, v14, v0, v1}, Lorg/apache/poi/java/awt/Graphics2D;->scale(DD)V

    invoke-virtual/range {v20 .. v20}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    neg-double v2, v2

    :goto_6
    invoke-virtual {v11, v0, v1, v2, v3}, Lorg/apache/poi/java/awt/Graphics2D;->translate(DD)V

    :cond_e
    :goto_7
    add-int/lit8 v10, v16, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v4, v12

    move-object v3, v15

    move-object/from16 v5, v20

    move-object/from16 v7, v21

    move/from16 v2, v23

    const/4 v6, 0x3

    goto/16 :goto_1

    :cond_f
    return-void

    nop

    :array_0
    .array-data 2
        0x68s
        0x76s
        0x72s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x72s
        0x68s
        0x76s
    .end array-data
.end method

.method public draw(Lorg/apache/poi/java/awt/Graphics2D;)V
    .locals 0

    return-void
.end method

.method public drawContent(Lorg/apache/poi/java/awt/Graphics2D;)V
    .locals 0

    return-void
.end method

.method public getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    return-object v0
.end method
