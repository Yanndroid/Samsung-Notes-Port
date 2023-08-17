.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;->j()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationEnd# AlphaAnimation"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;->i(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;->f(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;->h(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;->e(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;->b(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;->c(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;->g(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/IPinAnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/IPinAnimationListener;->onPinAnimationEnd()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;->j()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationRepeat# AlphaAnimation"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;->j()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationStart# AlphaAnimation"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
