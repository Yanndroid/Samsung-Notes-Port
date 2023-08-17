.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;Ljava/lang/Runnable;)V

    return-void
.end method
