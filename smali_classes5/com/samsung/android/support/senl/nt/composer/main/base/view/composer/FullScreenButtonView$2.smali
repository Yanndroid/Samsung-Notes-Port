.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->runHideAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;Z)V

    return-void
.end method
