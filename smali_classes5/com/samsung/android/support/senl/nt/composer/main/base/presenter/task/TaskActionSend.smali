.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ActionSendHandler;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionSendHelperCommon:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;

.field private mError:I

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ActionSendHandler;

.field private mIsCanceled:Z

.field private mTaskAddPdf:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

.field private mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

.field private mUpdateInvertBG:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskActionSend"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mError:I

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mIsCanceled:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mActionSendHelperCommon:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;

    return-object p0
.end method

.method private addPdf(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->TAG:Ljava/lang/String;

    const-string v1, "addPdf#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->getTargetPageIndex(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)I

    move-result v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v4

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    move-result-object v5

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v6

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v2, v1

    move-object v8, p2

    move v10, v0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Ljava/util/List;Ljava/util/List;IZ)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    invoke-direct {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mTaskAddPdf:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setStorageChecker(Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mTaskAddPdf:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;I)V

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setTaskCallback(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mTaskAddPdf:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setInputValue(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mTaskAddPdf:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;)V

    return-void
.end method

.method private addWebClip(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;Ljava/lang/String;)V
    .locals 11

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->TAG:Ljava/lang/String;

    const-string v1, "addWebClip#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v4

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    move-result-object v5

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v6

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v7

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IPageScroller;

    move-result-object v8

    const/4 v10, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v9, p3

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IPageScroller;Ljava/lang/String;Z)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-direct {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$3;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setTaskCallback(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setInputValue(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setStorageChecker(Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->setTimeStart(J)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mError:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ActionSendHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ActionSendHandler;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mIsCanceled:Z

    return p0
.end method

.method private downloadData()V
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mIsCanceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->startTime(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mActionSendHelperCommon:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->getCallableList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mActionSendHelperCommon:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->getDownloadObjList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "downloadData# "

    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;

    :try_start_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mError:I

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;->getError()I

    move-result v6

    or-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mError:I

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mActionSendHelperCommon:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;

    invoke-virtual {v5, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->removeContentInList(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mActionSendHelperCommon:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->removeContentInList(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->endTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadData#Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mActionSendHelperCommon:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mError:I

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mUpdateInvertBG:Z

    return-void
.end method

.method private getTargetPageIndex(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)I
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    return v1
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->addPdf(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->addWebClip(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;Ljava/lang/String;)V

    return-void
.end method

.method private isMessageAppCard(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Z
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "action_send_addition"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.messaging"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "action_send_addition_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->downloadData()V

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->notifyResultError(Landroid/content/Context;I)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->onResult(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->sendMessage(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)V

    return-void
.end method

.method public static bridge synthetic n()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private notifyResultError(Landroid/content/Context;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mIsCanceled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onError(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onResult(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;->showErrorToast()V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mUpdateInvertBG:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getInputValue()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->updateInvertBackgroundColor()Z

    :cond_0
    return-void
.end method

.method private sendMessage(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)V
    .locals 12

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mIsCanceled:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mError:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->notifyResultError(Landroid/content/Context;I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ActionSendHandler;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mActionSendHelperCommon:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->getContentList()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mActionSendHelperCommon:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->getDownloadObjList()Ljava/util/List;

    move-result-object v5

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v6

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mActionSendHelperCommon:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->getSubject(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mError:I

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->getTargetPageIndex(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)I

    move-result v11

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ActionSendHandler;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ActionSendHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->TAG:Ljava/lang/String;

    const-string v1, "cancel "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mIsCanceled:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ActionSendHandler;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ActionSendHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ActionSendHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ActionSendHandler;->release()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mTaskAddPdf:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;->cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic checkPermission(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)Z
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->checkPermission(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Z

    move-result p1

    return p1
.end method

.method public checkPermission(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Z
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/MsgPermissionAction;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/MsgPermissionAction;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/MsgPermissionAction;->hasAndroidId()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->isMessageAppCard(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    return v3

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/MsgPermissionAction;->hasPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/MsgPermissionAction;->saveAndroidId(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    const/16 v1, 0xc9

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/MsgPermissionAction;->requestPermissions(Landroidx/fragment/app/Fragment;ILjava/lang/Runnable;)V

    return v3

    :cond_3
    :goto_0
    return v2
.end method

.method public clear()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->TAG:Ljava/lang/String;

    const-string v1, "clear "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mTaskAddPdf:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;->clear()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mTaskAddPdf:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->clear()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mActionSendHelperCommon:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->clear()V

    :cond_2
    return-void
.end method

.method public bridge synthetic executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)V

    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ActionSendHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ActionSendHandler;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/a;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ActionSendHandler;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAddContentsCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)V

    return-object v0
.end method

.method public getDefaultCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)V

    return-object v0
.end method

.method public isAvailableToSave()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isKeepTaskDuringActivityRecreation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNeedToCheckNoteSize()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNeededToWaitPermission()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onRequestPermissionsResult(ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)Z
    .locals 0

    check-cast p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->onRequestPermissionsResult(ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Z
    .locals 1

    const/16 v0, 0xc9

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/MsgPermissionAction;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/MsgPermissionAction;-><init>()V

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/MsgPermissionAction;->saveAndroidId(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method
