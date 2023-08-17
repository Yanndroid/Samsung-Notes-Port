.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->makeHideAnimation()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
