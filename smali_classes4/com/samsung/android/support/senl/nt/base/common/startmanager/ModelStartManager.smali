.class public Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager$OnCloseListener;
    }
.end annotation


# static fields
.field private static final MASK_CONVERT_SERVICE:I = 0x2

.field private static final MASK_DELETE_DATA:I = 0x4

.field private static final MASK_DOCUMENT_SERVICE:I = 0x1

.field private static final MASK_DUPLICATE_NOTES:I = 0x200

.field private static final MASK_IMPORT_BY_NOTEPICKER:I = 0x100

.field private static final MASK_IMPORT_BY_SETTING:I = 0x40

.field private static final MASK_IMPORT_CLOUD_DATA_BY_SETTING:I = 0x80

.field private static final MASK_RESTORE_DATA:I = 0x8

.field private static final MASK_RESTORE_TASK:I = 0x10

.field private static final MASK_TRIGGER_ACTIVITY:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ModelStartManager"

.field private static sFinalBlockTime:J

.field private static sInstance:Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;


# instance fields
.field private mMask:I

.field private mOnCloseListener:Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager$OnCloseListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DOC_SERVICE"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->initStatus(Ljava/lang/String;I)V

    const-string v0, "CONVERT"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->initStatus(Ljava/lang/String;I)V

    const-string v0, "DELETE_DATA"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->initStatus(Ljava/lang/String;I)V

    const-string v0, "RESTORE_DATA"

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->initStatus(Ljava/lang/String;I)V

    const-string v0, "RESTORE_TASK"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->initStatus(Ljava/lang/String;I)V

    const-string v0, "TRIGGER"

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->initStatus(Ljava/lang/String;I)V

    const-string v0, "IMPORT_BY_SETTING"

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->initStatus(Ljava/lang/String;I)V

    const-string v0, "IMPORT_CLOUD_DATA_BY_SETTING"

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->initStatus(Ljava/lang/String;I)V

    const-string v0, "IMPORT_BY_NOTEPICKER"

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->initStatus(Ljava/lang/String;I)V

    const-string v0, "DUPLICATE_NOTES"

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->initStatus(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->lambda$initStatus$0(ILjava/lang/String;Z)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initStatus(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$Type;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v0

    new-instance v1, Lb4/a;

    invoke-direct {v1, p0, p2}, Lb4/a;-><init>(Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;I)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->addListener(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->isRunning(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->updateMask(IZ)V

    return-void
.end method

.method public static isBlocked()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->sFinalBlockTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBlocked# true = blockTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->sFinalBlockTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModelStartManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$initStatus$0(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->updateMask(IZ)V

    return-void
.end method

.method public static setFinalBlockTime(J)V
    .locals 2

    sput-wide p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->sFinalBlockTime:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFinalBlockTime# blockTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ModelStartManager"

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized updateMask(IZ)V
    .locals 1

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    iget p2, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->mMask:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->mMask:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->mMask:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->mMask:I

    :goto_0
    const-string p1, "ModelStartManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateMask, mask: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->mMask:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->mOnCloseListener:Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager$OnCloseListener;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->mOnCloseListener:Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager$OnCloseListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager$OnCloseListener;->onClosed()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->mOnCloseListener:Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager$OnCloseListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public closeAll(Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager$OnCloseListener;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager$OnCloseListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeAll#, mask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->mMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModelStartManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager$OnCloseListener;->onClosed()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->mOnCloseListener:Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager$OnCloseListener;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler;->getContract()Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler$DocumentAccessContract;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler;->getContract()Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler$DocumentAccessContract;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler$DocumentAccessContract;->cancelAllConvertTasks()V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler$DocumentAccessContract;->cancelImportBySetting()V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler$DocumentAccessContract;->cancelImportCloudDataBySetting()V

    return-void
.end method

.method public declared-synchronized isRunning()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->mMask:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
