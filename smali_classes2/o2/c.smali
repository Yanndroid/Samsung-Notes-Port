.class public Lo2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static f:Lo2/d;

.field public static g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz2/a;",
            ">;"
        }
    .end annotation
.end field

.field public static h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field public static i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf1/a;",
            ">;"
        }
    .end annotation
.end field

.field public static j:J

.field public static final k:Ljava/util/concurrent/Executor;

.field public static l:Ld0/a;


# instance fields
.field public a:Lb3/u;

.field public b:Ljava/lang/Thread;

.field public c:I

.field public d:J

.field public e:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lo2/c;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lo2/c;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lo2/c;->i:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    sput-wide v0, Lo2/c;->j:J

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "SyncLogic"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lo2/c;->k:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo2/c;->b:Ljava/lang/Thread;

    const/16 v0, 0x12d

    iput v0, p0, Lo2/c;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo2/c;->d:J

    new-instance v0, Lo2/c$a;

    invoke-direct {v0, p0}, Lo2/c$a;-><init>(Lo2/c;)V

    iput-object v0, p0, Lo2/c;->e:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;

    invoke-static {}, Lb3/u;->h()Lb3/u;

    move-result-object v0

    iput-object v0, p0, Lo2/c;->a:Lb3/u;

    return-void
.end method

.method public static A(Lf1/a;)V
    .locals 3

    sget-object v0, Lo2/c;->i:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo2/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string p0, "SyncLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed SyncEnableMode listener - size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lo2/c;->i:Ljava/util/ArrayList;

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

.method public static B(Lz2/a;)V
    .locals 3

    sget-object v0, Lo2/c;->g:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo2/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string p0, "SyncLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed Ui Sync progress listener - size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lo2/c;->g:Ljava/util/ArrayList;

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

.method public static D(Ld0/a;)V
    .locals 0

    sput-object p0, Lo2/c;->l:Ld0/a;

    return-void
.end method

.method public static G()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lo2/c;->j:J

    return-void
.end method

