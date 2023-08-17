.class public Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;
.super Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/concurrent/Executor;

.field public static f:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/a;

.field public static g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj/a;",
            ">;"
        }
    .end annotation
.end field

.field public static h:J


# instance fields
.field public d:Lj/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "MdeDeleteLogic"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->e:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->f:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/a;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->g:Ljava/util/List;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->h:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;-><init>()V

    new-instance v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a$a;-><init>(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->d:Lj/b;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->j(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->k(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static g(Lj/a;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/a;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->g:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added progress listener - size : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MdeDeleteLogic"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static h()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/a;

    const/4 v2, -0x1

    const-string v3, ""

    invoke-interface {v1, v3, v2}, Lj/a;->onEnded(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static m(Lj/a;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->g:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removed progress listener - size : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MdeDeleteLogic"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->q(I)V

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->p(ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "MdeDeleteLogic"

    const-string v0, "can\'t start deleting now!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public i()V
    .locals 4

    const-class v0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->f:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/a;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->a:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/a;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->f:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/a;

    :cond_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->f:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/a;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->d:Lj/b;

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

.method public final j(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnded : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->h:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdeDeleteLogic"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/a;

    const/4 v2, -0x1

    invoke-interface {v1, p1, v2}, Lj/a;->onEnded(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ly1/a;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailed ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdeDeleteLogic"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/a;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly1/a;

    invoke-virtual {v2}, Ly1/a;->b()Lc1/a;

    move-result-object v2

    invoke-virtual {v2}, Lc1/b;->a()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lj/a;->onEnded(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/a;

    invoke-interface {v1, p1}, Lj/a;->onStarted(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/String;Ljava/util/List;)V
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

    const-string v0, "MdeDeleteLogic"

    const-string v1, "requestDelete()"

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

    const/16 v1, 0xc8

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

.method public o()V
    .locals 2

    const-string v0, "MdeDeleteLogic"

    const-string v1, "requestDeleteLocalAll()"

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

    const/16 v1, 0x12c

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->b:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->f(Landroid/os/Message;)V

    return-void
.end method

.method public final p(ILjava/lang/Object;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDelete : msgCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MdeDeleteLogic"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->h:J

    instance-of p1, p2, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/d;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/d;

    invoke-virtual {p2}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/d;->b()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->l(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->f:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/a;

    sget-object v1, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/b;->k(Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/List;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "startDelete : messageObj is invalid!"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final q(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDeleteLocalAll : msgCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MdeDeleteLogic"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->f:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/a;

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/a;->n(Ljava/util/concurrent/Executor;)Z

    return-void
.end method

.method public r()V
    .locals 2

    const-string v0, "MdeDeleteLogic"

    const-string v1, "stopDelete()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->f:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/a;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/b;->m()V

    return-void
.end method
