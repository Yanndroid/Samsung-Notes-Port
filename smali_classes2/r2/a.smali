.class public Lr2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Z = false


# instance fields
.field public a:Lt2/b;

.field public b:Lt2/c;

.field public c:Lp2/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lt2/b;Lt2/c;Lp2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr2/a;->a:Lt2/b;

    iput-object p2, p0, Lr2/a;->b:Lt2/c;

    iput-object p3, p0, Lr2/a;->c:Lp2/a;

    return-void
.end method

.method public static declared-synchronized h(Z)V
    .locals 1

    const-class v0, Lr2/a;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lr2/a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    :goto_0
    :try_start_0
    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    iget-object v1, p0, Lr2/a;->b:Lt2/c;

    invoke-virtual {v1}, Lt2/c;->l()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt2/b;->R(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ls0/c;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lr2/a;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    throw v0
.end method

.method public final b(I)Z
    .locals 1

    const/16 v0, 0x145

    if-ne p1, v0, :cond_0

    const-string p1, "SyncOldNote"

    const-string v0, "call enableFullSynchronization() due to the too old timestamp error"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lr2/a;->b:Lt2/c;

    invoke-virtual {p1}, Lt2/c;->c()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()Z
    .locals 5

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->m()Lb0/b;

    move-result-object v1

    iget-object v2, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->m()Lb0/b;

    move-result-object v3

    invoke-interface {v3}, Lb0/b;->getSdocContractYes()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lb0/b;->getUUIDListByDirty(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt2/b;->N(Ljava/util/List;)V

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->r()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->k()Lb0/c;

    move-result-object v2

    iget-object v3, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v4

    invoke-virtual {v4}, Lx/e;->m()Lb0/b;

    move-result-object v4

    invoke-interface {v4}, Lb0/b;->getSdocContractYes()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lb0/c;->getTagUUIDListByDirty(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lt2/b;->P(Ljava/util/List;)V

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->t()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lt2/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->h()Lb0/a;

    move-result-object v2

    iget-object v3, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v4

    invoke-virtual {v4}, Lx/e;->m()Lb0/b;

    move-result-object v4

    invoke-interface {v4}, Lb0/b;->getSdocContractYes()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lb0/a;->getCategoryUUIDListByDirty(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lt2/b;->M(Ljava/util/List;)V

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->q()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->m()Lb0/b;

    move-result-object v0

    iget-object v2, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->m()Lb0/b;

    move-result-object v3

    invoke-interface {v3}, Lb0/b;->getSdocContractYes()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lb0/b;->getUUIDListByCategoryDirty(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->m()Lb0/b;

    move-result-object v2

    iget-object v3, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v4

    invoke-virtual {v4}, Lx/e;->m()Lb0/b;

    move-result-object v4

    invoke-interface {v4}, Lb0/b;->getSdocContractYes()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lb0/b;->getUUIDListByDirtyForExtraInfo(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lt2/b;->O(Ljava/util/List;)V

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->s()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final d()Z
    .locals 4

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lt2/b;->M(Ljava/util/List;)V

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0, v1}, Lt2/b;->P(Ljava/util/List;)V

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0, v1}, Lt2/b;->N(Ljava/util/List;)V

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->y()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lt2/a;->g()J

    move-result-wide v0

    invoke-static {}, Lt2/a;->h()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Lt2/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->h()Lb0/a;

    move-result-object v1

    iget-object v2, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->m()Lb0/b;

    move-result-object v3

    invoke-interface {v3}, Lb0/b;->getSdocContractYes()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lb0/a;->getCategoryUUIDListByDirty(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt2/b;->M(Ljava/util/List;)V

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->q()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->k()Lb0/c;

    move-result-object v1

    iget-object v2, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->m()Lb0/b;

    move-result-object v3

    invoke-interface {v3}, Lb0/b;->getSdocContractYes()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lb0/c;->getTagUUIDListByDirty(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt2/b;->P(Ljava/util/List;)V

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->t()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->m()Lb0/b;

    move-result-object v1

    iget-object v2, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->m()Lb0/b;

    move-result-object v3

    invoke-interface {v3}, Lb0/b;->getSdocContractYes()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lb0/b;->getUUIDListByDirty(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt2/b;->N(Ljava/util/List;)V

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->r()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->m()Lb0/b;

    move-result-object v1

    iget-object v2, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->m()Lb0/b;

    move-result-object v3

    invoke-interface {v3}, Lb0/b;->getSdocContractYes()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lb0/b;->getUUIDListByDirtyForExtraInfo(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt2/b;->O(Ljava/util/List;)V

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->s()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 10

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lx2/d;->c()Ly2/b;

    move-result-object v0

    invoke-virtual {v0}, Ly2/b;->f()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x40

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x20

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    invoke-static {v1}, Lt2/a;->q(Z)V

    return v1

    :cond_2
    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/q;->c(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const-wide/16 v2, 0x3e8

    if-eqz v0, :cond_5

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v6

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/q;->c(Landroid/content/Context;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    div-long/2addr v6, v2

    const-wide/16 v2, 0x258

    cmp-long v0, v6, v2

    if-gtz v0, :cond_4

    cmp-long v0, v6, v4

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOldNoteSyncNeeded() : false due to timeDifferenceSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncOldNote"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_0
    return v1

    :cond_5
    invoke-virtual {p0}, Lr2/a;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {}, Lt2/a;->h()J

    move-result-wide v8

    sub-long/2addr v6, v8

    div-long/2addr v6, v2

    const-wide/16 v2, 0xe10

    cmp-long v0, v6, v2

    if-gtz v0, :cond_8

    cmp-long v0, v6, v4

    if-gez v0, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {}, Lt2/a;->m()Z

    move-result v0

    return v0

    :cond_8
    :goto_1
    return v1
.end method

.method public f()I
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start syncOldNote : SyncMsgType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v1}, Lx2/d;->c()Ly2/b;

    move-result-object v1

    invoke-virtual {v1}, Ly2/b;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncOldNote"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    const-string v0, "accountGuidHash is null"

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-boolean v2, Lr2/a;->d:Z

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lr2/a;->b:Lt2/c;

    invoke-virtual {v2, v6}, Lt2/c;->i(Z)V

    invoke-static {v6}, Lr2/a;->h(Z)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/TimeManager;

    move-result-object v2

    iget-object v7, p0, Lr2/a;->a:Lt2/b;

    iget-object v8, p0, Lr2/a;->b:Lt2/c;

    invoke-virtual {v8}, Lx2/f;->b()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lx2/d;->n(J)V

    iget-object v7, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v7}, Lx2/d;->d()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->updateSettingsUsingServer(J)V

    iget-object v2, p0, Lr2/a;->b:Lt2/c;

    invoke-virtual {v2}, Lt2/c;->m()V

    iget-object v2, p0, Lr2/a;->b:Lt2/c;

    invoke-virtual {v2, v0}, Lt2/c;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lr2/a;->b:Lt2/c;

    invoke-virtual {v0}, Lx2/f;->a()V

    iget-object v0, p0, Lr2/a;->b:Lt2/c;

    invoke-virtual {v0}, Lt2/c;->g()V

    const-string v0, "Password"

    invoke-static {v1, v0}, Lc3/p;->n(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls2/j;

    iget-object v2, p0, Lr2/a;->a:Lt2/b;

    iget-object v7, p0, Lr2/a;->b:Lt2/c;

    iget-object v8, p0, Lr2/a;->c:Lp2/a;

    invoke-direct {v0, v2, v7, v8}, Ls2/j;-><init>(Lt2/b;Lt2/c;Lp2/a;)V

    invoke-virtual {v0}, Ls2/j;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SyncServerPassword failed!"

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lr2/a;->e()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Don\'t need SyncOldNote!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_3
    invoke-virtual {p0}, Lr2/a;->a()V

    invoke-virtual {p0}, Lr2/a;->d()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    const-string v0, "Don\'t need old sync!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v0}, Lx2/d;->d()J

    move-result-wide v0

    iget-object v3, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->A()J

    move-result-wide v3

    sub-long/2addr v0, v3

    invoke-static {v0, v1}, Lt2/a;->s(J)V

    return v2

    :cond_4
    invoke-virtual {p0}, Lr2/a;->g()Z

    move-result v0

    if-nez v0, :cond_5

    return v3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finish syncOldNote : et = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public final g()Z
    .locals 14

    const-string v0, "SyncOldNote"

    const-string v1, "Category"

    invoke-static {v0, v1}, Lc3/p;->n(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ls2/a;

    iget-object v2, p0, Lr2/a;->a:Lt2/b;

    iget-object v3, p0, Lr2/a;->c:Lp2/a;

    invoke-direct {v1, v2, v3}, Ls2/a;-><init>(Lt2/b;Lp2/a;)V

    invoke-virtual {v1}, Ls2/a;->j()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v1, "Tag"

    invoke-static {v0, v1}, Lc3/p;->n(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ls2/k;

    iget-object v3, p0, Lr2/a;->a:Lt2/b;

    iget-object v4, p0, Lr2/a;->c:Lp2/a;

    invoke-direct {v1, v3, v4}, Ls2/k;-><init>(Lt2/b;Lp2/a;)V

    invoke-virtual {v1}, Ls2/k;->j()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    const-string v1, "ExtraList (DownSync)"

    invoke-static {v0, v1}, Lc3/p;->n(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ls2/c;

    iget-object v3, p0, Lr2/a;->a:Lt2/b;

    iget-object v4, p0, Lr2/a;->b:Lt2/c;

    iget-object v5, p0, Lr2/a;->c:Lp2/a;

    invoke-direct {v1, v3, v4, v5}, Ls2/c;-><init>(Lt2/b;Lt2/c;Lp2/a;)V

    invoke-virtual {v1}, Ls2/c;->d()Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    const-string v3, "ExtraList (UpSync)"

    invoke-static {v0, v3}, Lc3/p;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ls2/c;->e()Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    const-string v4, "MergeCategory"

    invoke-static {v0, v4}, Lc3/p;->n(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ls2/f;

    iget-object v5, p0, Lr2/a;->a:Lt2/b;

    invoke-direct {v4, v5}, Ls2/f;-><init>(Lt2/b;)V

    invoke-virtual {v4}, Ls2/f;->h()Z

    move-result v4

    if-nez v4, :cond_4

    return v2

    :cond_4
    const-string v4, "CategoryOrder"

    invoke-static {v0, v4}, Lc3/p;->n(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ls2/b;

    iget-object v5, p0, Lr2/a;->a:Lt2/b;

    iget-object v6, p0, Lr2/a;->c:Lp2/a;

    invoke-direct {v4, v5, v6}, Ls2/b;-><init>(Lt2/b;Lp2/a;)V

    invoke-virtual {v4}, Ls2/b;->c()Z

    move-result v4

    if-nez v4, :cond_5

    return v2

    :cond_5
    const-string v4, "ExtraListTag (DownSync)"

    invoke-static {v0, v4}, Lc3/p;->n(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ls2/e;

    iget-object v5, p0, Lr2/a;->a:Lt2/b;

    iget-object v6, p0, Lr2/a;->b:Lt2/c;

    iget-object v7, p0, Lr2/a;->c:Lp2/a;

    invoke-direct {v4, v5, v6, v7}, Ls2/e;-><init>(Lt2/b;Lt2/c;Lp2/a;)V

    invoke-virtual {v4}, Ls2/e;->e()Z

    move-result v5

    if-nez v5, :cond_6

    return v2

    :cond_6
    const-string v5, "ExtraListTag (UpSync)"

    invoke-static {v0, v5}, Lc3/p;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ls2/e;->f()Z

    move-result v6

    if-nez v6, :cond_7

    return v2

    :cond_7
    const-string v6, "MergeTag"

    invoke-static {v0, v6}, Lc3/p;->n(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ls2/g;

    iget-object v7, p0, Lr2/a;->a:Lt2/b;

    invoke-direct {v6, v7}, Ls2/g;-><init>(Lt2/b;)V

    invoke-virtual {v6}, Ls2/g;->b()Z

    move-result v6

    if-nez v6, :cond_8

    return v2

    :cond_8
    const-string v6, "ExtraInfoList (DownSync)"

    invoke-static {v0, v6}, Lc3/p;->n(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ls2/d;

    iget-object v8, p0, Lr2/a;->a:Lt2/b;

    iget-object v9, p0, Lr2/a;->b:Lt2/c;

    iget-object v10, p0, Lr2/a;->c:Lp2/a;

    invoke-direct {v7, v8, v9, v10}, Ls2/d;-><init>(Lt2/b;Lt2/c;Lp2/a;)V

    invoke-virtual {v7}, Ls2/d;->d()Z

    move-result v8

    if-nez v8, :cond_9

    return v2

    :cond_9
    const-string v8, "ExtraInfoList (UpSync)"

    invoke-static {v0, v8}, Lc3/p;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ls2/d;->e()Z

    move-result v7

    if-nez v7, :cond_a

    return v2

    :cond_a
    const-string v7, "Old Note"

    invoke-static {v0, v7}, Lc3/p;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v7}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v9

    iget-object v7, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v7}, Lt2/b;->A()J

    move-result-wide v11

    sub-long/2addr v9, v11

    new-instance v7, Ls2/i;

    iget-object v11, p0, Lr2/a;->a:Lt2/b;

    iget-object v12, p0, Lr2/a;->b:Lt2/c;

    iget-object v13, p0, Lr2/a;->c:Lp2/a;

    invoke-direct {v7, v11, v12, v13}, Ls2/i;-><init>(Lt2/b;Lt2/c;Lp2/a;)V

    invoke-virtual {v7}, Ls2/i;->o()Z

    move-result v7

    if-nez v7, :cond_b

    return v2

    :cond_b
    invoke-static {v0, v3}, Lc3/p;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ls2/c;->e()Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    invoke-static {v0, v5}, Lc3/p;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ls2/e;->f()Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    invoke-static {v0, v6}, Lc3/p;->n(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ls2/d;

    iget-object v3, p0, Lr2/a;->a:Lt2/b;

    iget-object v4, p0, Lr2/a;->b:Lt2/c;

    iget-object v5, p0, Lr2/a;->c:Lp2/a;

    invoke-direct {v1, v3, v4, v5}, Ls2/d;-><init>(Lt2/b;Lt2/c;Lp2/a;)V

    invoke-virtual {v1}, Ls2/d;->d()Z

    move-result v3

    if-nez v3, :cond_e

    return v2

    :cond_e
    invoke-static {v0, v8}, Lc3/p;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ls2/d;->e()Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v1}, Lx2/d;->e()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lr2/a;->a:Lt2/b;

    invoke-virtual {v1}, Lx2/d;->f()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {v9, v10}, Lt2/a;->s(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update last syncTimeForSDoc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const/4 v0, 0x1

    return v0
.end method
