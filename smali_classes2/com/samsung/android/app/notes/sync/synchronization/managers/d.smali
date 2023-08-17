.class public Lcom/samsung/android/app/notes/sync/synchronization/managers/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lcom/samsung/android/app/notes/sync/synchronization/managers/d;


# instance fields
.field public a:Z

.field public b:Ljava/util/Timer;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/d;->a:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/d;->b:Ljava/util/Timer;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/synchronization/managers/d;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/d;->a:Z

    return-void
.end method

.method public static declared-synchronized c()Lcom/samsung/android/app/notes/sync/synchronization/managers/d;
    .locals 2

    const-class v0, Lcom/samsung/android/app/notes/sync/synchronization/managers/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/synchronization/managers/d;->c:Lcom/samsung/android/app/notes/sync/synchronization/managers/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/notes/sync/synchronization/managers/d;

    invoke-direct {v1}, Lcom/samsung/android/app/notes/sync/synchronization/managers/d;-><init>()V

    sput-object v1, Lcom/samsung/android/app/notes/sync/synchronization/managers/d;->c:Lcom/samsung/android/app/notes/sync/synchronization/managers/d;

    :cond_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/synchronization/managers/d;->c:Lcom/samsung/android/app/notes/sync/synchronization/managers/d;
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
.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/d;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/d;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/d;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/d;->a:Z

    if-eqz v0, :cond_0

    const-string p1, "SyncReSyncManager"

    const-string v0, "requestReSync() : is already scheduled"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "SyncReSyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestReSync() : delaySec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/synchronization/managers/d$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/synchronization/managers/d$a;-><init>(Lcom/samsung/android/app/notes/sync/synchronization/managers/d;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/d;->b:Ljava/util/Timer;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/d;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
