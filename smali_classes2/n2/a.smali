.class public Ln2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Ln2/a;


# instance fields
.field public a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ln2/a;->b:J

    sget-boolean v0, Ln/a;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/b;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/b;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->a()Lx/a;

    move-result-object v1

    invoke-interface {v1}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    return-void
.end method

.method public static declared-synchronized e()Ln2/a;
    .locals 2

    const-class v0, Ln2/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ln2/a;->c:Ln2/a;

    if-nez v1, :cond_0

    new-instance v1, Ln2/a;

    invoke-direct {v1}, Ln2/a;-><init>()V

    sput-object v1, Ln2/a;->c:Ln2/a;

    :cond_0
    sget-object v1, Ln2/a;->c:Ln2/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSyncUpFirst() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ly2/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ly2/b;-><init>(I)V

    invoke-virtual {v0, p1}, Ly2/b;->o(Ljava/lang/String;)V

    iget-object p1, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->e(Ly2/b;)V

    return-void
.end method

.method public B()V
    .locals 2

    const-string v0, "SyncManager"

    const-string v1, "requestSyncWithoutCancel()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ly2/b;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ly2/b;-><init>(I)V

    iget-object v1, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->e(Ly2/b;)V

    return-void
.end method

.method public C(ZZ)V
    .locals 1

    iget-object v0, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->setSyncEnable(ZZ)V

    return-void
.end method

.method public D(ZZ)V
    .locals 1

    iget-object v0, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->b(ZZ)V

    return-void
.end method

