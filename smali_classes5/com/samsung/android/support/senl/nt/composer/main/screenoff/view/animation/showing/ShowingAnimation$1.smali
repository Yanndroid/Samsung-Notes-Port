.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->startContainerAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->l()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationEnd# ContainerAnimation"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->c(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->l()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationRepeat# ContainerAnimation"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->l()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationStart# ContainerAnimation"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->d(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->e(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->h(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->b(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
