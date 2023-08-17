.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->init(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;)Landroid/transition/Transition$TransitionListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;)Landroid/transition/Transition$TransitionListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
