.class Lcom/samsung/android/sdk/pen/setting/SpenBrushColorNextMovement;
.super Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenBrushColorNextMovement"


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
    .locals 1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->getFlip(I)F

    move-result p1

    return p1
.end method

.method public decideNextDegree(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;II)F
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;->setColorInfo(III)V

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;->getColorFlipDegree()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public needTopDownFlip()Z
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->hasSameDegree()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->getAniRotation()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->getViewRotation()F

    move-result v2

    cmpl-float v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->getCurrentDegree()F

    move-result v5

    cmpl-float v5, v5, v4

    if-nez v5, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v5, 0x42b40000    # 90.0f

    cmpl-float v0, v0, v5

    if-nez v0, :cond_2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->getNextDegree()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    :cond_3
    move v1, v3

    :cond_4
    return v1
.end method
