.class public Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;
    }
.end annotation


# static fields
.field private static final DEBUG_ALPHA_MAX:I = 0xff

.field private static final DEFAULT_HORIZONTAL_MIDDLE_RATIO:F = 0.5f

.field private static final DEFAULT_VERTICAL_LEFT_RATIO:F = 0.15f

.field private static final DEFAULT_VERTICAL_RIGHT_RATIO:F = 0.85f

.field private static final PRIORITY_VERTICAL_CONCEPT:Z = false


# instance fields
.field public mDebugHorizontalInfo:Ljava/lang/String;

.field private mDebugPaint:Landroid/graphics/Paint;

.field public mDebugVerticalInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugVerticalInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugHorizontalInfo:Ljava/lang/String;

    return-void
.end method

.method private getHorizontalDestination(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 5

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-le v0, v1, :cond_4

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->LEFT:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->isIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    sget-object v3, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->RIGHT:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->isIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-ne v1, v4, :cond_2

    return v2

    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Horizontal / left "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  right "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugHorizontalInfo:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    if-le v0, p1, :cond_3

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugHorizontalInfo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / RIGHT "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugHorizontalInfo:Ljava/lang/String;

    add-int/2addr v0, p1

    iget p1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v0

    iget p2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugHorizontalInfo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / LEFT "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v0, p1

    neg-int p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugHorizontalInfo:Ljava/lang/String;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p1

    sub-int/2addr p3, p2

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr p1, p2

    return p1

    :cond_4
    :goto_0
    return v2
.end method

.method private getVerticalDestination(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 9

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->TOP:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->isIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->BOTTOM:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->isIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v3, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->BOTTOM:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getDifference(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getDifference(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Vertical / top "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  bottom "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugVerticalInfo:Ljava/lang/String;

    add-int v3, v1, v4

    add-int v5, v3, p1

    neg-int v5, v5

    add-int v6, v3, v0

    iget v7, p3, Landroid/graphics/Rect;->top:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v5

    sub-int/2addr v7, v8

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v6

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p3

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugVerticalInfo:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (topOutDelta "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bottomOutDelta "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugVerticalInfo:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    div-int p3, v1, v0

    add-int/lit8 p1, p1, 0x1

    div-int p1, v4, p1

    if-le p3, p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugVerticalInfo:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " / DOWN "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugVerticalInfo:Ljava/lang/String;

    if-nez v7, :cond_2

    if-eqz p2, :cond_2

    return v5

    :cond_2
    sub-int/2addr v6, p2

    return v6

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugVerticalInfo:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " / UP "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int p3, v3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugVerticalInfo:Ljava/lang/String;

    if-eqz v7, :cond_4

    if-nez p2, :cond_4

    return v6

    :cond_4
    add-int/2addr v5, v7

    return v5
.end method

.method private updateVerticalBorderCalibration(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->TOP:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->setMinLeft(F)V

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->BOTTOM:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->setMinLeft(F)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->setMaxRight(F)V

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->setMaxRight(F)V

    return-void
.end method


# virtual methods
.method public debugDrawDestinationLine(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->getDestination(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object p2

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p4

    int-to-float v1, p4

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p4

    int-to-float v2, p4

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p4

    iget v0, p2, Landroid/graphics/Point;->x:I

    add-int/2addr p4, v0

    int-to-float v3, p4

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    iget p2, p2, Landroid/graphics/Point;->y:I

    add-int/2addr p3, p2

    int-to-float v4, p3

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public debugDrawDestinationRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->getDestination(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object p2

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget p4, p3, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Point;->x:I

    add-int/2addr p4, v0

    int-to-float v2, p4

    iget p4, p3, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    add-int/2addr p4, v1

    int-to-float v3, p4

    iget p4, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p4, v0

    int-to-float v4, p4

    iget p4, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v1

    int-to-float v5, p4

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget p4, p3, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Point;->x:I

    add-int/2addr p4, v0

    int-to-float v2, p4

    iget p4, p3, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    add-int/2addr p4, v1

    int-to-float v3, p4

    iget p4, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p4, v0

    int-to-float v4, p4

    iget p4, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v1

    int-to-float v5, p4

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget p4, p3, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Point;->x:I

    add-int/2addr p4, v0

    int-to-float v2, p4

    iget p4, p3, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    add-int/2addr p4, v1

    int-to-float v3, p4

    iget p4, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr p4, v0

    int-to-float v4, p4

    iget p4, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v1

    int-to-float v5, p4

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget p4, p3, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v0, p4

    int-to-float v2, v0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v0

    int-to-float v3, v1

    int-to-float v4, p4

    int-to-float v5, v0

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget p4, p3, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v0, p4

    int-to-float v2, v0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v0

    int-to-float v3, v1

    int-to-float v4, p4

    int-to-float v5, v0

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget p4, p3, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v0, p4

    int-to-float v2, v0

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v0

    int-to-float v3, v1

    int-to-float v4, p4

    int-to-float v5, v0

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget p4, p3, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v0, p4

    int-to-float v2, v0

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    add-int/2addr p2, p3

    int-to-float v3, p2

    int-to-float v4, p4

    int-to-float v5, p3

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public debugDrawFloaterOutBounds(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->ALL:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->isIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    const v0, -0xffff01

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    const v0, -0xff0100

    :goto_0
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public debugInfo(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugVerticalInfo:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugHorizontalInfo:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public debugIntersectRegion(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->LEFT:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->isIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getIntersectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    mul-float v4, v1, v2

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getScaledRegion(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getRegion(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->RIGHT:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->isIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getIntersectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    mul-float v4, v1, v2

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getScaledRegion(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getRegion(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->TOP:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->isIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getIntersectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    mul-float v4, v1, v2

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getScaledRegion(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getRegion(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->BOTTOM:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->isIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getIntersectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v0, p3, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getScaledRegion(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->getRegion(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public getDestination(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Point;
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->updateVerticalBorderCalibration(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->getVerticalDestination(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce;->getHorizontalDestination(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p1

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method public isIntersect(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 0

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;->isIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method
