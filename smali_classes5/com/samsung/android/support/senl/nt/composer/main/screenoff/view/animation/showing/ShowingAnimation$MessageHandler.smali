.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;Landroid/os/Looper;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->k(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->g(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->c(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;

    move-result-object p1

    const/16 v0, 0x2bc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->c(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;

    move-result-object p1

    const-wide/16 v2, 0x2bc

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->k(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->i(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/IShowingAnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/IShowingAnimationListener;->onShowingAnimationHalfProgressed()V

    :goto_1
    return-void
.end method
