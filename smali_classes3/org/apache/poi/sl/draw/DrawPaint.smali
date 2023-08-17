.class public Lorg/apache/poi/sl/draw/DrawPaint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field private static final TRANSPARENT:Lorg/apache/poi/java/awt/Color;


# instance fields
.field public shape:Lorg/apache/poi/sl/usermodel/PlaceableShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sl/usermodel/PlaceableShape<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/apache/poi/sl/draw/DrawPaint;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/DrawPaint;->LOG:Lorg/apache/poi/util/POILogger;

    new-instance v0, Lorg/apache/poi/java/awt/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lorg/apache/poi/java/awt/Color;-><init>(FFFF)V

    sput-object v0, Lorg/apache/poi/sl/draw/DrawPaint;->TRANSPARENT:Lorg/apache/poi/java/awt/Color;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/usermodel/PlaceableShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/PlaceableShape<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawPaint;->shape:Lorg/apache/poi/sl/usermodel/PlaceableShape;

    return-void
.end method

.method public static HSL2RGB(DDDD)Lorg/apache/poi/java/awt/Color;
    .locals 16

    move-wide/from16 v0, p6

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    move-wide/from16 v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    move-wide/from16 v8, p4

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    cmpg-double v10, v0, v6

    if-ltz v10, :cond_1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v0, v10

    if-gtz v12, :cond_1

    const-wide v12, 0x4076800000000000L    # 360.0

    rem-double v14, p0, v12

    div-double/2addr v14, v12

    div-double/2addr v4, v2

    div-double/2addr v8, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v8, v2

    if-gez v2, :cond_0

    add-double/2addr v4, v10

    mul-double/2addr v4, v8

    goto :goto_0

    :cond_0
    add-double v2, v8, v4

    mul-double/2addr v4, v8

    sub-double v4, v2, v4

    :goto_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v2

    sub-double v2, v8, v4

    const-wide v8, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v12, v14, v8

    move-wide/from16 p0, v2

    move-wide/from16 p2, v4

    move-wide/from16 p4, v12

    invoke-static/range {p0 .. p5}, Lorg/apache/poi/sl/draw/DrawPaint;->HUE2RGB(DDD)D

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    move-wide/from16 p4, v14

    invoke-static/range {p0 .. p5}, Lorg/apache/poi/sl/draw/DrawPaint;->HUE2RGB(DDD)D

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    sub-double v8, v14, v8

    move-wide/from16 p4, v8

    invoke-static/range {p0 .. p5}, Lorg/apache/poi/sl/draw/DrawPaint;->HUE2RGB(DDD)D

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    new-instance v4, Lorg/apache/poi/java/awt/Color;

    double-to-float v5, v6

    double-to-float v6, v8

    double-to-float v2, v2

    double-to-float v0, v0

    invoke-direct {v4, v5, v6, v2, v0}, Lorg/apache/poi/java/awt/Color;-><init>(FFFF)V

    return-object v4

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Color parameter outside of expected range - Alpha: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static HUE2RGB(DDD)D
    .locals 9

    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-gez v0, :cond_0

    add-double/2addr p4, v1

    :cond_0
    cmpl-double v0, p4, v1

    if-lez v0, :cond_1

    sub-double/2addr p4, v1

    :cond_1
    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    mul-double v5, p4, v3

    cmpg-double v0, v5, v1

    if-gez v0, :cond_2

    sub-double/2addr p2, p0

    mul-double/2addr p2, v3

    mul-double/2addr p2, p4

    :goto_0
    add-double/2addr p0, p2

    return-wide p0

    :cond_2
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v7, p4, v5

    cmpg-double v0, v7, v1

    if-gez v0, :cond_3

    return-wide p2

    :cond_3
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, p4

    cmpg-double v0, v0, v5

    if-gez v0, :cond_4

    sub-double/2addr p2, p0

    mul-double/2addr p2, v3

    const-wide v0, 0x3fe5555555555555L    # 0.6666666666666666

    sub-double/2addr v0, p4

    mul-double/2addr p2, v0

    goto :goto_0

    :cond_4
    return-wide p0
.end method

