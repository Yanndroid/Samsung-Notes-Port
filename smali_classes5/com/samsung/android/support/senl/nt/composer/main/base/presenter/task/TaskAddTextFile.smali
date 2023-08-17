.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATE_ATTACH:I = 0x3

.field private static final STATE_CANCEL:I = 0x64

.field private static final STATE_DOWNLOAD:I = 0x1

.field private static final STATE_DOWNLOAD_DONE:I = 0x2

.field private static final STATE_INIT:I = -0x1

.field private static final STATE_START:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCurState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDownloadFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorType:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

.field private mHandler:Landroid/os/Handler;

.field private mIsAutoFocusEnabled:Z

.field private mOriginalFileName:Ljava/lang/String;

.field private mRunnableToBeginHistoryGroup:Ljava/lang/Runnable;

.field private mRunnableToEndHistoryGroup:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskAddTextFile"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;->ERROR_TYPE_SUCCESS:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mErrorType:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mCurState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mIsAutoFocusEnabled:Z

    return-void
.end method

.method private attachTextFile(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->TAG:Ljava/lang/String;

    const-string v1, "attachTextFile# start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isGroupingHistory()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->waitToBeginCommitHistory(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->checkCancelState(Landroid/content/Context;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isGroupingHistory()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "attachTextFile# clear beginHistory"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->waitToEndCommitHistory(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    :cond_1
    return v4

    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->loadTextFromFile(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->insertTextContents(Landroid/text/SpannableStringBuilder;)V

    goto :goto_2

    :cond_4
    :goto_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;->ERROR_TYPE_ERROR_UNKNOWN:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mErrorType:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    move v3, v4

    :goto_2
    if-eqz v2, :cond_5

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->waitToEndCommitHistory(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    :cond_5
    const-string p1, "attachTextFile# end"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private attachTextFileList(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)V
    .locals 5

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->setState(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mDownloadFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->checkCancelState(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->attachTextFile(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object p1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mOriginalFileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mErrorType:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mErrorType:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->attachTextFileList(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)V

    return-void
.end method

.method private checkCancelState(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->checkCancelState(Landroid/content/Context;Z)Z

    move-result p1

    return p1
.end method

.method private checkCancelState(Landroid/content/Context;Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mCurState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;->ERROR_TYPE_CANCEL:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mErrorType:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    if-eqz p2, :cond_0

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;)V

    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->downloadTextFileList(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private downloadTextFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {p1, p3, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils;->downloadText(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$DownloadFileResult;

    move-result-object p1

    iget p2, p1, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$DownloadFileResult;->mSaveResult:I

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    move-object p1, v0

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;->ERROR_TYPE_ERROR_MEMORY:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mErrorType:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    return-object v0

    :cond_2
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;->ERROR_TYPE_OVER_NOTE_SIZE:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;->ERROR_TYPE_CANCEL:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    goto :goto_0

    :cond_4
    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$DownloadFileResult;->mFilePath:Ljava/lang/String;

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    :goto_2
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;->ERROR_TYPE_ERROR_UNKNOWN:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    goto :goto_0

    :cond_5
    return-object p1

    :cond_6
    :goto_3
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->TAG:Ljava/lang/String;

    const-string p2, "downloadTextFile# uri is empty"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private downloadTextFileList(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->setState(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mDownloadFileList:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->checkCancelState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-direct {p0, p1, v3, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->downloadTextFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mDownloadFileList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->setFileName(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mDownloadFileList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->TAG:Ljava/lang/String;

    const-string p3, "downloadTextFileList mDownloadFileList is empty"

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mErrorType:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;)V

    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return v1

    :cond_3
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->setState(I)V

    return v0
.end method

.method public static bridge synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private loadTextFromFile(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 4

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    :catchall_0
    move-exception v3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_8
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_9
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_a
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v1

    :try_start_c
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception p1

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadTextFromFile# fail e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-object v0
.end method

.method private setFileName(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mOriginalFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->TAG:Ljava/lang/String;

    const-string p2, "setFileName# path is empty"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p2, ".txt"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mOriginalFileName:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method private setState(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mCurState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mCurState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private waitToBeginCommitHistory(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mRunnableToBeginHistoryGroup:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mRunnableToBeginHistoryGroup:Ljava/lang/Runnable;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mRunnableToBeginHistoryGroup:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->waitToMainThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method private waitToEndCommitHistory(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mRunnableToEndHistoryGroup:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mRunnableToEndHistoryGroup:Ljava/lang/Runnable;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mRunnableToEndHistoryGroup:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->waitToMainThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mCurState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mCurState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;->onCancel(Z)V

    :cond_0
    const/16 p1, 0x64

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->setState(I)V

    return-void
.end method

.method public clear()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->TAG:Ljava/lang/String;

    const-string v1, "clear#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getInputValue()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mIsAutoFocusEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->setAutoScrollToCursorOnLayoutChanged(Z)V

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->clear()V

    return-void
.end method

.method public bridge synthetic executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)V

    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->isAutoFocusEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mIsAutoFocusEnabled:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->setAutoScrollToCursorOnLayoutChanged(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mCurState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
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
