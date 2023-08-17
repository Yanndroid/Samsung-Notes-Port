.class public Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MainListStartManager"

.field private static mInstance:Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;


# instance fields
.field private mFinalBlockTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;->mFinalBlockTime:J

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;
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
.method public canNotUseNoteList()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;->mFinalBlockTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canNotUseNoteList# true = blockTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;->mFinalBlockTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainListStartManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public closeAllNoteLists()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object v0

    const-class v1, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$NoteEditable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;->closeAllInSameClass(Ljava/lang/Class;)V

    return-void
.end method

.method public setFinalBlockTime(J)V
    .locals 2

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;->mFinalBlockTime:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFinalBlockTime# blockTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MainListStartManager"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
