.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;->show(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;

.field public final synthetic val$mode:I

.field public final synthetic val$toolbar:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator$1;->val$toolbar:Landroid/view/View;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator$1;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator$IListener;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator$1;->val$mode:I

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator$IListener;->onShowingAnimationEnd(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator;Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ToolbarAnimator$1;->val$toolbar:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
