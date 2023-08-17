.class public Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/RecoveryTask;
.super Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncProcessTask"


# instance fields
.field private mSyncTaskContact:Lp2/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;I)V

    new-instance p1, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/RecoveryTask$a;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/RecoveryTask$a;-><init>(Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/RecoveryTask;)V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/RecoveryTask;->mSyncTaskContact:Lp2/a;

    return-void
.end method


# virtual methods
.method public syncProgress()I
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start syncProgress() for recovery ["

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

    new-instance v0, Lv2/c;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncOperationSDocx:Lx2/g;

    iget-object v6, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncOperationSDoc:Lt2/c;

    iget-object v7, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/RecoveryTask;->mSyncTaskContact:Lp2/a;

    invoke-direct {v0, v4, v5, v6, v7}, Lv2/c;-><init>(Lx2/e;Lx2/g;Lt2/c;Lp2/a;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lv2/c;->s(Z)V

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
