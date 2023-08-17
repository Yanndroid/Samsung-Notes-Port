.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->startComposerViewAnimation()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->l()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationEnd# ComposerViewAnimation"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->j(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->i(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/IShowingAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->i(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/IShowingAnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/IShowingAnimationListener;->onShowingAnimationEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->l()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationRepeat# ComposerViewAnimation"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->l()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationStart# ComposerViewAnimation"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
