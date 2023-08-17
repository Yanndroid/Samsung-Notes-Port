.class Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertRunner;
.super Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConvertRunner"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertRunner;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;I)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getInfo()Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getConverter()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;

    move-result-object v0

    const-string v1, "ConvertServiceManager"

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;->cancel()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canceled : "

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel - converter is null : "

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getInfo()Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getCallerId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getInfo()Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getReqFileSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/converter/utils/ConvertingUtils;->isAvailableMemoryForSdocXConverting(J)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getListener()Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1, v3}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;->onFailed(ILcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertRunner;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->o(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    const-string v0, "ConvertServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convert start : ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertRunner;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-static {v0, v7}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->l(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-string v0, "ConvertServiceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "convert end : ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v7, v5

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ConvertServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request save : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertRunner;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->a(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->updateEntity()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertRunner;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->e(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertRunner;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->d(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertRunner;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->d(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$SaveListener;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertRunner;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$SaveListener;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;)V

    invoke-interface {v3, v5, v2, v4, v6}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;->save(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;ZZLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    const-string v2, "ConvertServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convert#, count of running save : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertRunner;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->b(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v5, v6}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->g(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;I)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getInfo()Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getReqFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/app/converter/utils/ConvertingUtils;->reduceConvertingSize(J)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getListener()Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;->onFailed(ILcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
