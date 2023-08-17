.class public Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;
.super Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/concurrent/Executor;

.field public static f:J

.field public static g:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/c;

.field public static h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lr/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:Lj/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "CoeditImportLogic"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->e:Ljava/util/concurrent/Executor;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->f:J

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->g:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;-><init>()V

    new-instance v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b$a;-><init>(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->d:Lj/b;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->i(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->j(Ljava/lang/String;)V

    return-void
.end method

.method public static g(Lr/a;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->h:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr/a;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :cond_1
    sget-object v1, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "CoeditImportLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added progress listener - size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static l(Lr/a;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->h:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string p0, "CoeditImportLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed progress listener - size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public c(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->n(ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "CoeditImportLogic"

    const-string v0, "can\'t start sharing now!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h()V
    .locals 4

    const-class v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->g:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/c;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->a:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/c;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->g:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/c;

    :cond_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->g:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/c;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->d:Lj/b;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/b;->l(Lj/b;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ly1/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CoeditImportLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailed["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->h:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr/a;

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly1/a;

    invoke-virtual {v3}, Ly1/a;->b()Lc1/a;

    move-result-object v3

    invoke-virtual {v3}, Lc1/b;->a()I

    move-result v3

    invoke-interface {v2, p1, v3}, Lr/a;->onEnded(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 6

    const-string v0, "CoeditImportLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImportEnded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->f:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->h:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr/a;

    const/4 v3, -0x1

    invoke-interface {v2, p1, v3}, Lr/a;->onEnded(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final k(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->h:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr/a;

    invoke-interface {v2, p1}, Lr/a;->onStarted(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CoeditImportLogic"

    const-string v1, "requestImport()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ln/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->b:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->b()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/d;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->b:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->f(Landroid/os/Message;)V

    return-void
.end method

.method public final n(ILjava/lang/Object;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startShare : msgCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoeditImportLogic"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->f:J

    instance-of p1, p2, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/d;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/d;

    invoke-virtual {p2}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/d;->b()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->k(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->g:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/c;

    sget-object v1, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/b;->k(Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/List;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "startShare : messageObj is invalid!"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public o()V
    .locals 2

    const-string v0, "CoeditImportLogic"

    const-string v1, "stopImport()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->g:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/c;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/b;->m()V

    return-void
.end method
