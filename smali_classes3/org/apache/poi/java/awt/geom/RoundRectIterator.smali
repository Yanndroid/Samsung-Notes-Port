.class Lorg/apache/poi/java/awt/geom/RoundRectIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/geom/PathIterator;


# static fields
.field private static final a:D

.field private static final acv:D

.field private static final angle:D = 0.7853981633974483

.field private static final b:D

.field private static final c:D

.field private static ctrlpts:[[D

.field private static final cv:D

.field private static types:[I


# instance fields
.field public affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

.field public ah:D

.field public aw:D

.field public h:D

.field public index:I

.field public w:D

.field public x:D

.field public y:D


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    sput-wide v2, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->a:D

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->b:D

    mul-double v6, v0, v0

    add-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    sub-double/2addr v6, v4

    add-double/2addr v6, v2

    sput-wide v6, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->c:D

    const-wide v8, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr v2, v8

    mul-double/2addr v2, v0

    div-double/2addr v2, v6

    sput-wide v2, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->cv:D

    sub-double v0, v4, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    sput-wide v0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->acv:D

    const/16 v2, 0xa

    new-array v3, v2, [[D

    const/4 v6, 0x4

    new-array v7, v6, [D

    fill-array-data v7, :array_0

    const/4 v8, 0x0

    aput-object v7, v3, v8

    new-array v7, v6, [D

    fill-array-data v7, :array_1

    const/4 v9, 0x1

    aput-object v7, v3, v9

    const/16 v7, 0xc

    new-array v10, v7, [D

    const-wide/16 v11, 0x0

    aput-wide v11, v10, v8

    aput-wide v11, v10, v9

    const/4 v13, 0x2

    aput-wide v4, v10, v13

    neg-double v14, v0

    const/16 v16, 0x3

    aput-wide v14, v10, v16

    aput-wide v11, v10, v6

    const/4 v14, 0x5

    aput-wide v0, v10, v14

    const/4 v15, 0x6

    aput-wide v4, v10, v15

    const/16 v17, 0x7

    aput-wide v11, v10, v17

    const/16 v18, 0x8

    aput-wide v11, v10, v18

    const/16 v19, 0x9

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    aput-wide v20, v10, v19

    aput-wide v4, v10, v2

    const/16 v22, 0xb

    aput-wide v11, v10, v22

    aput-object v10, v3, v13

    new-array v10, v6, [D

    fill-array-data v10, :array_2

    aput-object v10, v3, v16

    new-array v10, v7, [D

    aput-wide v4, v10, v8

    neg-double v7, v0

    aput-wide v7, v10, v9

    aput-wide v4, v10, v13

    aput-wide v11, v10, v16

    aput-wide v4, v10, v6

    aput-wide v11, v10, v14

    aput-wide v4, v10, v15

    neg-double v7, v0

    aput-wide v7, v10, v17

    aput-wide v4, v10, v18

    aput-wide v11, v10, v19

    aput-wide v4, v10, v2

    const-wide/high16 v7, -0x4020000000000000L    # -0.5

    aput-wide v7, v10, v22

    aput-object v10, v3, v6

    new-array v10, v6, [D

    fill-array-data v10, :array_3

    aput-object v10, v3, v14

    const/16 v10, 0xc

    new-array v2, v10, [D

    const/4 v10, 0x0

    aput-wide v4, v2, v10

    aput-wide v11, v2, v9

    aput-wide v11, v2, v13

    aput-wide v0, v2, v16

    aput-wide v4, v2, v6

    neg-double v9, v0

    aput-wide v9, v2, v14

    aput-wide v11, v2, v15

    aput-wide v11, v2, v17

    aput-wide v4, v2, v18

    aput-wide v7, v2, v19

    const/16 v4, 0xa

    aput-wide v11, v2, v4

    aput-wide v11, v2, v22

    aput-object v2, v3, v15

    new-array v2, v6, [D

    fill-array-data v2, :array_4

    aput-object v2, v3, v17

    const/16 v2, 0xc

    new-array v2, v2, [D

    const/4 v4, 0x0

    aput-wide v11, v2, v4

    const/4 v4, 0x1

    aput-wide v0, v2, v4

    aput-wide v11, v2, v13

    aput-wide v11, v2, v16

    aput-wide v11, v2, v6

    aput-wide v11, v2, v14

    aput-wide v11, v2, v15

    aput-wide v0, v2, v17

    aput-wide v11, v2, v18

    aput-wide v11, v2, v19

    const/16 v0, 0xa

    aput-wide v11, v2, v0

    aput-wide v20, v2, v22

    aput-object v2, v3, v18

    const/4 v1, 0x0

    new-array v1, v1, [D

    aput-object v1, v3, v19

    sput-object v3, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->ctrlpts:[[D

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->types:[I

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x3fe0000000000000L    # 0.5
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        -0x4020000000000000L    # -0.5
    .end array-data

    :array_2
    .array-data 8
        0x3ff0000000000000L    # 1.0
        -0x4020000000000000L    # -0.5
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x3fe0000000000000L    # 0.5
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x3fe0000000000000L    # 0.5
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x1
        0x3
        0x1
        0x3
        0x1
        0x3
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/geom/RoundRectangle2D;Lorg/apache/poi/java/awt/geom/AffineTransform;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->x:D

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->y:D

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->w:D

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->h:D

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->w:D

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->getArcWidth()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->aw:D

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->h:D

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->getArcHeight()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->ah:D

    iput-object p2, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

    iget-wide p1, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->aw:D

    const-wide/16 v2, 0x0

    cmpg-double p1, p1, v2

    if-ltz p1, :cond_0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_1

    :cond_0
    sget-object p1, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->ctrlpts:[[D

    array-length p1, p1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->index:I

    :cond_1
    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 10

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->ctrlpts:[[D

    iget v1, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->index:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    iget-wide v4, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->x:D

    add-int/lit8 v6, v1, 0x0

    aget-wide v6, v0, v6

    iget-wide v8, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->w:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    add-int/lit8 v6, v1, 0x1

    aget-wide v6, v0, v6

    iget-wide v8, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->aw:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, p1, v2

    add-int/lit8 v2, v3, 0x1

    iget-wide v4, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->y:D

    add-int/lit8 v6, v1, 0x2

    aget-wide v6, v0, v6

    iget-wide v8, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->h:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    add-int/lit8 v6, v1, 0x3

    aget-wide v6, v0, v6

    iget-wide v8, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->ah:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, p1, v3

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

    if-eqz v3, :cond_1

    const/4 v5, 0x0

    const/4 v7, 0x0

    div-int/lit8 v8, v2, 0x2

    move-object v4, p1

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform([DI[DII)V

    :cond_1
    sget-object p1, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->types:[I

    iget v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->index:I

    aget p1, p1, v0

    return p1

    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "roundrect iterator out of bounds"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public currentSegment([F)I
    .locals 10

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->ctrlpts:[[D

    iget v1, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->index:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    iget-wide v4, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->x:D

    add-int/lit8 v6, v1, 0x0

    aget-wide v6, v0, v6

    iget-wide v8, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->w:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    add-int/lit8 v6, v1, 0x1

    aget-wide v6, v0, v6

    iget-wide v8, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->aw:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, p1, v2

    add-int/lit8 v2, v3, 0x1

    iget-wide v4, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->y:D

    add-int/lit8 v6, v1, 0x2

    aget-wide v6, v0, v6

    iget-wide v8, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->h:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    add-int/lit8 v6, v1, 0x3

    aget-wide v6, v0, v6

    iget-wide v8, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->ah:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, p1, v3

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

    if-eqz v3, :cond_1

    const/4 v5, 0x0

    const/4 v7, 0x0

    div-int/lit8 v8, v2, 0x2

    move-object v4, p1

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform([FI[FII)V

    :cond_1
    sget-object p1, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->types:[I

    iget v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->index:I

    aget p1, p1, v0

    return p1

    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "roundrect iterator out of bounds"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getWindingRule()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDone()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->index:I

    sget-object v1, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->ctrlpts:[[D

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()V
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;->index:I

    return-void
.end method
