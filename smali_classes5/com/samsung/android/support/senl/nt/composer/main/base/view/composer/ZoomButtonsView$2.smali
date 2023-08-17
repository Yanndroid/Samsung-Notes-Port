.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->makeShowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->release()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
