.class public Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor$ImportTaskCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImportProcessor"

.field private static sCallback:Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor$ImportTaskCallback;

.field private static sDocumentManager:Lt1/a;

.field private static sImportDocumentsSize:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->lambda$initialize$0()V

    return-void
.end method

.method public static declared-synchronized cancel()V
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->release(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized execute()V
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->sDocumentManager:Lt1/a;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->getImportDocumentsSize()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->sDocumentManager:Lt1/a;

    invoke-virtual {v1}, Lt1/a;->execute()V

    const-string v1, "ImportProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "construct : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->sDocumentManager:Lt1/a;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getImportDocumentsSize()I
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->sImportDocumentsSize:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initialize(Ljava/util/List;)V
    .locals 5
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->release(Z)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->sImportDocumentsSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance v2, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor$ImportTaskCallback;

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/support/senl/nt/app/importer/a;->a:Lcom/samsung/android/support/senl/nt/app/importer/a;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor$ImportTaskCallback;-><init>(Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract$ImportTaskListener;Ljava/lang/Runnable;)V

    sput-object v2, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->sCallback:Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor$ImportTaskCallback;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v2

    const-string v3, "IMPORT_BY_SETTING"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    new-instance v2, Lt1/a;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ImportProcessor"

    invoke-direct {v2, v3, p0, v4}, Lt1/a;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->sCallback:Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor$ImportTaskCallback;

    invoke-virtual {v2, p0}, Lt1/a;->N(Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract$ImportTaskListener;)Lt1/a;

    move-result-object p0

    invoke-virtual {p0, v1}, Lt1/a;->O(Z)Lt1/a;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->sDocumentManager:Lt1/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static synthetic lambda$initialize$0()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v0

    const-string v1, "IMPORT_BY_SETTING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->release(Z)V

    return-void
.end method

.method public static declared-synchronized registerListener(Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract$ImportTaskListener;)Z
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->sCallback:Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor$ImportTaskCallback;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->getImportDocumentsSize()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->sCallback:Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor$ImportTaskCallback;

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor$ImportTaskCallback;->setExternalListener(Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract$ImportTaskListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    :goto_0
    monitor-exit v0

    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized release(Z)V
    .locals 5

    const-class v0, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->sDocumentManager:Lt1/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "ImportProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release, manager : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->sDocumentManager:Lt1/a;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", terminate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->sDocumentManager:Lt1/a;

    invoke-virtual {p0}, Lt1/a;->P()Ljava/util/List;

    :cond_0
    sput-object v2, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->sDocumentManager:Lt1/a;

    :cond_1
    sget-object p0, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->sCallback:Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor$ImportTaskCallback;

    if-eqz p0, :cond_2

    sput-object v2, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->sCallback:Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor$ImportTaskCallback;

    :cond_2
    sget-object p0, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->sImportDocumentsSize:Ljava/lang/Integer;

    if-eqz p0, :cond_3

    sput-object v2, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->sImportDocumentsSize:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