.method public E(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "SyncManager"

    const-string p2, "setWiFiSyncOnly() : context is null!"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->n(Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method

.method public F(I)V
    .locals 1

    iget-object v0, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->j(I)V

    return-void
.end method

.method public G()V
    .locals 2

    invoke-virtual {p0}, Ln2/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    const/16 v1, 0x6f

    invoke-interface {v0, v1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->j(I)V

    :cond_0
    return-void
.end method

.method public H(Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;)V
    .locals 1

    invoke-virtual {p0}, Ln2/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;->onEnded(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ln2/a;->b(Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;)V

    iget-object p1, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    const/16 v0, 0x6e

    invoke-interface {p1, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->j(I)V

    :goto_0
    return-void
.end method

.method public I(Landroid/content/Context;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "triggerSyncPended() : callee = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getCallee([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/common/SyncInitState;->a()Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;->initialized:Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

    if-eq v0, v2, :cond_0

    const-string/jumbo p1, "triggerSyncPended() : fail to sync due to no initialization!"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Ln2/a;->b:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "triggerSyncPended() : fail to sync due to the min elapsed time = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lx2/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lc3/q;->i(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ln2/a;->b:J

    invoke-virtual {p0}, Ln2/a;->n()V

    goto :goto_2

    :cond_3
    const-string/jumbo p1, "triggerSyncPended() : fail to sync due to impossible auto sync"

    goto :goto_1

    :cond_4
    const-string/jumbo p1, "triggerSyncPended() : fail to sync due to the ongoing sync"

    :goto_1
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public J()V
    .locals 1

    iget-object v0, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->f()V

    return-void
.end method

.method public a(Lf1/a;)V
    .locals 1

    iget-object v0, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->k(Lf1/a;)V

    return-void
.end method

.method public b(Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;)V
    .locals 1

    iget-object v0, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->m(Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;)V

    return-void
.end method

.method public c(Lz2/a;)V
    .locals 1

    iget-object v0, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->i(Lz2/a;)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;->setDeleteServerData(Z)V

    invoke-virtual {p0}, Ln2/a;->p()V

    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->c()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->d()Z

    move-result v0

    return v0
.end method

.method public h(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network : onNetworkConnected() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->a(ZZ)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ln2/a;->s(Ljava/lang/String;)V

    return-void
.end method

.method public j(Lf1/a;)V
    .locals 1

    iget-object v0, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->l(Lf1/a;)V

    return-void
.end method

.method public k(Lz2/a;)V
    .locals 1

    iget-object v0, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->h(Lz2/a;)V

    return-void
.end method

.method public l(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;)V
    .locals 1

    new-instance v0, Ll2/c;

    invoke-direct {v0}, Ll2/c;-><init>()V

    invoke-virtual {v0, p1, p2}, Ll2/c;->d(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;)V

    return-void
.end method

.method public m(ZZ)V
    .locals 1

    iget-object v0, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->g(ZZ)V

    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ln2/a;->o(Ljava/lang/String;)V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "SyncManager"

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestSyncBackground() : callee = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getCallee([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSyncBackground() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ly2/b;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Ly2/b;-><init>(I)V

    iget-object v0, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->e(Ly2/b;)V

    return-void
.end method

.method public p()V
    .locals 2

    const-string v0, "SyncManager"

    const-string v1, "requestSyncByForce()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ly2/b;

    const/16 v1, 0xc0

    invoke-direct {v0, v1}, Ly2/b;-><init>(I)V

    iget-object v1, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->e(Ly2/b;)V

    return-void
.end method

.method public q()V
    .locals 2

    const-string v0, "SyncManager"

    const-string v1, "requestSyncByManual()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ly2/b;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ly2/b;-><init>(I)V

    iget-object v1, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->e(Ly2/b;)V

    return-void
.end method

.method public r()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSyncByModification() : callee = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getCallee([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ly2/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ly2/b;-><init>(I)V

    iget-object v1, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->e(Ly2/b;)V

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SyncManager"

    const-string v1, "requestSyncByPush()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getNewNotesServiceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ly2/b;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ly2/b;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ly2/b;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ly2/b;-><init>(I)V

    :goto_0
    iget-object v0, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->e(Ly2/b;)V

    return-void
.end method

.method public t()Z
    .locals 4

    const-string v0, "SyncManager"

    const-string v1, "requestSyncByTipCard()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->a()Lx/a;

    move-result-object v1

    invoke-interface {v1}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lx/a;->updateCurrentType(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->b()La0/a;

    move-result-object v1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->a()Lx/a;

    move-result-object v3

    invoke-interface {v3}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v3, v2}, La0/a;->show(Landroid/content/Context;I)V

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Ln2/a;->q()V

    return v2
.end method

.method public u(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSyncDownFirst() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ly2/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ly2/b;-><init>(I)V

    invoke-virtual {v0, p1}, Ly2/b;->k(Ljava/lang/String;)V

    iget-object p1, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->e(Ly2/b;)V

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSyncDownForRecovery() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ly2/b;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ly2/b;-><init>(I)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ly2/b;->l(Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;)V

    iget-object p1, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->e(Ly2/b;)V

    return-void
.end method

.method public w(Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSyncDownForServerNoteTemporarily() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;->docUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fullFolderPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;->fullFolderPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ly2/b;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ly2/b;-><init>(I)V

    invoke-virtual {v0, p1}, Ly2/b;->n(Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;)V

    iget-object p1, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->e(Ly2/b;)V

    return-void
.end method

.method public x(Ljava/lang/String;I)V
    .locals 2
    .param p2    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity$ConflictStrategy;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSyncForConflictedNote() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , conflictStrategy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ly2/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ly2/b;-><init>(I)V

    invoke-virtual {v0, p1}, Ly2/b;->j(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ly2/b;->i(I)V

    iget-object p1, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->e(Ly2/b;)V

    return-void
.end method

.method public y()V
    .locals 2

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncManager"

    const-string v1, "requestSyncForMsFeed()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ly2/b;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ly2/b;-><init>(I)V

    iget-object v1, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->e(Ly2/b;)V

    :cond_0
    return-void
.end method

.method public z()V
    .locals 2

    const-string v0, "SyncManager"

    const-string v1, "requestSyncForServerPolling()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ly2/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ly2/b;-><init>(I)V

    iget-object v1, p0, Ln2/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;->e(Ly2/b;)V

    :cond_0
    return-void
.end method
