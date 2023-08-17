.class abstract Lorg/apache/poi/java/awt/geom/Path2D$Iterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/geom/PathIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/geom/Path2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Iterator"
.end annotation


# static fields
.field public static final curvecoords:[I


# instance fields
.field public path:Lorg/apache/poi/java/awt/geom/Path2D;

.field public pointIdx:I

.field public typeIdx:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->curvecoords:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x2
        0x4
        0x6
        0x0
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/geom/Path2D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->path:Lorg/apache/poi/java/awt/geom/Path2D;

    return-void
.end method


# virtual methods
.method public getWindingRule()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->path:Lorg/apache/poi/java/awt/geom/Path2D;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/Path2D;->getWindingRule()I

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->typeIdx:I

    iget-object v1, p0, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->path:Lorg/apache/poi/java/awt/geom/Path2D;

    iget v1, v1, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->path:Lorg/apache/poi/java/awt/geom/Path2D;

    iget-object v0, v0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->typeIdx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->typeIdx:I

    aget-byte v0, v0, v1

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->pointIdx:I

    sget-object v2, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->curvecoords:[I

    aget v0, v2, v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->pointIdx:I

    return-void
.end method
