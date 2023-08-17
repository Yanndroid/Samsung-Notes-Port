.class public Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator$Contract;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpringAnimator"


# instance fields
.field private contract:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator$Contract;

.field private scaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private scaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator$Contract;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;->contract:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator$Contract;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;)Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator$Contract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;->contract:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator$Contract;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;->scaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;->scaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method private cancelSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public runScaleAnimation(Landroid/view/View;FFF)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;->scaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;->cancelSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;->scaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;->cancelSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;->scaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;->scaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;->scaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p3, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;->scaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p3, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;->scaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p3, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator$1;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator$1;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;F)V

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;->scaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p3, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator$2;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator$2;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;F)V

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;->scaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;->scaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method
