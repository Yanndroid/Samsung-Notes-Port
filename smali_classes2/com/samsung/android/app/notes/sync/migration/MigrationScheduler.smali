.class public Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String;


# instance fields
.field public final a:Lcom/samsung/android/app/notes/sync/migration/a;

.field public b:Lx1/b;

.field public c:Ljava/util/Timer;

.field public d:Ljava/util/Timer;

.field public e:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "MigrationScheduler"

    invoke-static {v0}, Lx1/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;->NONE:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->e:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->a:Lcom/samsung/android/app/notes/sync/migration/a;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->g()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->m(J)V

    return-void
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final d()V
    .locals 2

    new-instance v0, Lx1/b;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lx1/b;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->b:Lx1/b;

    return-void
.end method

.method public final e()Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->e:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;

    return-object v0
.end method

.method public final f(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->e()Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidState checkState/currentState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$h;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;->NONE:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public final declared-synchronized g()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->b:Lx1/b;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    sget-object v2, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "latchDown count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->b:Lx1/b;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->f:Ljava/lang/String;

    const-string v1, "onFinish"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;->FINISH:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->f(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->n(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->m(J)V

    return-void
.end method

.method public i()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->f:Ljava/lang/String;

    const-string v1, "onReady"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;->READY:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->n(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->d()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->p()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->l()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->o()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->j()V

    return-void
.end method

.method public j()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->b:Lx1/b;

    invoke-virtual {v0}, Lx1/b;->b()Z

    move-result v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart interrupted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;->START:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->n(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->a:Lcom/samsung/android/app/notes/sync/migration/a;

    invoke-interface {v0}, Lcom/samsung/android/app/notes/sync/migration/a;->a()V

    return-void
.end method

.method public k()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->f:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;->STOP:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->f(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->n(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->b:Lx1/b;

    invoke-virtual {v0}, Lx1/b;->a()V

    return-void
.end method

.method public final l()V
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$c;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$c;-><init>(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Lcom/samsung/android/support/senl/nt/base/common/startmanager/SyncStartManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$d;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$d;-><init>(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$e;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$e;-><init>(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$f;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$f;-><init>(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/samsung/android/support/senl/nt/base/common/startmanager/CoeditStartManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$g;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$g;-><init>(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final m(J)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ComposerStartManager;->setFinalBlockTimeToStartComposer(J)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/SyncStartManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/startmanager/SyncStartManager;

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/SyncStartManager;->setFinalBlockTimeToStartSync(J)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->setFinalBlockTime(J)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;->setFinalBlockTime(J)V

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/CoeditStartManager;->setFinalBlockTimeToStartSync(J)V

    return-void
.end method

.method public final n(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->e:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$State;

    return-void
.end method

.method public final o()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->b:Lx1/b;

    invoke-virtual {v0}, Lx1/b;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCountDownLatch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final p()V
    .locals 12

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->c:Ljava/util/Timer;

    new-instance v1, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$a;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$a;-><init>(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->d:Ljava/util/Timer;

    new-instance v7, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$b;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$b;-><init>(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;)V

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x7d0

    invoke-virtual/range {v6 .. v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
