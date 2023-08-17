.class Lcom/samsung/android/sdk/pen/setting/SpenBrushPenNextMovement;
.super Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenBrushPenNextMovement"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public decideCurrentDegree(Landroid/view/View;)F
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->getPenDegree()F

    move-result p1

    return p1
.end method

.method public decideNextDegree(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;II)F
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;->getPenDegree(III)F

    move-result p1

    return p1
.end method

.method public needTopDownFlip()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->hasSameDegree()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->getAniRotation()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->getCurrentDegree()F

    move-result v3

    cmpl-float v2, v3, v2

    if-nez v2, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x42b40000    # 90.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
