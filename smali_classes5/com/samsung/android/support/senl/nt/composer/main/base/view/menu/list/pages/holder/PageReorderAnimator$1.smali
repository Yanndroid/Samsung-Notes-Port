.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator;->startDragInAnimation(Landroid/view/View;Landroid/graphics/PointF;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator$IListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator;

.field public final synthetic val$listener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator$IListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator$IListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator$1;->val$listener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator$IListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator$1;->val$listener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator$IListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator$IListener;->onAnimationEnd()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator$1;->val$listener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator$IListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderAnimator$IListener;->onAnimationStart()V

    return-void
.end method
