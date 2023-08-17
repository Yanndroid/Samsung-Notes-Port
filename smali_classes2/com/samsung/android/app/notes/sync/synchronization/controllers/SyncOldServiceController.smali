.class public Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/synchronization/controllers/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$f;,
        Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/Object;

.field public static k:Z = false

.field public static l:Z = false

.field public static m:Z = false


# instance fields
.field public a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

.field public b:Z

.field public c:Landroid/content/Context;

.field public d:Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;

.field public e:Ljava/util/Queue;

.field public f:Z

.field public g:J

.field public final h:Landroid/content/ServiceConnection;

.field public final i:Ld0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;->STOPPED:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->b:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->e:Ljava/util/Queue;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->g:J

    new-instance v0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$1;-><init>(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->h:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$a;-><init>(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->i:Ld0/a;

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic o(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->b:Z

    return p0
.end method

.method public static bridge synthetic p(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->h:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->f:Z

    return p0
.end method

.method public static bridge synthetic r(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->b:Z

    return-void
.end method

.method public static bridge synthetic s(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->f:Z

    return-void
.end method

.method public static bridge synthetic t(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    return-void
.end method

.method public static bridge synthetic u(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->M()V

    return-void
.end method

.method public static bridge synthetic v()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->j:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final A(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$f;)V
    .locals 3

    const-string v0, "SyncOldServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->j:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->f:Z

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    sget-object v2, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;->STOPPED:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->e:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->y()V

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;->CONNECTING:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->e:Ljava/util/Queue;

    :goto_0
    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;->CONNECTED:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->d:Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$f;->a(Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;->DISCONNECTING:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->e:Ljava/util/Queue;

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->f:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final B()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SyncOldServiceController"

    const-string v1, "handleBackground() : skip due to the syncing state!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    invoke-static {v0}, Lc3/q;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lc3/q;->s(Landroid/content/Context;Ljava/lang/Boolean;)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final C(Ly2/b;)Z
    .locals 5

    invoke-virtual {p1}, Ly2/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ly2/b;->b()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Ly2/b;->b()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/samsung/android/app/notes/sync/db/t;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/samsung/android/app/notes/sync/db/t;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v3

    invoke-virtual {p1, v0, v3, v4}, Lcom/samsung/android/app/notes/sync/db/t;->v(Ljava/lang/String;J)V

    new-instance v1, Lcom/samsung/android/app/notes/sync/db/s;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/db/s;->p()I

    move-result v1

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleConflictedNote() : Set dirty = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SyncOldServiceController"

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/app/notes/sync/db/t;->m(Ljava/lang/String;I)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final D(Ly2/b;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->K(Ly2/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v0, "handleModification()"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->E(Ly2/b;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final E(Ly2/b;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->H(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->O(Ly2/b;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->N(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->G(Ly2/b;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public final F(Landroid/content/Context;ZLjava/lang/Boolean;)V
    .locals 2

    if-eqz p2, :cond_4

    sget-boolean p2, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->k:Z

    const-string v0, "SyncOldServiceController"

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    sget-boolean v1, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->l:Z

    if-ne p2, v1, :cond_0

    sget-boolean p2, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->m:Z

    invoke-static {p1}, Lc3/q;->l(Landroid/content/Context;)Z

    move-result v1

    if-ne p2, v1, :cond_0

    const-string p1, "onNetworkConnected() : not changed!"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x1

    sput-boolean p2, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->k:Z

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    sput-boolean p2, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->l:Z

    invoke-static {p1}, Lc3/q;->l(Landroid/content/Context;)Z

    move-result p2

    sput-boolean p2, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->m:Z

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p2

    invoke-virtual {p2}, Lx/e;->a()Lx/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lx/a;->reConnectedToWAN(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p2

    invoke-virtual {p2}, Lx/e;->a()Lx/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lx/a;->reConnectedToMobile(Landroid/content/Context;)V

    sget-boolean p2, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->m:Z

    if-eqz p2, :cond_2

    const/16 p2, 0x69

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->j(I)V

    :cond_2
    :goto_0
    :try_start_0
    invoke-static {p1}, Ld2/c;->c(Landroid/content/Context;)Ld2/c;

    move-result-object p2

    invoke-virtual {p2}, Ld2/c;->d()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Ld2/c;->c(Landroid/content/Context;)Ld2/c;

    move-result-object p1

    invoke-virtual {p1}, Ld2/c;->i()V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->x()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    sput-boolean p1, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->k:Z

    :goto_1
    return-void
.end method

.method public final G(Ly2/b;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Ly2/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ly2/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ly2/b;->b()I

    move-result p1

    if-eq p1, v1, :cond_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : pended due to the note being synced!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SyncOldServiceController"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ly2/c;->k(Z)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final H(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ly2/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ly2/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : pended due to the previous xxSyncFirstDocUuid!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SyncOldServiceController"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    invoke-static {p1}, Lc3/q;->i(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lc3/q;->s(Landroid/content/Context;Ljava/lang/Boolean;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final I(Ly2/b;)Z
    .locals 1

    const-string v0, "handlePush()"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->E(Ly2/b;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final J(Ly2/b;)Z
    .locals 4

    invoke-virtual {p1}, Ly2/b;->f()I

    move-result v0

    const/16 v1, 0x400

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ly2/b;->e()Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/notes/sync/db/s;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;->getDocUuid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/db/s;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRecoveryNote() : No server id of note "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;->getDocUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SyncOldServiceController"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;->setServerId(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->P(Ly2/b;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final K(Ly2/b;)Z
    .locals 4

    invoke-virtual {p1}, Ly2/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "SyncOldServiceController"

    if-nez v1, :cond_0

    invoke-static {}, Ly2/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->d()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleSameSyncFirstRequest() : skip requestSyncDownFirst = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-virtual {p1}, Ly2/b;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ly2/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->d()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSameSyncFirstRequest() : skip requestSyncUpFirst = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final L(Ly2/b;)Z
    .locals 2

    invoke-virtual {p1}, Ly2/b;->g()Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Ly2/a;->c()Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;->docUuid:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;->docUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->d()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSameSyncServerNoteTemporarilyRequest() : skip handleSameSyncServerNoteTemporarilyRequest, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;->docUuid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SyncOldServiceController"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final M()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;->STOPPED:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->e:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "SyncOldServiceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleServiceDisconnected() : isExecuted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v1

    invoke-virtual {v1}, Ln/a;->o()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SyncOldServiceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleServiceDisconnected() : clear ReqQueue <- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->e:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->e:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    invoke-static {v1}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->b:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->b:Z

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->z()V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final N(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : canceled due to the elapsed time = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SyncOldServiceController"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    invoke-static {p1}, Lc3/q;->i(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lc3/q;->s(Landroid/content/Context;Ljava/lang/Boolean;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->g:J

    const/4 p1, 0x0

    return p1
.end method

.method public final O(Ly2/b;)Z
    .locals 1

    invoke-virtual {p1}, Ly2/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ly2/b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final P(Ly2/b;)V
    .locals 2

    invoke-static {p1}, Lo2/c;->s(Ly2/b;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-static {}, Ly2/c;->c()I

    move-result v0

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$c;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$c;-><init>(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;Ly2/b;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ly2/b;->f()I

    move-result v0

    invoke-static {v0}, Ly2/c;->d(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$d;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$d;-><init>(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;Ly2/b;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->A(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$f;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ly2/b;->f()I

    move-result p1

    invoke-static {v0, p1}, Ls0/b;->a(II)Lt0/i;

    move-result-object p1

    invoke-virtual {p1}, Lt0/i;->a()V

    :goto_1
    return-void
.end method

.method public final Q(ZZZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    invoke-static {v0}, Lc3/q;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lc3/q;->u(Landroid/content/Context;Ljava/lang/Boolean;)V

    :cond_0
    const-string v0, "SyncOldServiceController"

    if-eqz p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set sync enabled by settings : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lc3/q;->t(Landroid/content/Context;Ljava/lang/Boolean;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    invoke-static {p2}, Ld2/c;->c(Landroid/content/Context;)Ld2/c;

    move-result-object p2

    invoke-virtual {p2}, Ld2/c;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    invoke-static {p2}, Ld2/c;->c(Landroid/content/Context;)Ld2/c;

    move-result-object p2

    invoke-virtual {p2}, Ld2/c;->i()V

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->g(ZZ)V

    goto :goto_0

    :cond_2
    const-string p2, "set sync disabled by settings"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x6a

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->j(I)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p2, p3}, Lc3/q;->t(Landroid/content/Context;Ljava/lang/Boolean;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p2

    invoke-virtual {p2}, Lx/e;->o()Lc0/a;

    move-result-object p2

    invoke-interface {p2}, Lc0/a;->cancelAllSyncNotification()V

    invoke-static {}, Lb3/u;->h()Lb3/u;

    move-result-object p2

    invoke-virtual {p2}, Lb3/u;->s()V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    invoke-static {p2}, Ld2/c;->c(Landroid/content/Context;)Ld2/c;

    move-result-object p2

    invoke-virtual {p2}, Ld2/c;->l()V

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    invoke-static {p2}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lh/e;->f(Z)V

    return-void
.end method

.method public final R(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$f;)V
    .locals 3

    const-string v0, "SyncOldServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeAfterServiceReady() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    sget-object v2, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;->STOPPED:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    if-ne v1, v2, :cond_0

    const-string p1, "SyncOldServiceController"

    const-string v1, "already stopped!"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;->CONNECTING:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    if-ne v1, v2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->e:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->h:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object p1, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;->DISCONNECTING:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;->CONNECTED:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->d:Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;

    :goto_0
    invoke-interface {p1, v1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$f;->a(Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;->DISCONNECTING:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->d:Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;

    goto :goto_0

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->F(Landroid/content/Context;ZLjava/lang/Boolean;)V

    return-void
.end method

.method public b(ZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->Q(ZZZ)V

    return-void
.end method

.method public c()Z
    .locals 1

    invoke-static {}, Lo2/c;->o()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    invoke-static {}, Lo2/c;->q()Z

    move-result v0

    return v0
.end method

.method public e(Ly2/b;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    const-string v1, "SyncOldServiceController"

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lc3/q;->s(Landroid/content/Context;Ljava/lang/Boolean;)V

    :cond_0
    const-string p1, "requestSync() : pended due to no sync initialization!"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/notes/sync/common/SyncInitState;->a()Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;->initialized:Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

    if-eq v0, v2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lc3/q;->s(Landroid/content/Context;Ljava/lang/Boolean;)V

    const-string p1, "requestSync() : pended due to no sync initialization and setNeededToSync!"

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lc3/q;->s(Landroid/content/Context;Ljava/lang/Boolean;)V

    const-string p1, "requestSync() : pended due to no app initialization!"

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync(S) : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly2/b;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc3/p;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->p()Z

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "skip requestSync due to sync feature not supported!"

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->J(Ly2/b;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    invoke-static {v0}, Lc3/l;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "skip requestSync due to no SCloud package!"

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->C(Ly2/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip requestSync due to the conflicted note : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly2/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Ly2/b;->f()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    const/4 v2, 0x4

    if-eq v0, v2, :cond_c

    const/16 v2, 0x8

    if-eq v0, v2, :cond_b

    const/16 v2, 0x10

    if-eq v0, v2, :cond_a

    const/16 v1, 0x800

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->w()V

    return-void

    :cond_9
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->L(Ly2/b;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->d()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lc3/q;->s(Landroid/content/Context;Ljava/lang/Boolean;)V

    const-string p1, "requestSync() : pended due to the ongoing synchronization!"

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->B()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_c
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->I(Ly2/b;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_d
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->D(Ly2/b;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->P(Ly2/b;)V

    return-void
.end method

.method public f()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x69

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->j(I)V

    const-string v0, "SyncOldServiceController"

    const-string v1, "stop sync by updateSyncState"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSync() : byUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , byUserClickSyncEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncOldServiceController"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    new-instance v0, Ly2/b;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ly2/b;-><init>(I)V

    if-eqz p1, :cond_1

    invoke-static {}, Lc3/k;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lc3/k;->b(Ljava/lang/Boolean;)V

    :cond_0
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ly2/b;->m(I)V

    :cond_1
    if-eqz p2, :cond_2

    or-int/lit16 p1, v1, 0x200

    invoke-virtual {v0, p1}, Ly2/b;->m(I)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->e(Ly2/b;)V

    return-void
.end method

.method public h(Lz2/a;)V
    .locals 0

    invoke-static {p1}, Lo2/c;->B(Lz2/a;)V

    return-void
.end method

.method public i(Lz2/a;)V
    .locals 0

    invoke-static {p1}, Lo2/c;->g(Lz2/a;)V

    return-void
.end method

.method public j(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopSync() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncOldServiceController"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$e;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$e;-><init>(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->R(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$f;)V

    return-void
.end method

.method public k(Lf1/a;)V
    .locals 0

    invoke-static {p1}, Lo2/c;->e(Lf1/a;)V

    return-void
.end method

.method public l(Lf1/a;)V
    .locals 0

    invoke-static {p1}, Lo2/c;->A(Lf1/a;)V

    return-void
.end method

.method public m(Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;)V
    .locals 0

    invoke-static {p1}, Lo2/c;->f(Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;)V

    return-void
.end method

.method public n(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 2

    invoke-static {p1, p2}, Lc3/q;->w(Landroid/content/Context;Ljava/lang/Boolean;)V

    invoke-static {p1}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1}, Lc3/h;->o(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->F(Landroid/content/Context;ZLjava/lang/Boolean;)V

    invoke-static {p1}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lh/e;->g(Z)V

    return-void
.end method

.method public setSyncEnable(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->Q(ZZZ)V

    return-void
.end method

.method public final w()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->isRunningOnEditMode()Z

    move-result v0

    const-string v1, "SyncOldServiceController"

    if-eqz v0, :cond_0

    const-string v0, "checkAndRequestSyncMsFeed() : cancel the synchronization for MS feed!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "checkAndRequestSyncMsFeed() : pended due to the ongoing synchronization!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "checkAndRequestSyncMsFeed"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$b;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$b;-><init>(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final x()V
    .locals 2

    const-string v0, "SyncOldServiceController"

    const-string v1, "checkNeedToSyncWhenConnected()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    invoke-static {v0}, Lc3/q;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lc3/q;->s(Landroid/content/Context;Ljava/lang/Boolean;)V

    new-instance v0, Ly2/b;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ly2/b;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->e(Ly2/b;)V

    :cond_0
    return-void
.end method

.method public final y()V
    .locals 4

    const-string v0, "SyncOldServiceController"

    const-string v1, "connectingSyncService()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->i:Ld0/a;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;->setServiceContract(Ld0/a;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->h:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    sget-object v0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;->CONNECTING:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    return-void
.end method

.method public final z()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    sget-object v2, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;->STOPPED:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->y()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
