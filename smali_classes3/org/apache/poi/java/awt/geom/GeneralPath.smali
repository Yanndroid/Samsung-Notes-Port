.class public final Lorg/apache/poi/java/awt/geom/GeneralPath;
.super Lorg/apache/poi/java/awt/geom/Path2D$Float;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x738fca4bc2abc406L


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

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/java/awt/geom/Path2D$Float;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I[BI[FI)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/Path2D$Float;-><init>()V

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Path2D;->windingRule:I

    iput-object p2, p0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    iput p3, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numTypes:I

    iput-object p4, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    iput p5, p0, Lorg/apache/poi/java/awt/geom/Path2D;->numCoords:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Shape;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/geom/Path2D$Float;-><init>(Lorg/apache/poi/java/awt/Shape;Lorg/apache/poi/java/awt/geom/AffineTransform;)V

    return-void
.end method
