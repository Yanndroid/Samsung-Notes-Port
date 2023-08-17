.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI;
.super Landroidx/transition/Visibility;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI$InOutMode;
    }
.end annotation


# static fields
.field private static final DEFAULT_ALPHA_DURATION:J = 0x96L

.field private static final DEFAULT_ALPHA_IN_VALUE:F = 1.0f

.field private static final DEFAULT_ALPHA_OUT_VALUE:F = 0.0f

.field private static final DEFAULT_SCALE_DURATION:J = 0xfaL

.field private static final DEFAULT_SCALE_IN_VALUE:F = 1.0f

.field private static final DEFAULT_SCALE_OUT_VALUE:F = 0.95f

.field public static final IN:I = 0x1

.field public static final OUT:I = 0x2

.field private static final PROPNAME_ALPHA:Ljava/lang/String; = "android:inout:transitionAlpha"

.field private static final PROPNAME_SCALE_X:Ljava/lang/String; = "android:inout:transitionScaleX"

.field private static final PROPNAME_SCALE_Y:Ljava/lang/String; = "android:inout:transitionScaleY"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/transition/Visibility;->setMode(I)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI;->resetView(Landroid/view/View;)V

    return-void
.end method

.method private createAlphaAnimator(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI;->getAlpha(I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x96

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p2
.end method

.method private createAnimator(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI;->createScaleAnimator(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI;->createAlphaAnimator(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object p2

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p2, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI$1;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI;Landroid/view/View;)V

    invoke-virtual {v1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1
.end method

.method private createScaleAnimator(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 3

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI;->getScaleX(I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI;->getScaleY(I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p2
.end method

.method private getAlpha(I)Landroid/animation/PropertyValuesHolder;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI;->getStartAlpha(I)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI;->getEndAlpha(I)F

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    const-string p1, "android:inout:transitionAlpha"

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    return-object p1
.end method

.method private getEndAlpha(I)F
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    return p1
.end method

.method private getEndScale(I)F
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const p1, 0x3f733333    # 0.95f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    return p1
.end method

.method private getScaleX(I)Landroid/animation/PropertyValuesHolder;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI;->getStartScale(I)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI;->getEndScale(I)F

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    const-string p1, "android:inout:transitionScaleX"

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    return-object p1
.end method

.method private getScaleY(I)Landroid/animation/PropertyValuesHolder;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI;->getStartScale(I)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI;->getEndScale(I)F

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    const-string p1, "android:inout:transitionScaleY"

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    return-object p1
.end method

.method private getStartAlpha(I)F
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    return p1
.end method

.method private getStartScale(I)F
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const p1, 0x3f733333    # 0.95f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    return p1
.end method

.method private resetView(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public getAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 1

    invoke-virtual {p0}, Landroidx/transition/Visibility;->getMode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI;->createAnimator(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI;->createAnimator(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x2

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwInOutVI;->createAnimator(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method
