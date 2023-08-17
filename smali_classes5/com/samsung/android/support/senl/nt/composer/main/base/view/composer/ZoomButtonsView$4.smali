.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->setVisible(Z)V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setVisible# block to show"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
