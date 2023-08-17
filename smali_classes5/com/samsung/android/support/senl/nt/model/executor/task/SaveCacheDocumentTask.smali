.class public Lcom/samsung/android/support/senl/nt/model/executor/task/SaveCacheDocumentTask;
.super Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/executor/task/SaveCacheDocumentTask$Builder;,
        Lcom/samsung/android/support/senl/nt/model/executor/task/SaveCacheDocumentTask$SaveCacheTaskCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SaveCacheDocumentTask"


# instance fields
.field private mSaveCacheTaskCallback:Lcom/samsung/android/support/senl/nt/model/executor/task/SaveCacheDocumentTask$SaveCacheTaskCallback;


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

.method private notifyTaskEndCallback()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/SaveCacheDocumentTask;->mSaveCacheTaskCallback:Lcom/samsung/android/support/senl/nt/model/executor/task/SaveCacheDocumentTask$SaveCacheTaskCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/model/executor/task/SaveCacheDocumentTask$SaveCacheTaskCallback;->onEnd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getType()Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;->SAVE_CACHE:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    return-object v0
.end method

.method public run()V
    .locals 9

    const-string v0, "save cache document task - end"

    const-string v1, "SaveCacheDocumentTask"

    :try_start_0
    const-string v2, "save cache document task - start"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mTarget:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->isContentEmpty()Z

    move-result v3

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->isChangedOnlyThumbnail()Z

    move-result v4

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->isDiscarded()Z

    move-result v5

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->isContentChanged()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->isSaveCache()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    if-nez v5, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "run, isContentEmpty: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isContentChanged: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isChangedOnlyThumbnail : "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isNew : "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->isNew()Z

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isReservedDiscard : "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_2

    const-string v2, "run, contents were not needed to save."

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/SaveCacheDocumentTask;->notifyTaskEndCallback()V

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "This document is new and not changed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->fail(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->saveCache(Landroid/content/Context;)Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/SaveCacheDocumentTask;->notifyTaskEndCallback()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mTarget:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->success(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Ljava/lang/String;)V

    const-string v2, "run, quickSave done"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "run failed, e : "

    invoke-static {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/SaveCacheDocumentTask;->notifyTaskEndCallback()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->fail(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_2
    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public taskListener(Lcom/samsung/android/support/senl/nt/model/executor/task/SaveCacheDocumentTask$SaveCacheTaskCallback;)Lcom/samsung/android/support/senl/nt/model/executor/task/SaveCacheDocumentTask;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/SaveCacheDocumentTask;->mSaveCacheTaskCallback:Lcom/samsung/android/support/senl/nt/model/executor/task/SaveCacheDocumentTask$SaveCacheTaskCallback;

    return-object p0
.end method
