.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$NonSequentialRange;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$SequentialRange;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$RangeHelper;
    }
.end annotation


# static fields
.field private static final DELAY_HEAVY_CONDITION:I = 0x5

.field private static final DELAY_HEAVY_TIME:I = 0x12c

.field private static final DELAY_TIME_SAME_PAGE_ID:I = 0x3e8

.field public static final INVALID_INDEX:I = -0x1

.field private static final MSG_MAKE_THUMBNAIL_END:I = 0x1

.field private static final MSG_MAKE_THUMBNAIL_START:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBlock:Z

.field private mCapture:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mLastPageId:Ljava/lang/String;

.field private final mMakeThumbnailTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;

.field private mMakeThumbnailTaskFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

.field private final mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateTargetRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ThumbnailUpdateHandler"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mQueue:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mBlock:Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mMakeThumbnailTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mUpdateTargetRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->updateTargetRange(IIII)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;)Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mCapture:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mQueue:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private isReadyToSendStartMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRunning()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mMakeThumbnailTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;->runningState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private isSameLastPageId()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mLastPageId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private poll()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mUpdateTargetRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mUpdateTargetRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->adjustEndRangeBiggerThan(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->startTime(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mUpdateTargetRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->getTargetRangeSize()I

    move-result v2

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mUpdateTargetRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->pollFromLargeSizeQueue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->pollForSmallSize()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "poll# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " remain size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mQueue:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->endTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mLastPageId:Ljava/lang/String;

    return-object v0
.end method

.method private pollForSmallSize()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v3, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageIndexById(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mUpdateTargetRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->containDisplayRange(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-object v2

    :cond_1
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mUpdateTargetRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->containRange(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    return-object v1
.end method

.method private sendMessageForNext()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    const-wide/16 v0, 0x12c

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->isSameLastPageId()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x3e8

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public clearTargetRange()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->TAG:Ljava/lang/String;

    const-string v1, "clearTargetRange#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mUpdateTargetRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->updateTargetRange(IIII)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mBlock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage#MSG_MAKE_THUMBNAIL_END# "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mMakeThumbnailTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;

    iget v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;->pageIndex:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mMakeThumbnailTaskFuture:Ljava/util/concurrent/Future;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mMakeThumbnailTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;->runningState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mMakeThumbnailTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;

    iget-boolean p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;->result:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mUpdateTargetRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mMakeThumbnailTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;->pageId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageIndexById(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v0, v1, p1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->notifyDataSetChanged(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->sendMessageForNext()V

    goto :goto_2

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mBlock:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->poll()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageIndexById(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage#MSG_MAKE_THUMBNAIL_START#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mMakeThumbnailTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;->runningState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mMakeThumbnailTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;->setInfo(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mMakeThumbnailTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mMakeThumbnailTaskFuture:Ljava/util/concurrent/Future;

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V
    .locals 0

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    new-instance p2, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mCapture:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->TAG:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->sendMessageForNext()V

    return-void
.end method

.method public isWorkingThread()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mMakeThumbnailTaskFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized onDeletedPages(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public release()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->TAG:Ljava/lang/String;

    const-string v2, "release# await start"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v3, 0x3e8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    const-string v2, "release# await end"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mCapture:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mCapture:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mBlock:Z

    return-void
.end method

.method public declared-synchronized requestToMakeThumbnail(Ljava/lang/String;IZ)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestToMakeThumbnail# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mUpdateTargetRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->adjustRangeForce(I)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mUpdateTargetRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->containRange(I)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p1, "is not showing"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    :goto_0
    :try_start_1
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mQueue:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mQueue:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "requestToMakeThumbnail# insert "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->isReadyToSendStartMessage()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "requestToMakeThumbnail# send"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x258

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setBlockToUpdate(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->setBlockToUpdate(ZZ)V

    return-void
.end method

.method public setBlockToUpdate(ZZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mBlock:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->isReadyToSendStartMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mBlock:Z

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBlockToUpdate# block: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mBlock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " wait: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " running: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mMakeThumbnailTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;->runningState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mMakeThumbnailTaskFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mBlock:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mMakeThumbnailTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$MakeThumbnailTask;->runningState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mMakeThumbnailTaskFuture:Ljava/util/concurrent/Future;

    if-eqz p2, :cond_1

    const-string p2, "setBlockToUpdate# wait"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mMakeThumbnailTaskFuture:Ljava/util/concurrent/Future;

    const-wide/16 v0, 0x3e8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    const-string p2, "setBlockToUpdate# wait task finish"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    :goto_0
    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBlockToUpdate# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->TAG:Ljava/lang/String;

    const-string p2, "setBlockToUpdate# wait end"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updateTargetRange(IIII)V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTargetRange# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mUpdateTargetRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->updateTargetRange(IIII)V

    return-void
.end method

.method public updateTargetRange(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTargetRange# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " // "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mUpdateTargetRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->updateTargetRange(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public updateThumbnail(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->updateThumbnail(IZ)V

    return-void
.end method

.method public updateThumbnail(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateThumbnail# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageInfo(I)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->setDirty(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->requestToMakeThumbnail(Ljava/lang/String;IZ)Z

    return-void
.end method

.method public updateThumbnailAll()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->updateThumbnail(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
