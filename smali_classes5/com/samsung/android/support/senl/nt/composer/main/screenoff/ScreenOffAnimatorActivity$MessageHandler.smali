.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$MessageHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;Landroid/os/Looper;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$MessageHandler;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$MessageHandler;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$FinishReason;->NOTIFY_FINISHED:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$FinishReason;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->c(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$FinishReason;)V

    :cond_0
    return-void
.end method
