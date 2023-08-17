.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->startShowingAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator$IAnimatorListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator$IAnimatorListener;->onShowingAnimationStart()V

    return-void
.end method
