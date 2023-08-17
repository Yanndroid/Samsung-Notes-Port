.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->startClosingSaveAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationEnd# ClosingSaveAnimation"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->b(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/IClosingAnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/IClosingAnimationListener;->onClosingAnimationEnd()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationRepeat# ClosingSaveAnimation"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationStart# ClosingSaveAnimation"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
