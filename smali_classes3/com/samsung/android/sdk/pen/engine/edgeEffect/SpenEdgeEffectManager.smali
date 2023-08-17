.class public Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mEdgeEffect:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;-><init>(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;-><init>(Landroid/content/Context;Landroid/view/View;)V

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;->mEdgeEffect:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffect;

    return-void
.end method


# virtual methods
.method public attachToParentView(Landroid/view/ViewParent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;->mEdgeEffect:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffect;

    instance-of v1, v0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenGlowEdgeEffect;->attachToParentView(Landroid/view/ViewParent;)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;->mEdgeEffect:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffect;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffect;->close()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;->mEdgeEffect:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffect;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffect;->drawEffect(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public isAnimationsFinished()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;->mEdgeEffect:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffect;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffect;->isFinished()Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;->mEdgeEffect:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffect;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffect;->onTouch(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public setEffectEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;->mEdgeEffect:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffect;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffect;->setEffectEnabled(Z)V

    return-void
.end method

.method public setScreenInfo(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;->mEdgeEffect:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffect;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffect;->setScreenInfo(IIII)V

    return-void
.end method

.method public showEdgeEffect(ZZZZFF)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;->mEdgeEffect:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffect;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffect;->showEdgeEffect(ZZZZFF)V

    return-void
.end method
