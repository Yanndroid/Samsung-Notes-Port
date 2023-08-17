.class Lcom/samsung/android/support/senl/nt/model/collector/updater/ReadyStateUpdater$Executor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/collector/updater/ReadyStateUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Executor"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReadyStateUpdater$Executor"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentRetryRepository()Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesRetryRepository;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesRetryRepository;->getStateInReadyList(I)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute, readyStateList size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ReadyStateUpdater$Executor"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/updater/ReadyStateUpdater;->a()Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/updater/ReadyStateUpdater;->a()Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;->onFinishJob()V

    return-void

    :cond_0
    new-instance v2, Lcom/samsung/android/support/senl/nt/model/collector/updater/ReadyStateUpdater$Executor$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/model/collector/updater/ReadyStateUpdater$Executor$1;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/updater/ReadyStateUpdater$Executor;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isEngMode()Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;->getDocUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "run, uuid : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", path not exist!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance v7, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    invoke-direct {v7}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;-><init>()V

    invoke-virtual {v7, v6}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;->getLastModifiedAt()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setLastModifiedAt(J)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;->UPDATE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;->getValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setTriggerType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->START:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->getValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setActionType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;->OTHERS:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;->getValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setSourceType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->DEFAULT:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->getValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setLinkWith(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/updater/ReadyStateUpdater;->a()Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/updater/ReadyStateUpdater;->a()Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setNoteJobFinishCallback(Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;

    move-result-object v5

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->build()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->runCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    goto/16 :goto_0

    :cond_4
    if-eqz v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute, lExecutedList : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
