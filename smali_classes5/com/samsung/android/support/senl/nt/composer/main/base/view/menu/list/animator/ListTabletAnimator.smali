.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator;


# static fields
.field private static final ANIM_DURATION:I = 0x1c2


# instance fields
.field private mInitialMargin:I

.field private mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator$IAnimatorListener;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator$IAnimatorListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mInitialMargin:I

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator$IAnimatorListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator$IAnimatorListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator$IAnimatorListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->setInitialStartMargin()V

    return-void
.end method

.method private setInitialStartMargin()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mInitialMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public hideAnimationView()V
    .locals 0

    return-void
.end method

.method public startHidingAnim()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mInitialMargin:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mInitialMargin:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startShowingAnim()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mInitialMargin:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mInitialMargin:I

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
