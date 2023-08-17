.class public Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;
.super Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncProcessTask"

.field private static mDeleteServerData:Z = false


# instance fields
.field private mSyncTaskContact:Lp2/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;I)V

    new-instance p1, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask$a;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask$a;-><init>(Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;)V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;->mSyncTaskContact:Lp2/a;

    return-void
.end method

.method private applyCurrentServerTime()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/TimeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->updateSettingsUsingServer(J)V

    return-void
.end method

.method private checkCAServer()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mAccountGuid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/CAServerKeyHelper;->hasKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Li2/a;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Li2/a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a;->h()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mAccountGuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Li2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkChangesBeforeSync()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncOperationSDocx:Lx2/g;

    sget-object v1, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mAccountGuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/common/util/HashUtils;->generateSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx2/g;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncOperationSDocx:Lx2/g;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/utils/a;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx2/g;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncOperationSDocx:Lx2/g;

    invoke-virtual {v0}, Lx2/f;->a()V

    return-void
.end method

.method private checkDebugMode()V
    .locals 0

    return-void
.end method

.method private checkPush()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld2/c;->c(Landroid/content/Context;)Ld2/c;

    move-result-object v0

    invoke-virtual {v0}, Ld2/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld2/c;->c(Landroid/content/Context;)Ld2/c;

    move-result-object v0

    invoke-virtual {v0}, Ld2/c;->i()V

    :cond_0
    return-void
.end method

