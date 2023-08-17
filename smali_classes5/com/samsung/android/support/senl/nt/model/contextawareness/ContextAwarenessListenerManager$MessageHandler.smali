.class Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager$MessageHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;Landroid/os/Looper;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager$MessageHandler;->this$0:Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage MESSAGE_NOTIFY_FINISHED"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager$MessageHandler;->this$0:Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->a(Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0}, Landroid/util/Pair;->hashCode()I

    move-result v2

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager$MessageHandler;->this$0:Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->b(Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager$MessageHandler;->this$0:Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->a(Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
