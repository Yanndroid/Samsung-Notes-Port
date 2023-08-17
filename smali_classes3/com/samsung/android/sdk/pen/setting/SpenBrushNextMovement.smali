.class abstract Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenBrushNextMovement"


# instance fields
.field private mCurrentDegree:F

.field private mFromAlignment:I

.field private mNextDegree:F

.field private mStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;

.field private mTarget:Landroid/view/View;

.field private mToAlignment:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mTarget:Landroid/view/View;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mCurrentDegree:F

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mNextDegree:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mFromAlignment:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mToAlignment:I

    return-void
.end method


# virtual methods
.method public applyStrategy(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;)Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mFromAlignment:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mToAlignment:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mTarget:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->decideCurrentDegree(Landroid/view/View;)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mCurrentDegree:F

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mToAlignment:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->decideNextDegree(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;II)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mNextDegree:F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Degree["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mCurrentDegree:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mNextDegree:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenBrushNextMovement"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public abstract decideCurrentDegree(Landroid/view/View;)F
.end method

.method public decideDirection(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mFromAlignment:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mToAlignment:I

    return-void
.end method

.method public abstract decideNextDegree(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;II)F
.end method

.method public getAniRotation()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;->getAniRotation()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrentDegree()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mCurrentDegree:F

    return v0
.end method

.method public getFromAlignment()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mFromAlignment:I

    return v0
.end method

.method public getNextDegree()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mNextDegree:F

    return v0
.end method

.method public getRotation()F
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->hasSameDegree()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mFromAlignment:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mToAlignment:I

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->getAniRotation()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v1, 0x43340000    # 180.0f

    :cond_0
    return v1
.end method

.method public getToAlignment()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mToAlignment:I

    return v0
.end method

.method public getViewRotation()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSameDegree()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mCurrentDegree:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->mNextDegree:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needLeftRightFlip()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->hasSameDegree()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract needTopDownFlip()Z
.end method
