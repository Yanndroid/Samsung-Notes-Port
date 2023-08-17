.class public Lorg/apache/poi/java/awt/geom/Path2D$Float;
.super Lorg/apache/poi/java/awt/geom/Path2D;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/geom/Path2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Float"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/geom/Path2D$Float$CopyIterator;,
        Lorg/apache/poi/java/awt/geom/Path2D$Float$TxIterator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x61046d222872ee96L


# instance fields
.field public transient floatCoords:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/java/awt/geom/Path2D$Float;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/geom/Path2D$Float;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/java/awt/geom/Path2D;-><init>(II)V

    mul-int/lit8 p2, p2, 0x2

    new-array p1, p2, [F

    iput-object p1, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Shape;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/geom/Path2D$Float;-><init>(Lorg/apache/poi/java/awt/Shape;Lorg/apache/poi/java/awt/geom/AffineTransform;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Shape;Lorg/apache/poi/java/awt/geom/AffineTransform;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/Path2D;-><init>()V

    instance-of v0, p1, Lorg/apache/poi/java/awt/geom/Path2D;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/java/awt/geom/Path2D;

    iget v0, p1, Lorg/apache/poi/java/awt/geom/Path2D;->windingRule:I

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/geom/Path2D;->setWindingRule(I)V

    iget v0, p1, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    iput v0, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    iget-object v0, p1, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    iget v0, p1, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    iput v0, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    invoke-virtual {p1, p2}, Lorg/apache/poi/java/awt/geom/Path2D;->cloneCoordsFloat(Lorg/apache/poi/java/awt/geom/AffineTransform;)[F

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/poi/java/awt/Shape;->getPathIterator(Lorg/apache/poi/java/awt/geom/AffineTransform;)Lorg/apache/poi/java/awt/geom/PathIterator;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/java/awt/geom/PathIterator;->getWindingRule()I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/apache/poi/java/awt/geom/Path2D;->setWindingRule(I)V

    const/16 p2, 0x14

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    const/16 p2, 0x28

    new-array p2, p2, [F

    iput-object p2, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/geom/Path2D$Float;->append(Lorg/apache/poi/java/awt/geom/PathIterator;Z)V

    :goto_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lorg/apache/poi/java/awt/geom/Path2D;->readObject(Ljava/io/ObjectInputStream;Z)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lorg/apache/poi/java/awt/geom/Path2D;->writeObject(Ljava/io/ObjectOutputStream;Z)V

    return-void
.end method


# virtual methods
.method public append(DD)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    double-to-float p1, p1

    aput p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    double-to-float p1, p3

    aput p1, v0, v2

    return-void
.end method

.method public append(FF)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    aput p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    aput p2, v0, v2

    return-void
.end method

.method public final append(Lorg/apache/poi/java/awt/geom/PathIterator;Z)V
    .locals 13

    const/4 v0, 0x6

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/apache/poi/java/awt/geom/PathIterator;->isDone()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {p1, v0}, Lorg/apache/poi/java/awt/geom/PathIterator;->currentSegment([F)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_5

    const/4 p2, 0x3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    if-eq v2, p2, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/Path2D;->closePath()V

    goto :goto_2

    :cond_1
    aget v7, v0, v1

    aget v8, v0, v4

    aget v9, v0, v5

    aget v10, v0, p2

    aget v11, v0, v3

    const/4 p2, 0x5

    aget v12, v0, p2

    move-object v6, p0

    invoke-virtual/range {v6 .. v12}, Lorg/apache/poi/java/awt/geom/Path2D$Float;->curveTo(FFFFFF)V

    goto :goto_2

    :cond_2
    aget v2, v0, v1

    aget v3, v0, v4

    aget v4, v0, v5

    aget p2, v0, p2

    invoke-virtual {p0, v2, v3, v4, p2}, Lorg/apache/poi/java/awt/geom/Path2D$Float;->quadTo(FFFF)V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_6

    iget p2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    if-lt p2, v4, :cond_6

    iget v2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    if-ge v2, v4, :cond_4

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    add-int/lit8 p2, p2, -0x1

    aget-byte p2, v5, p2

    if-eq p2, v3, :cond_5

    iget-object p2, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    add-int/lit8 v3, v2, -0x2

    aget v3, p2, v3

    aget v5, v0, v1

    cmpl-float v3, v3, v5

    if-nez v3, :cond_5

    add-int/lit8 v2, v2, -0x1

    aget p2, p2, v2

    aget v2, v0, v4

    cmpl-float p2, p2, v2

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    aget p2, v0, v1

    aget v2, v0, v4

    invoke-virtual {p0, p2, v2}, Lorg/apache/poi/java/awt/geom/Path2D$Float;->lineTo(FF)V

    goto :goto_2

    :cond_6
    :goto_1
    aget p2, v0, v1

    aget v2, v0, v4

    invoke-virtual {p0, p2, v2}, Lorg/apache/poi/java/awt/geom/Path2D$Float;->moveTo(FF)V

    :goto_2
    invoke-interface {p1}, Lorg/apache/poi/java/awt/geom/PathIterator;->next()V

    move p2, v1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/java/awt/geom/GeneralPath;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/geom/GeneralPath;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/geom/GeneralPath;-><init>(Lorg/apache/poi/java/awt/Shape;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/geom/Path2D$Float;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/geom/Path2D$Float;-><init>(Lorg/apache/poi/java/awt/Shape;)V

    return-object v0
.end method

.method public cloneCoordsDouble(Lorg/apache/poi/java/awt/geom/AffineTransform;)[D
    .locals 7

    iget-object v1, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    array-length v0, v1

    new-array v6, v0, [D

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    aget v0, v0, p1

    float-to-double v0, v0

    aput-wide v0, v6, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    div-int/lit8 v5, v0, 0x2

    move-object v0, p1

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform([FI[DII)V

    :cond_1
    return-object v6
.end method

.method public cloneCoordsFloat(Lorg/apache/poi/java/awt/geom/AffineTransform;)[F
    .locals 7

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    array-length v0, v1

    new-array v6, v0, [F

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    div-int/lit8 v5, v0, 0x2

    move-object v0, p1

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform([FI[FII)V

    move-object p1, v6

    :goto_0
    return-object p1
.end method

.method public final declared-synchronized curveTo(DDDDDD)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x6

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/java/awt/geom/Path2D$Float;->needRoom(ZI)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    double-to-float p1, p1

    aput p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    double-to-float p2, p3

    aput p2, v0, v2

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    double-to-float p3, p5

    aput p3, v0, p1

    add-int/lit8 p1, p2, 0x1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    double-to-float p3, p7

    aput p3, v0, p2

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    double-to-float p3, p9

    aput p3, v0, p1

    add-int/lit8 p1, p2, 0x1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    double-to-float p1, p11

    aput p1, v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized curveTo(FFFFFF)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x6

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/java/awt/geom/Path2D$Float;->needRoom(ZI)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    aput p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    aput p2, v0, v2

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    aput p3, v0, p1

    add-int/lit8 p1, p2, 0x1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    aput p4, v0, p2

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    aput p5, v0, p1

    add-int/lit8 p1, p2, 0x1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    aput p6, v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getBounds2D()Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    if-lez v0, :cond_4

    iget-object v1, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    move v3, v2

    move v4, v3

    move v2, v1

    :cond_0
    :goto_0
    if-lez v0, :cond_5

    iget-object v5, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    add-int/lit8 v0, v0, -0x1

    aget v6, v5, v0

    add-int/lit8 v0, v0, -0x1

    aget v5, v5, v0

    cmpg-float v7, v5, v1

    if-gez v7, :cond_1

    move v1, v5

    :cond_1
    cmpg-float v7, v6, v3

    if-gez v7, :cond_2

    move v3, v6

    :cond_2
    cmpl-float v7, v5, v2

    if-lez v7, :cond_3

    move v2, v5

    :cond_3
    cmpl-float v5, v6, v4

    if-lez v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :cond_5
    new-instance v0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;

    sub-float/2addr v2, v1

    sub-float/2addr v4, v3

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;-><init>(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getPathIterator(Lorg/apache/poi/java/awt/geom/AffineTransform;)Lorg/apache/poi/java/awt/geom/PathIterator;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/poi/java/awt/geom/Path2D$Float$CopyIterator;

    invoke-direct {p1, p0}, Lorg/apache/poi/java/awt/geom/Path2D$Float$CopyIterator;-><init>(Lorg/apache/poi/java/awt/geom/Path2D$Float;)V

    return-object p1

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/geom/Path2D$Float$TxIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/java/awt/geom/Path2D$Float$TxIterator;-><init>(Lorg/apache/poi/java/awt/geom/Path2D$Float;Lorg/apache/poi/java/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public getPoint(I)Lorg/apache/poi/java/awt/geom/Point2D;
    .locals 3

    new-instance v0, Lorg/apache/poi/java/awt/geom/Point2D$Float;

    iget-object v1, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    aget v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    aget p1, v1, p1

    invoke-direct {v0, v2, p1}, Lorg/apache/poi/java/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public final declared-synchronized lineTo(DD)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/java/awt/geom/Path2D$Float;->needRoom(ZI)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    iget v2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    aput-byte v1, v0, v2

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    double-to-float p1, p1

    aput p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    double-to-float p1, p3

    aput p1, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized lineTo(FF)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/java/awt/geom/Path2D$Float;->needRoom(ZI)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    iget v2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    aput-byte v1, v0, v2

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    aput p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    aput p2, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized moveTo(DD)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    add-int/lit8 v2, v1, -0x2

    double-to-float p1, p1

    aput p1, v0, v2

    add-int/lit8 v1, v1, -0x1

    double-to-float p1, p3

    aput p1, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/java/awt/geom/Path2D$Float;->needRoom(ZI)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    iget v2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    aput-byte v1, v0, v2

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    double-to-float p1, p1

    aput p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    double-to-float p1, p3

    aput p1, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized moveTo(FF)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    add-int/lit8 v2, v1, -0x2

    aput p1, v0, v2

    add-int/lit8 v1, v1, -0x1

    aput p2, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/java/awt/geom/Path2D$Float;->needRoom(ZI)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    iget v2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    aput-byte v1, v0, v2

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    aput p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    aput p2, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public needRoom(ZI)V
    .locals 2

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/geom/IllegalPathStateException;

    const-string p2, "missing initial moveto in path definition"

    invoke-direct {p1, p2}, Lorg/apache/poi/java/awt/geom/IllegalPathStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    array-length v0, p1

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    if-lt v1, v0, :cond_3

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    :cond_3
    iget-object p1, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    array-length v0, p1

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    add-int/2addr v1, p2

    if-le v1, v0, :cond_6

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_5

    goto :goto_3

    :cond_5
    move p2, v1

    :goto_3
    add-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    :cond_6
    return-void
.end method

.method public pointCrossings(DD)I
    .locals 36

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    float-to-double v3, v3

    const/4 v5, 0x1

    aget v6, v1, v5

    float-to-double v6, v6

    const/4 v8, 0x2

    move-wide v13, v3

    move v11, v5

    move-wide v15, v6

    move/from16 v21, v8

    :goto_0
    iget v9, v0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    if-ge v11, v9, :cond_7

    iget-object v9, v0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    aget-byte v9, v9, v11

    if-eqz v9, :cond_5

    if-eq v9, v5, :cond_4

    if-eq v9, v8, :cond_3

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    move/from16 v30, v11

    goto/16 :goto_2

    :cond_0
    cmpl-double v9, v15, v6

    if-eqz v9, :cond_1

    move-wide/from16 v9, p1

    move/from16 v30, v11

    move-wide/from16 v11, p3

    move-wide/from16 v17, v3

    move-wide/from16 v19, v6

    invoke-static/range {v9 .. v20}, Lorg/apache/poi/sun/awt/geom/Curve;->pointCrossingsForLine(DDDDDD)I

    move-result v9

    add-int/2addr v2, v9

    goto :goto_1

    :cond_1
    move/from16 v30, v11

    :goto_1
    move-wide v13, v3

    move-wide v15, v6

    goto/16 :goto_2

    :cond_2
    move/from16 v30, v11

    add-int/lit8 v9, v21, 0x1

    aget v10, v1, v21

    float-to-double v10, v10

    move-wide/from16 v17, v10

    add-int/lit8 v10, v9, 0x1

    aget v9, v1, v9

    float-to-double v11, v9

    move-wide/from16 v19, v11

    add-int/lit8 v9, v10, 0x1

    aget v10, v1, v10

    float-to-double v10, v10

    move-wide/from16 v21, v10

    add-int/lit8 v10, v9, 0x1

    aget v9, v1, v9

    float-to-double v11, v9

    move-wide/from16 v23, v11

    add-int/lit8 v9, v10, 0x1

    aget v10, v1, v10

    float-to-double v11, v10

    move-wide/from16 v25, v11

    add-int/lit8 v31, v9, 0x1

    aget v9, v1, v9

    float-to-double v9, v9

    move-wide/from16 v27, v9

    const/16 v29, 0x0

    move-wide/from16 v32, v9

    move-wide/from16 v9, p1

    move-wide/from16 v34, v11

    move-wide/from16 v11, p3

    invoke-static/range {v9 .. v29}, Lorg/apache/poi/sun/awt/geom/Curve;->pointCrossingsForCubic(DDDDDDDDDDI)I

    move-result v9

    add-int/2addr v2, v9

    move/from16 v21, v31

    move-wide/from16 v15, v32

    move-wide/from16 v13, v34

    goto/16 :goto_2

    :cond_3
    move/from16 v30, v11

    add-int/lit8 v9, v21, 0x1

    aget v10, v1, v21

    float-to-double v10, v10

    move-wide/from16 v17, v10

    add-int/lit8 v10, v9, 0x1

    aget v9, v1, v9

    float-to-double v11, v9

    move-wide/from16 v19, v11

    add-int/lit8 v9, v10, 0x1

    aget v10, v1, v10

    float-to-double v11, v10

    move-wide/from16 v21, v11

    add-int/lit8 v26, v9, 0x1

    aget v9, v1, v9

    float-to-double v9, v9

    move-wide/from16 v23, v9

    const/16 v25, 0x0

    move-wide/from16 v27, v9

    move-wide/from16 v9, p1

    move-wide/from16 v31, v11

    move-wide/from16 v11, p3

    invoke-static/range {v9 .. v25}, Lorg/apache/poi/sun/awt/geom/Curve;->pointCrossingsForQuad(DDDDDDDDI)I

    move-result v9

    add-int/2addr v2, v9

    move/from16 v21, v26

    move-wide/from16 v15, v27

    move-wide/from16 v13, v31

    goto :goto_2

    :cond_4
    move/from16 v30, v11

    add-int/lit8 v9, v21, 0x1

    aget v10, v1, v21

    float-to-double v11, v10

    add-int/lit8 v21, v9, 0x1

    aget v9, v1, v9

    float-to-double v9, v9

    move-wide/from16 v22, v9

    move-wide/from16 v9, p1

    move-wide/from16 v24, v11

    move-wide/from16 v11, p3

    move-wide/from16 v17, v24

    move-wide/from16 v19, v22

    invoke-static/range {v9 .. v20}, Lorg/apache/poi/sun/awt/geom/Curve;->pointCrossingsForLine(DDDDDD)I

    move-result v9

    add-int/2addr v2, v9

    move-wide/from16 v15, v22

    move-wide/from16 v13, v24

    goto :goto_2

    :cond_5
    move/from16 v30, v11

    cmpl-double v9, v15, v6

    if-eqz v9, :cond_6

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide/from16 v17, v3

    move-wide/from16 v19, v6

    invoke-static/range {v9 .. v20}, Lorg/apache/poi/sun/awt/geom/Curve;->pointCrossingsForLine(DDDDDD)I

    move-result v3

    add-int/2addr v2, v3

    :cond_6
    add-int/lit8 v3, v21, 0x1

    aget v4, v1, v21

    float-to-double v6, v4

    add-int/lit8 v21, v3, 0x1

    aget v3, v1, v3

    float-to-double v3, v3

    move-wide v15, v3

    move-wide v13, v6

    move-wide v3, v13

    move-wide v6, v15

    :goto_2
    add-int/lit8 v11, v30, 0x1

    goto/16 :goto_0

    :cond_7
    cmpl-double v1, v15, v6

    if-eqz v1, :cond_8

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide/from16 v17, v3

    move-wide/from16 v19, v6

    invoke-static/range {v9 .. v20}, Lorg/apache/poi/sun/awt/geom/Curve;->pointCrossingsForLine(DDDDDD)I

    move-result v1

    add-int/2addr v2, v1

    :cond_8
    return v2
.end method

.method public final declared-synchronized quadTo(DDDD)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/java/awt/geom/Path2D$Float;->needRoom(ZI)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    double-to-float p1, p1

    aput p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    double-to-float p2, p3

    aput p2, v0, v2

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    double-to-float p3, p5

    aput p3, v0, p1

    add-int/lit8 p1, p2, 0x1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    double-to-float p1, p7

    aput p1, v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized quadTo(FFFF)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/java/awt/geom/Path2D$Float;->needRoom(ZI)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    aput p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    aput p2, v0, v2

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    aput p3, v0, p1

    add-int/lit8 p1, p2, 0x1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    aput p4, v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public rectCrossings(DDDD)I
    .locals 40

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    float-to-double v3, v3

    const/4 v5, 0x1

    aget v6, v1, v5

    float-to-double v6, v6

    const/4 v8, 0x2

    move v9, v2

    move-wide/from16 v18, v3

    move v2, v5

    move-wide/from16 v20, v6

    move/from16 v26, v8

    :goto_0
    const/high16 v10, -0x80000000

    if-eq v9, v10, :cond_9

    iget v11, v0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    if-ge v2, v11, :cond_9

    iget-object v10, v0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    aget-byte v10, v10, v2

    if-eqz v10, :cond_6

    if-eq v10, v5, :cond_5

    if-eq v10, v8, :cond_4

    const/4 v11, 0x3

    if-eq v10, v11, :cond_3

    const/4 v11, 0x4

    if-eq v10, v11, :cond_0

    goto/16 :goto_1

    :cond_0
    cmpl-double v10, v18, v3

    if-nez v10, :cond_1

    cmpl-double v10, v20, v6

    if-eqz v10, :cond_2

    :cond_1
    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    move-wide/from16 v22, v3

    move-wide/from16 v24, v6

    invoke-static/range {v9 .. v25}, Lorg/apache/poi/sun/awt/geom/Curve;->rectCrossingsForLine(IDDDDDDDD)I

    move-result v9

    :cond_2
    move-wide/from16 v18, v3

    move-wide/from16 v20, v6

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v10, v26, 0x1

    aget v11, v1, v26

    float-to-double v11, v11

    move-wide/from16 v22, v11

    add-int/lit8 v11, v10, 0x1

    aget v10, v1, v10

    float-to-double v12, v10

    move-wide/from16 v24, v12

    add-int/lit8 v10, v11, 0x1

    aget v11, v1, v11

    float-to-double v11, v11

    move-wide/from16 v26, v11

    add-int/lit8 v11, v10, 0x1

    aget v10, v1, v10

    float-to-double v12, v10

    move-wide/from16 v28, v12

    add-int/lit8 v10, v11, 0x1

    aget v11, v1, v11

    float-to-double v14, v11

    move-wide/from16 v30, v14

    add-int/lit8 v35, v10, 0x1

    aget v10, v1, v10

    float-to-double v12, v10

    move-wide/from16 v32, v12

    const/16 v34, 0x0

    move-wide/from16 v10, p1

    move-wide/from16 v36, v12

    move-wide/from16 v12, p3

    move-wide/from16 v38, v14

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    invoke-static/range {v9 .. v34}, Lorg/apache/poi/sun/awt/geom/Curve;->rectCrossingsForCubic(IDDDDDDDDDDDDI)I

    move-result v9

    move/from16 v26, v35

    move-wide/from16 v20, v36

    move-wide/from16 v18, v38

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v10, v26, 0x1

    aget v11, v1, v26

    float-to-double v11, v11

    move-wide/from16 v22, v11

    add-int/lit8 v11, v10, 0x1

    aget v10, v1, v10

    float-to-double v12, v10

    move-wide/from16 v24, v12

    add-int/lit8 v10, v11, 0x1

    aget v11, v1, v11

    float-to-double v14, v11

    move-wide/from16 v26, v14

    add-int/lit8 v31, v10, 0x1

    aget v10, v1, v10

    float-to-double v12, v10

    move-wide/from16 v28, v12

    const/16 v30, 0x0

    move-wide/from16 v10, p1

    move-wide/from16 v32, v12

    move-wide/from16 v12, p3

    move-wide/from16 v34, v14

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    invoke-static/range {v9 .. v30}, Lorg/apache/poi/sun/awt/geom/Curve;->rectCrossingsForQuad(IDDDDDDDDDDI)I

    move-result v9

    move/from16 v26, v31

    move-wide/from16 v20, v32

    move-wide/from16 v18, v34

    goto :goto_1

    :cond_5
    add-int/lit8 v10, v26, 0x1

    aget v11, v1, v26

    float-to-double v14, v11

    move-wide/from16 v22, v14

    add-int/lit8 v26, v10, 0x1

    aget v10, v1, v10

    float-to-double v12, v10

    move-wide/from16 v24, v12

    move-wide/from16 v10, p1

    move-wide/from16 v27, v12

    move-wide/from16 v12, p3

    move-wide/from16 v29, v14

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    invoke-static/range {v9 .. v25}, Lorg/apache/poi/sun/awt/geom/Curve;->rectCrossingsForLine(IDDDDDDDD)I

    move-result v9

    move-wide/from16 v20, v27

    move-wide/from16 v18, v29

    goto :goto_1

    :cond_6
    cmpl-double v10, v18, v3

    if-nez v10, :cond_7

    cmpl-double v10, v20, v6

    if-eqz v10, :cond_8

    :cond_7
    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    move-wide/from16 v22, v3

    move-wide/from16 v24, v6

    invoke-static/range {v9 .. v25}, Lorg/apache/poi/sun/awt/geom/Curve;->rectCrossingsForLine(IDDDDDDDD)I

    move-result v9

    :cond_8
    add-int/lit8 v3, v26, 0x1

    aget v4, v1, v26

    float-to-double v6, v4

    add-int/lit8 v26, v3, 0x1

    aget v3, v1, v3

    float-to-double v3, v3

    move-wide/from16 v20, v3

    move-wide/from16 v18, v6

    move-wide/from16 v3, v18

    move-wide/from16 v6, v20

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    if-eq v9, v10, :cond_b

    cmpl-double v1, v18, v3

    if-nez v1, :cond_a

    cmpl-double v1, v20, v6

    if-eqz v1, :cond_b

    :cond_a
    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    move-wide/from16 v22, v3

    move-wide/from16 v24, v6

    invoke-static/range {v9 .. v25}, Lorg/apache/poi/sun/awt/geom/Curve;->rectCrossingsForLine(IDDDDDDDD)I

    move-result v9

    :cond_b
    return v9
.end method

.method public final transform(Lorg/apache/poi/java/awt/geom/AffineTransform;)V
    .locals 6

    iget-object v3, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    div-int/lit8 v5, v0, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, v3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform([FI[FII)V

    return-void
.end method
