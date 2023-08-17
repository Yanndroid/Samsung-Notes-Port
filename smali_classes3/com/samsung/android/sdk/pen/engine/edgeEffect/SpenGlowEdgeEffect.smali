.class public Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffect;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenGlowEdgeEffect"


# instance fields
.field private isEffectEnabled:Z

.field private mEffect:[Landroid/widget/EdgeEffect;

.field private mIsShownEdgeEffect:Z

.field private mOwnerView:Landroid/view/View;

.field private mRotation:[F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTransitionX:[I

.field private mTransitionY:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mOwnerView:Landroid/view/View;

    new-instance p2, Landroid/view/ContextThemeWrapper;

    sget v0, Lcom/samsung/android/spen/R$style;->BasicUITheme:I

    invoke-direct {p2, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->init(Landroid/content/Context;)V

    return-void
.end method

.method private detachFromParentView()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/widget/EdgeEffect;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mRotation:[F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    new-instance v4, Landroid/widget/EdgeEffect;

    invoke-direct {v4, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mRotation:[F

    const/high16 v4, 0x42b40000    # 90.0f

    int-to-float v5, v2

    mul-float/2addr v5, v4

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mTransitionX:[I

    aput v1, p1, v1

    const/4 v2, 0x1

    aput v2, p1, v2

    const/4 v3, 0x2

    aput v2, p1, v3

    const/4 v4, 0x3

    aput v1, p1, v4

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mTransitionY:[I

    aput v1, p1, v1

    aput v1, p1, v2

    aput v2, p1, v3

    aput v2, p1, v4

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->isEffectEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mIsShownEdgeEffect:Z

    return-void
.end method

.method private show(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    aget-object p1, v0, p1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mScreenHeight:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/EdgeEffect;->onPull(F)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mIsShownEdgeEffect:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public attachToParentView(Landroid/view/ViewParent;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->detachFromParentView()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drawEffect(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public isFinished()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v0, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mScreenWidth:I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mTransitionX:[I

    aget v4, v4, v0

    mul-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mScreenHeight:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mTransitionY:[I

    aget v5, v5, v0

    mul-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mRotation:[F

    aget v3, v3, v0

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mOwnerView:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->isEffectEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_1

    const/4 v0, 0x3

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mIsShownEdgeEffect:Z

    :goto_0
    const/4 v0, 0x4

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setEffectEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->isEffectEnabled:Z

    return-void
.end method

.method public setScreenInfo(IIII)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScreenInfo width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", startY="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "SpenGlowEdgeEffect"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mScreenWidth:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mScreenHeight:I

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    const/4 p4, 0x0

    aget-object p3, p3, p4

    invoke-virtual {p3, p1, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    iget p2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mScreenHeight:I

    iget p3, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mScreenWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    const/4 p2, 0x2

    aget-object p1, p1, p2

    iget p2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mScreenWidth:I

    iget p3, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mScreenHeight:I

    invoke-virtual {p1, p2, p3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    const/4 p2, 0x3

    aget-object p1, p1, p2

    iget p2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mScreenHeight:I

    iget p3, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mScreenWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public showEdgeEffect(ZZZZFF)V
    .locals 0

    iget-boolean p5, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->isEffectEnabled:Z

    if-eqz p5, :cond_4

    iget-boolean p5, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->mIsShownEdgeEffect:Z

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->show(I)V

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->show(I)V

    :cond_2
    if-eqz p3, :cond_3

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->show(I)V

    :cond_3
    if-eqz p4, :cond_4

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->show(I)V

    :cond_4
    :goto_0
    return-void
.end method