.method public static bridge synthetic a(Lo2/c;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lo2/c;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lo2/c;->t(I)V

    return-void
.end method

.method public static bridge synthetic c(Lo2/c;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lo2/c;->u(I)V

    return-void
.end method

.method public static bridge synthetic d(Lo2/c;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lo2/c;->v(ILjava/lang/String;)V

    return-void
.end method

.method public static e(Lf1/a;)V
    .locals 3

    sget-object v0, Lo2/c;->i:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo2/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/a;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :cond_1
    sget-object v1, Lo2/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "SyncLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added SyncEnableMode listener - size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lo2/c;->i:Ljava/util/ArrayList;

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

.method public static f(Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;)V
    .locals 3

    sget-object v0, Lo2/c;->h:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo2/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :cond_1
    sget-object v1, Lo2/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "SyncLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added Sync progress listener - size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lo2/c;->h:Ljava/util/ArrayList;

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

.method public static g(Lz2/a;)V
    .locals 3

    sget-object v0, Lo2/c;->g:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo2/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/a;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :cond_1
    sget-object v1, Lo2/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "SyncLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added Ui Sync progress listener - size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lo2/c;->g:Ljava/util/ArrayList;

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

.method public static o()Z
    .locals 2

    sget-object v0, Lo2/c;->f:Lo2/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo2/a;->e()Ly2/b;

    move-result-object v0

    invoke-virtual {v0}, Ly2/b;->f()I

    move-result v0

    invoke-static {v0}, Ly2/c;->e(I)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "SyncLogic"

    const-string v1, "isCurrentSyncPossible() : mWDocCloudSyncHelper is null!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static q()Z
    .locals 3

    sget-object v0, Lo2/c;->f:Lo2/d;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo2/a;->f()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNotSyncing : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SyncLogic"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static s(Ly2/b;)Z
    .locals 0

    invoke-virtual {p0}, Ly2/b;->e()Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public C(Ly2/b;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSync() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly2/b;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncLogic"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lo2/c;->f:Lo2/d;

    if-eqz v0, :cond_4

    invoke-static {}, Lo2/c;->G()V

    sget-object v0, Lo2/c;->f:Lo2/d;

    invoke-virtual {v0, p1}, Lo2/a;->h(Ly2/b;)V

    invoke-static {p1}, Lo2/c;->s(Ly2/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ly2/b;->e()Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ly2/b;->e()Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    move-result-object p1

    invoke-static {p1}, Ly2/a;->g(Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo2/c;->y()V

    invoke-virtual {p0}, Lo2/c;->z()V

    invoke-virtual {p1}, Ly2/b;->g()Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ly2/b;->g()Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;

    move-result-object v0

    invoke-static {v0}, Ly2/a;->h(Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;)V

    :cond_1
    invoke-virtual {p1}, Ly2/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ly2/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly2/a;->f(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Ly2/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ly2/b;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly2/a;->i(Ljava/lang/String;)V

    :cond_3
    :goto_0
    sget-object p1, Lo2/c;->f:Lo2/d;

    sget-object v0, Lo2/c;->k:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0}, Lo2/b;->l(Ljava/util/concurrent/Executor;)Z

    goto :goto_1

    :cond_4
    const-string p1, "requestSync() : mWDocCloudSyncHelper is null!"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public E(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopSync() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncLogic"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/q;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/q;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-static {v0, v2}, Lc3/q;->s(Landroid/content/Context;Ljava/lang/Boolean;)V

    :cond_1
    sget-object v0, Lo2/c;->f:Lo2/d;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/synchronization/managers/e;->b()Lcom/samsung/android/app/notes/sync/synchronization/managers/e;

    move-result-object v0

    sget-object v1, Lo2/c;->f:Lo2/d;

    invoke-virtual {v1}, Lo2/a;->e()Ly2/b;

    move-result-object v1

    invoke-virtual {v1}, Ly2/b;->f()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/notes/sync/synchronization/managers/e;->c(II)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lo2/c;->f:Lo2/d;

    invoke-virtual {v0, p1}, Lo2/a;->j(I)Z

    goto :goto_1

    :cond_2
    const-string p1, "stopSync() : mWDocCloudSyncHelper is null!"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lo2/c;->l(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final F()V
    .locals 2

    const-string v0, "SyncLogic"

    const-string v1, "terminateSyncSelfService()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lo2/c;->l:Ld0/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ld0/a;->a()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 4

    const-class v0, Lo2/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo2/c;->f:Lo2/d;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo2/a;->i(Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;)V

    sget-object v1, Lo2/c;->f:Lo2/d;

    invoke-virtual {v1, v2}, Lo2/a;->g(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V

    sget-object v1, Lo2/c;->f:Lo2/d;

    invoke-virtual {v1}, Lo2/a;->f()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    sget-object v1, Lo2/c;->f:Lo2/d;

    const/16 v3, 0x6c

    invoke-virtual {v1, v3}, Lo2/a;->j(I)Z

    :cond_0
    sput-object v2, Lo2/c;->f:Lo2/d;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final j(I)Z
    .locals 8

    new-instance v0, Lb3/e;

    invoke-direct {v0}, Lb3/e;-><init>()V

    sget-object v7, Lo2/c;->i:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_0
    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SDOCX:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    sget-object v3, Lo2/c;->f:Lo2/d;

    invoke-virtual {v3}, Lo2/a;->e()Ly2/b;

    move-result-object v3

    invoke-virtual {v3}, Ly2/b;->f()I

    move-result v4

    sget-object v5, Lo2/c;->i:Ljava/util/ArrayList;

    new-instance v6, Lo2/c$c;

    invoke-direct {v6, p0}, Lo2/c$c;-><init>(Lo2/c;)V

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lb3/e;->a(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;IILjava/util/List;Ljava/lang/Runnable;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    sget-object v1, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SDOCX:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v0

    invoke-static {v1, v0}, Ls0/b;->b(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)Lt0/i;

    move-result-object v0

    invoke-virtual {v0}, Lt0/i;->a()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final k(I)V
    .locals 3

    const/4 v0, 0x4

    and-int/2addr p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc3/q;->l(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->setWiFiNetworkFailed(Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->setWiFiNetworkFailed(Z)V

    :cond_1
    return-void
.end method

.method public final l(I)V
    .locals 6

    sget-object v0, Lo2/c;->h:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo2/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lo2/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;->onEnded(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "SyncLogic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSyncProgressListeners() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lo2/c;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final m(I)V
    .locals 6

    sget-object v0, Lo2/c;->g:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo2/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lo2/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, p1}, Lz2/a;->onEnded(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "SyncLogic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleUiSyncProgressListeners() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public n()V
    .locals 3

    const-string v0, "SyncLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSyncLogic() : v."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/notes/sync/utils/a;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lo2/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo2/c;->f:Lo2/d;

    if-nez v1, :cond_0

    new-instance v1, Lo2/d;

    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lo2/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lo2/c;->f:Lo2/d;

    :cond_0
    sget-object v1, Lo2/c;->f:Lo2/d;

    iget-object v2, p0, Lo2/c;->e:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;

    invoke-virtual {v1, v2}, Lo2/a;->i(Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "onCreateSyncThread"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v1, Lo2/c$b;

    invoke-direct {v1, p0}, Lo2/c$b;-><init>(Lo2/c;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lo2/c;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final p(I)Z
    .locals 6

    iget v0, p0, Lo2/c;->c:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lo2/c;->d:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    const-string p1, "SyncLogic"

    const-string v0, "isNeededToReFullSync() : false <- same resultCode and requested within 1 min"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/16 v0, 0x15f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1fc

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1fd

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iput p1, p0, Lo2/c;->c:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo2/c;->d:J

    const/4 p1, 0x1

    return p1
.end method

.method public final r(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public final t(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCancelled() cancelCode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), et = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lo2/c;->j:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SyncLogic"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo2/c;->w()V

    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object p1

    invoke-virtual {p1}, Lh/e;->h()V

    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object p1

    invoke-virtual {p1}, Lh/e;->i()V

    invoke-virtual {p0}, Lo2/c;->F()V

    return-void
.end method

.method public final u(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnded() resultCode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), et = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lo2/c;->j:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncLogic"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo2/c;->w()V

    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object v0

    invoke-virtual {v0}, Lh/e;->i()V

    invoke-virtual {p0, p1}, Lo2/c;->p(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/synchronization/managers/d;->c()Lcom/samsung/android/app/notes/sync/synchronization/managers/d;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/notes/sync/synchronization/managers/d;->d(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo2/c;->F()V

    :goto_0
    return-void
.end method

.method public final v(ILjava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailed() : errorCode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), et = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lo2/c;->j:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " , msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SyncLogic"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lo2/c;->r(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Lc3/q;->s(Landroid/content/Context;Ljava/lang/Boolean;)V

    :cond_0
    invoke-virtual {p0, p1}, Lo2/c;->x(I)V

    invoke-virtual {p0, p1}, Lo2/c;->k(I)V

    invoke-virtual {p0, p1}, Lo2/c;->j(I)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lo2/c;->f:Lo2/d;

    invoke-virtual {p2}, Lo2/a;->e()Ly2/b;

    move-result-object p2

    invoke-virtual {p2}, Ly2/b;->f()I

    move-result p2

    invoke-static {p1, p2}, Ls0/b;->a(II)Lt0/i;

    move-result-object p1

    invoke-virtual {p1}, Lt0/i;->a()V

    :cond_1
    invoke-virtual {p0}, Lo2/c;->F()V

    return-void
.end method

.method public final w()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->isWiFiNetworkFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->setWiFiNetworkFailed(Z)V

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lo2/c;->x(I)V

    return-void
.end method

.method public final x(I)V
    .locals 3

    const-string v0, "SyncLogic"

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const-string v1, "onPostSync() : success"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostSync() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncErrorCode;->getErrorCodesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Lx2/b;->g(Z)V

    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Ly2/c;->h(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Ly2/c;->i(Landroid/content/Context;I)V

    invoke-virtual {p0, p1}, Lo2/c;->m(I)V

    invoke-virtual {p0, p1}, Lo2/c;->l(I)V

    const-string p1, "Sync(E)"

    invoke-static {v0, p1}, Lc3/p;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final y()V
    .locals 4

    const-string v0, "SyncLogic"

    const-string v1, "onPreStartedSync()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lc3/q;->s(Landroid/content/Context;Ljava/lang/Boolean;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lx2/b;->g(Z)V

    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ly2/c;->a(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreStartedSync() : ExternalLastSyncError = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ly2/c;->a(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncErrorCode;->getErrorCodesString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Ly2/c;->h(Landroid/content/Context;I)V

    :cond_0
    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ly2/c;->b(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreStartedSync() : InternalLastSyncError = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ly2/c;->b(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncErrorCode;->getErrorCodesString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Ly2/c;->i(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public final z()V
    .locals 6

    const-string v0, "SyncLogic"

    const-string v1, "onStartedSync()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->o()Lc0/a;

    move-result-object v0

    invoke-interface {v0}, Lc0/a;->cancelAllSyncNotification()V

    iget-object v0, p0, Lo2/c;->a:Lb3/u;

    invoke-virtual {v0}, Lb3/u;->s()V

    sget-object v0, Lo2/c;->g:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo2/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lo2/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2}, Lz2/a;->onStarted()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "SyncLogic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartedSync() : Exception - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lo2/c;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object v0

    invoke-virtual {v0}, Lh/e;->k()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
