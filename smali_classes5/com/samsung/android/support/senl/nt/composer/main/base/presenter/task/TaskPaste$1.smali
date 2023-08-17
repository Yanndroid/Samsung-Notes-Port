.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->runBroadcastReceiver(Landroid/content/Context;Landroid/content/ClipData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitCanceled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->e()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onTransitCanceled"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;

    invoke-direct {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;-><init>()V

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onError(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTransitCompleted(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "fileUri"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->e()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTransitCompleted# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTransitFailed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->e()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onTransitFailed"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTransitFinished(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTransitFinished"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPControlClipData;->convertUriToClipItem(Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getInputValue()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->p(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;Landroid/content/ClipData;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;)V

    return-void
.end method
