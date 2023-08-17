.class public Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoeditBaseLogicHandler"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/content/ServiceConnection;

.field public c:Landroid/content/Context;

.field public d:Landroid/util/SparseBooleanArray;

.field public e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler$1;-><init>(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->b:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->d:Landroid/util/SparseBooleanArray;

    new-instance v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler$2;-><init>(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->e:Landroid/os/Handler;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p1

    invoke-virtual {p1}, Lx/e;->a()Lx/a;

    move-result-object p1

    invoke-interface {p1}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->c:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public b()Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->e(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public declared-synchronized d(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "CoeditBaseLogic"

    const-string v2, "selfBind() call bindService()"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->a(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->c:Landroid/content/Context;

    if-eqz v2, :cond_0

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->a(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->b:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const-string v0, "CoeditBaseLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selfBind() count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "CoeditBaseLogic"

    const-string v1, "selfUnbind() start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "CoeditBaseLogic"

    const-string v1, "selfUnbind() call unbindService()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->b:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "CoeditBaseLogic"

    const-string v2, "selfUnbind() unbindService"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const-string v0, "CoeditBaseLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selfUnbind() count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->d(I)V

    return-void
.end method

.method public g(Landroid/os/Message;J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->d(I)V

    return-void
.end method
