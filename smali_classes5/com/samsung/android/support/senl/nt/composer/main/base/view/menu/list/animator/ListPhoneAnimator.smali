.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator;


# instance fields
.field private final mBackgroundView:Landroid/view/View;

.field private final mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator$IAnimatorListener;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator$IAnimatorListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;->mBackgroundView:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator$IAnimatorListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;->mBackgroundView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator$IAnimatorListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator$IAnimatorListener;

    return-object p0
.end method


# virtual methods
.method public hideAnimationView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;->mBackgroundView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;->mBackgroundView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public startHidingAnim()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$anim;->comp_list_slide_down_phone:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$anim;->comp_list_dim_disable_phone:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;

    invoke-direct {v2}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public startShowingAnim()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$anim;->comp_list_slide_up_phone:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$anim;->comp_list_dim_enable_phone:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;

    invoke-direct {v2}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;->mBackgroundView:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
