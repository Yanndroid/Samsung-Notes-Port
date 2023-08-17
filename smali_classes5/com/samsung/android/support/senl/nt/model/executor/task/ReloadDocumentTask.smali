.class public Lcom/samsung/android/support/senl/nt/model/executor/task/ReloadDocumentTask;
.super Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/executor/task/ReloadDocumentTask$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReloadDocumentTask"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public getType()Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;->RELOAD:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    return-object v0
.end method

.method public run()V
    .locals 5

    const-string v0, "reload document task - end"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "running... target : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mTarget:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReloadDocumentTask"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "reload document task - start"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mTarget:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    const-string v3, "run, reload doc."

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->reload()V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->deleteDocumentDat(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "run, reload done."

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->success(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run failed, e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->fail(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_1
    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method