.method private static RGB2HSL(Lorg/apache/poi/java/awt/Color;)[D
    .locals 19

    const/4 v0, 0x0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/apache/poi/java/awt/Color;->getRGBColorComponents([F)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    float-to-double v2, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    float-to-double v5, v5

    const/4 v7, 0x2

    aget v0, v0, v7

    float-to-double v8, v0

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    cmpl-double v0, v12, v10

    const-wide/16 v14, 0x0

    if-nez v0, :cond_1

    :cond_0
    move-wide v5, v14

    goto :goto_0

    :cond_1
    cmpl-double v16, v12, v2

    const-wide/high16 v17, 0x404e000000000000L    # 60.0

    if-nez v16, :cond_2

    sub-double/2addr v5, v8

    mul-double v5, v5, v17

    sub-double v2, v12, v10

    div-double/2addr v5, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    add-double/2addr v5, v2

    rem-double/2addr v5, v2

    goto :goto_0

    :cond_2
    cmpl-double v16, v12, v5

    if-nez v16, :cond_3

    sub-double/2addr v8, v2

    mul-double v8, v8, v17

    sub-double v2, v12, v10

    div-double/2addr v8, v2

    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    add-double v5, v8, v2

    goto :goto_0

    :cond_3
    cmpl-double v8, v12, v8

    if-nez v8, :cond_0

    sub-double/2addr v2, v5

    mul-double v2, v2, v17

    sub-double v5, v12, v10

    div-double/2addr v2, v5

    const-wide/high16 v5, 0x406e000000000000L    # 240.0

    add-double/2addr v5, v2

    :goto_0
    add-double v2, v12, v10

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v16, v2, v8

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v16, v14

    if-gtz v0, :cond_5

    sub-double/2addr v12, v10

    div-double v14, v12, v2

    goto :goto_1

    :cond_5
    sub-double v2, v12, v10

    sub-double/2addr v8, v12

    sub-double/2addr v8, v10

    div-double v14, v2, v8

    :goto_1
    const/4 v0, 0x3

    new-array v0, v0, [D

    aput-wide v5, v0, v1

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double/2addr v14, v1

    aput-wide v14, v0, v4

    mul-double v16, v16, v1

    aput-wide v16, v0, v7

    return-object v0
.end method

.method public static applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/java/awt/Color;
    .locals 9

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getColor()Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getColor()Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/poi/sl/draw/DrawPaint;->getAlpha(Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/sl/usermodel/ColorStyle;)D

    move-result-wide v7

    invoke-static {v0}, Lorg/apache/poi/sl/draw/DrawPaint;->RGB2HSL(Lorg/apache/poi/java/awt/Color;)[D

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getHueMod()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getHueOff()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lorg/apache/poi/sl/draw/DrawPaint;->applyHslModOff([DIII)V

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getSatMod()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getSatOff()I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v0, v4, v1, v2}, Lorg/apache/poi/sl/draw/DrawPaint;->applyHslModOff([DIII)V

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getLumMod()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getLumOff()I

    move-result v2

    const/4 v5, 0x2

    invoke-static {v0, v5, v1, v2}, Lorg/apache/poi/sl/draw/DrawPaint;->applyHslModOff([DIII)V

    invoke-static {v0, p0}, Lorg/apache/poi/sl/draw/DrawPaint;->applyShade([DLorg/apache/poi/sl/usermodel/ColorStyle;)V

    invoke-static {v0, p0}, Lorg/apache/poi/sl/draw/DrawPaint;->applyTint([DLorg/apache/poi/sl/usermodel/ColorStyle;)V

    aget-wide v1, v0, v3

    aget-wide v3, v0, v4

    aget-wide v5, v0, v5

    invoke-static/range {v1 .. v8}, Lorg/apache/poi/sl/draw/DrawPaint;->HSL2RGB(DDDD)Lorg/apache/poi/java/awt/Color;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/poi/sl/draw/DrawPaint;->TRANSPARENT:Lorg/apache/poi/java/awt/Color;

    return-object p0
.end method

.method private static applyHslModOff([DIII)V
    .locals 4

    const v0, 0x186a0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    move p2, v0

    :cond_0
    if-ne p3, v1, :cond_1

    const/4 p3, 0x0

    :cond_1
    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    int-to-double v0, p3

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    int-to-double p2, p2

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double/2addr p2, v2

    aget-wide v2, p0, p1

    mul-double/2addr v2, p2

    add-double/2addr v2, v0

    aput-wide v2, p0, p1

    :cond_3
    return-void
.end method

.method private static applyShade([DLorg/apache/poi/sl/usermodel/ColorStyle;)V
    .locals 6

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getShade()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v2

    const/4 p1, 0x2

    aget-wide v2, p0, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    mul-double/2addr v2, v4

    aput-wide v2, p0, p1

    return-void
.end method

.method private static applyTint([DLorg/apache/poi/sl/usermodel/ColorStyle;)V
    .locals 6

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getTint()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v2

    const/4 p1, 0x2

    aget-wide v2, p0, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    mul-double/2addr v2, v4

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v0

    sub-double/2addr v0, v4

    add-double/2addr v2, v0

    aput-wide v2, p0, p1

    return-void
.end method

.method public static createSolidPaint(Lorg/apache/poi/java/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;

    invoke-direct {v0, p0}, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;-><init>(Lorg/apache/poi/java/awt/Color;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static createSolidPaint(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;

    invoke-direct {v0, p0}, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;-><init>(Lorg/apache/poi/sl/usermodel/ColorStyle;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static getAlpha(Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/sl/usermodel/ColorStyle;)D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Color;->getAlpha()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getAlpha()I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    int-to-double p0, p0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double/2addr p0, v2

    mul-double/2addr v0, p0

    :cond_0
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static lin2srgb(I)F
    .locals 6

    int-to-double v0, p0

    const-wide v2, 0x3f69a5c37387b719L    # 0.0031308

    cmpg-double p0, v0, v2

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    if-gtz p0, :cond_0

    div-double/2addr v0, v2

    const-wide v2, 0x4029d70a3d70a3d7L    # 12.92

    mul-double/2addr v0, v2

    :goto_0
    double-to-float p0, v0

    return p0

    :cond_0
    const-wide v4, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v0, v2

    const-wide v2, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v4

    const-wide v2, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr v0, v2

    goto :goto_0
.end method

.method public static srgb2lin(F)I
    .locals 6

    float-to-double v0, p0

    const-wide v2, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double p0, v0, v2

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    if-gtz p0, :cond_0

    mul-double/2addr v0, v2

    const-wide v2, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v0, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0

    :cond_0
    const-wide v4, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v0, v4

    const-wide v4, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v0, v4

    const-wide v4, 0x4003333333333333L    # 2.4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public createLinearGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Lorg/apache/poi/java/awt/Graphics2D;)Lorg/apache/poi/java/awt/Paint;
    .locals 18

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->getGradientAngle()D

    move-result-wide v1

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->isRotatedWithShape()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lorg/apache/poi/sl/draw/DrawPaint;->shape:Lorg/apache/poi/sl/usermodel/PlaceableShape;

    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getRotation()D

    move-result-wide v3

    sub-double/2addr v1, v3

    :cond_0
    iget-object v3, v0, Lorg/apache/poi/sl/draw/DrawPaint;->shape:Lorg/apache/poi/sl/usermodel/PlaceableShape;

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v8

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v10

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v14

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v16

    invoke-static/range {v12 .. v17}, Lorg/apache/poi/java/awt/geom/AffineTransform;->getRotateInstance(DDD)Lorg/apache/poi/java/awt/geom/AffineTransform;

    move-result-object v1

    mul-double v2, v4, v4

    mul-double v12, v6, v6

    add-double/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    new-instance v12, Lorg/apache/poi/java/awt/geom/Point2D$Double;

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double v15, v6, v13

    add-double/2addr v15, v8

    div-double/2addr v2, v13

    sub-double v2, v15, v2

    div-double/2addr v4, v13

    add-double/2addr v10, v4

    invoke-direct {v12, v2, v3, v10, v11}, Lorg/apache/poi/java/awt/geom/Point2D$Double;-><init>(DD)V

    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform(Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/Point2D;)Lorg/apache/poi/java/awt/geom/Point2D;

    move-result-object v3

    new-instance v4, Lorg/apache/poi/java/awt/geom/Point2D$Double;

    add-double/2addr v8, v6

    invoke-direct {v4, v8, v9, v10, v11}, Lorg/apache/poi/java/awt/geom/Point2D$Double;-><init>(DD)V

    invoke-virtual {v1, v4, v2}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform(Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/Point2D;)Lorg/apache/poi/java/awt/geom/Point2D;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/poi/java/awt/geom/Point2D;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v2

    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->getGradientFractions()[F

    move-result-object v2

    array-length v4, v2

    new-array v4, v4, [Lorg/apache/poi/java/awt/Color;

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->getGradientColors()[Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v9, v5, v7

    add-int/lit8 v10, v8, 0x1

    if-nez v9, :cond_2

    sget-object v9, Lorg/apache/poi/sl/draw/DrawPaint;->TRANSPARENT:Lorg/apache/poi/java/awt/Color;

    goto :goto_1

    :cond_2
    invoke-static {v9}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/java/awt/Color;

    move-result-object v9

    :goto_1
    aput-object v9, v4, v8

    add-int/lit8 v7, v7, 0x1

    move v8, v10

    goto :goto_0

    :cond_3
    new-instance v5, Lorg/apache/poi/java/awt/LinearGradientPaint;

    invoke-direct {v5, v3, v1, v2, v4}, Lorg/apache/poi/java/awt/LinearGradientPaint;-><init>(Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/Point2D;[F[Lorg/apache/poi/java/awt/Color;)V

    return-object v5
.end method

.method public createPathGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Lorg/apache/poi/java/awt/Graphics2D;)Lorg/apache/poi/java/awt/Paint;
    .locals 6

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->getGradientFractions()[F

    move-result-object p2

    array-length v0, p2

    new-array v0, v0, [Lorg/apache/poi/java/awt/Color;

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->getGradientColors()[Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, p1, v2

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/java/awt/Color;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/sl/draw/PathGradientPaint;

    invoke-direct {p1, v0, p2}, Lorg/apache/poi/sl/draw/PathGradientPaint;-><init>([Lorg/apache/poi/java/awt/Color;[F)V

    return-object p1
.end method

.method public createRadialGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Lorg/apache/poi/java/awt/Graphics2D;)Lorg/apache/poi/java/awt/Paint;
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint;->shape:Lorg/apache/poi/sl/usermodel/PlaceableShape;

    invoke-static {p2, v0}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object p2

    new-instance v0, Lorg/apache/poi/java/awt/geom/Point2D$Double;

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    div-double/2addr v7, v5

    add-double/2addr v3, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/geom/Point2D$Double;-><init>(DD)V

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-float p2, v1

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->getGradientFractions()[F

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Lorg/apache/poi/java/awt/Color;

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->getGradientColors()[Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p1

    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v6, p1, v4

    add-int/lit8 v7, v5, 0x1

    invoke-static {v6}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/java/awt/Color;

    move-result-object v6

    aput-object v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/RadialGradientPaint;

    invoke-direct {p1, v0, p2, v1, v2}, Lorg/apache/poi/java/awt/RadialGradientPaint;-><init>(Lorg/apache/poi/java/awt/geom/Point2D;F[F[Lorg/apache/poi/java/awt/Color;)V

    return-object p1
.end method

.method public getGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Lorg/apache/poi/java/awt/Graphics2D;)Lorg/apache/poi/java/awt/Paint;
    .locals 2

    sget-object v0, Lorg/apache/poi/sl/draw/DrawPaint$2;->$SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$GradientPaint$GradientType:[I

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->getGradientType()Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/sl/draw/DrawPaint;->createPathGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Lorg/apache/poi/java/awt/Graphics2D;)Lorg/apache/poi/java/awt/Paint;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gradient fill of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not supported."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/sl/draw/DrawPaint;->createRadialGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Lorg/apache/poi/java/awt/Graphics2D;)Lorg/apache/poi/java/awt/Paint;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/sl/draw/DrawPaint;->createLinearGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Lorg/apache/poi/java/awt/Graphics2D;)Lorg/apache/poi/java/awt/Paint;

    move-result-object p1

    return-object p1
.end method

.method public getPaint(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Lorg/apache/poi/java/awt/Paint;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NORM:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)Lorg/apache/poi/java/awt/Paint;

    move-result-object p1

    return-object p1
.end method

.method public getPaint(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)Lorg/apache/poi/java/awt/Paint;
    .locals 2

    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p2, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    invoke-virtual {p0, p2, p1, p3}, Lorg/apache/poi/sl/draw/DrawPaint;->getSolidPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)Lorg/apache/poi/java/awt/Paint;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of p3, p2, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;

    if-eqz p3, :cond_2

    check-cast p2, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/sl/draw/DrawPaint;->getGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Lorg/apache/poi/java/awt/Graphics2D;)Lorg/apache/poi/java/awt/Paint;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of p3, p2, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;

    if-eqz p3, :cond_3

    check-cast p2, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/sl/draw/DrawPaint;->getTexturePaint(Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;Lorg/apache/poi/java/awt/Graphics2D;)Lorg/apache/poi/java/awt/Paint;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method public getSolidPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)Lorg/apache/poi/java/awt/Paint;
    .locals 0

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/sl/draw/DrawPaint$1;

    invoke-direct {p2, p0, p1, p3}, Lorg/apache/poi/sl/draw/DrawPaint$1;-><init>(Lorg/apache/poi/sl/draw/DrawPaint;Lorg/apache/poi/sl/usermodel/ColorStyle;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V

    invoke-static {p2}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/java/awt/Color;

    move-result-object p1

    return-object p1
.end method

.method public getTexturePaint(Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;Lorg/apache/poi/java/awt/Graphics2D;)Lorg/apache/poi/java/awt/Paint;
    .locals 8

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getImageData()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getImageRenderer(Lorg/apache/poi/java/awt/Graphics2D;Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x7

    :try_start_0
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v0, v5}, Lorg/apache/poi/sl/draw/ImageRenderer;->loadImage(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getAlpha()I

    move-result v0

    if-ltz v0, :cond_1

    const v5, 0x186a0

    if-ge v0, v5, :cond_1

    int-to-float v0, v0

    const v5, 0x47c35000    # 100000.0f

    div-float/2addr v0, v5

    float-to-double v5, v0

    invoke-interface {p2, v5, v6}, Lorg/apache/poi/sl/draw/ImageRenderer;->setAlpha(D)V

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint;->shape:Lorg/apache/poi/sl/usermodel/PlaceableShape;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getAnchor()Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getContentType()Ljava/lang/String;

    move-result-object p1

    const-string v5, "image/x-wmf"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lorg/apache/poi/java/awt/Dimension;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v6

    double-to-int v6, v6

    invoke-direct {p1, v5, v6}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    invoke-interface {p2, p1}, Lorg/apache/poi/sl/draw/ImageRenderer;->getImage(Lorg/apache/poi/java/awt/Dimension;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lorg/apache/poi/sl/draw/ImageRenderer;->getImage()Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    sget-object p1, Lorg/apache/poi/sl/draw/DrawPaint;->LOG:Lorg/apache/poi/util/POILogger;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Can\'t load image data"

    aput-object v0, p2, v3

    invoke-virtual {p1, v4, p2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object v1

    :cond_3
    new-instance p2, Lorg/apache/poi/java/awt/TexturePaint;

    invoke-direct {p2, p1, v0}, Lorg/apache/poi/java/awt/TexturePaint;-><init>(Lorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    sget-object p2, Lorg/apache/poi/sl/draw/DrawPaint;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, "Can\'t load image data - using transparent color"

    aput-object v5, v0, v3

    aput-object p1, v0, v2

    invoke-virtual {p2, v4, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object v1
.end method

.method public snapToAnchor(Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/Rectangle2D;)V
    .locals 6

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/apache/poi/java/awt/geom/Point2D;->setLocation(DD)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v4

    add-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    :goto_2
    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/apache/poi/java/awt/geom/Point2D;->setLocation(DD)V

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    add-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    add-double/2addr v2, v4

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method
