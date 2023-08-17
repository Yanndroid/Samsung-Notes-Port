.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator$IListener;
    }
.end annotation


# instance fields
.field private mLastAnimation:Landroid/view/animation/Animation;

.field private mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator$IListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator$IListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator$IListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator$IListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator$IListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;->mLastAnimation:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public hide(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$anim;->comp_pagelist_toolbar_hide:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;->mLastAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;->mLastAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;->mLastAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;->mLastAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;->mLastAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$anim;->comp_pagelist_toolbar_show:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;->mLastAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;->mLastAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;->mLastAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