.method private doDeleteOperationsForTest()V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;->mDeleteServerData:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->q()Lf0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/notes/sync/infos/ModelType;->SYNC:Lcom/samsung/android/app/notes/sync/infos/ModelType;

    const-string v3, "Del Notes start"

    invoke-interface {v0, v1, v2, v3}, Lf0/a;->showInfo(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/infos/ModelType;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncOperationSDocx:Lx2/g;

    invoke-virtual {v0}, Lx2/g;->q()V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->q()Lf0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    const-string v3, "Del folder start"

    invoke-interface {v0, v1, v2, v3}, Lf0/a;->showInfo(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/infos/ModelType;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncOperationSDocx:Lx2/g;

    invoke-virtual {v0}, Lx2/g;->p()V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->q()Lf0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    const-string v3, "Del folder finish"

    invoke-interface {v0, v1, v2, v3}, Lf0/a;->showInfo(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/infos/ModelType;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;->mDeleteServerData:Z

    :cond_0
    return-void
.end method

.method public static declared-synchronized setDeleteServerData(Z)V
    .locals 1

    const-class v0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;->mDeleteServerData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private syncNewNote()V
    .locals 9

    invoke-static {}, Lcom/samsung/android/app/notes/sync/synchronization/managers/d;->c()Lcom/samsung/android/app/notes/sync/synchronization/managers/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/synchronization/managers/d;->b()V

    new-instance v0, Lv2/e;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncOperationSDocx:Lx2/g;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;->mSyncTaskContact:Lp2/a;

    invoke-direct {v0, v1, v2, v3}, Lv2/e;-><init>(Lx2/e;Lx2/g;Lp2/a;)V

    invoke-virtual {v0}, Lv2/e;->d()Z

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    const-string v3, "SyncProcessTask"

    if-eqz v1, :cond_1

    const-string v1, "syncNewNote() : ReSync!"

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncNewNote() : Round #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Lv2/c;

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    iget-object v6, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncOperationSDocx:Lx2/g;

    iget-object v7, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncOperationSDoc:Lt2/c;

    iget-object v8, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;->mSyncTaskContact:Lp2/a;

    invoke-direct {v4, v5, v6, v7, v8}, Lv2/c;-><init>(Lx2/e;Lx2/g;Lt2/c;Lp2/a;)V

    invoke-virtual {v4}, Lv2/c;->t()V

    new-instance v5, Lv2/b;

    iget-object v6, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    iget-object v7, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncOperationSDocx:Lx2/g;

    iget-object v8, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;->mSyncTaskContact:Lp2/a;

    invoke-direct {v5, v6, v7, v8}, Lv2/b;-><init>(Lx2/e;Lx2/g;Lp2/a;)V

    invoke-virtual {v5}, Lv2/b;->q()Z

    invoke-virtual {v4, v0}, Lv2/c;->s(Z)V

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    invoke-virtual {v4}, Lx2/e;->r()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    invoke-virtual {v4}, Lx2/e;->r()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lx2/c;->C(Ljava/lang/String;)V

    const-string v4, "eyJ2ZXJzaW9uIjowLCJlbmNyeXB0ZWRHdWlkIjoiIiwicmVxdWVzdFRpbWVTdGFtcCI6MCwibW9kaWZpZWRUaW1lIjowLCJhcHBWZXJzaW9uIjoiMCIsInNka1ZlcnNpb24iOiIwIiwicHVycG9zZSI6IklOSVRJQUwiLCJ0eXBlIjoiRk9MREVSIn0="

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    invoke-virtual {v5}, Lx2/e;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    invoke-virtual {v4, v3}, Lx2/e;->z(Z)V
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ls0/c;->a()I

    move-result v4

    const/16 v5, 0x1fb

    if-ne v4, v5, :cond_4

    move v1, v3

    :cond_2
    :goto_1
    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    invoke-virtual {v3}, Lx2/e;->x()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    :cond_3
    return-void

    :cond_4
    throw v1
.end method

.method private syncOldNote()I
    .locals 6

    const-string v0, "SyncedOldNote"

    const-string v1, "SyncProcessTask"

    const-string v2, "Old note(S)"

    invoke-static {v1, v2}, Lc3/p;->m(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDoc:Lt2/b;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncRequestInfo:Ly2/b;

    invoke-virtual {v2, v3}, Lx2/d;->l(Ly2/b;)V

    new-instance v2, Lr2/a;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDoc:Lt2/b;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncOperationSDoc:Lt2/c;

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;->mSyncTaskContact:Lp2/a;

    invoke-direct {v2, v3, v4, v5}, Lr2/a;-><init>(Lt2/b;Lt2/c;Lp2/a;)V

    invoke-virtual {v2}, Lr2/a;->f()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDoc:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lc3/q;->q(Landroid/content/Context;J)V

    const/4 v2, 0x0

    invoke-static {v2}, Lt2/a;->q(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lc3/p;->q(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "Old note(E)"

    invoke-static {v1, v0}, Lc3/p;->m(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDoc:Lt2/b;

    invoke-virtual {v1}, Lx2/d;->b()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lc3/p;->q(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lc3/q;->q(Landroid/content/Context;J)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lc3/p;->q(Landroid/content/Context;Ljava/lang/String;)V

    throw v1
.end method

.method private syncSearchData()V
    .locals 4

    new-instance v0, Lv2/d;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncOperationSDocx:Lx2/g;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;->mSyncTaskContact:Lp2/a;

    invoke-direct {v0, v1, v2, v3}, Lv2/d;-><init>(Lx2/e;Lx2/g;Lp2/a;)V

    invoke-virtual {v0}, Lv2/d;->b()V

    return-void
.end method

.method private updateSyncTimeInfo()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lx2/b;->i(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSuccessfulSyncTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lx2/b;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncProcessTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public syncProgress()I
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start syncProgress()["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncProcessTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Lh2/b;->b()Lh2/b;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Lh2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "domainUrl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->initSyncTask()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->fillSyncInfo()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;->doDeleteOperationsForTest()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;->checkDebugMode()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;->applyCurrentServerTime()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->printPreSyncInfo()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;->checkChangesBeforeSync()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;->checkPush()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;->checkCAServer()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;->syncNewNote()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;->syncOldNote()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;->updateSyncTimeInfo()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finish syncProgress()["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] : et = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->b()I

    move-result v0

    return v0
.end method
