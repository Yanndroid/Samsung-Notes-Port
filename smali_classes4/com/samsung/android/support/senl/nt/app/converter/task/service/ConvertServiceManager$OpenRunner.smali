.class Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$OpenRunner;
.super Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenRunner"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$OpenRunner;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;I)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getListener()Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;->onSuccess(ILcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;)V

    return-void
.end method

.method public run()V
    .locals 7

    const-string v0, "ConvertServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request open : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$OpenRunner;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->e(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$OpenRunner;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->d(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$OpenRunner;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->m(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getInfo()Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setOriginUuid(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$OpenRunner;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->d(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$OpenListener;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$OpenRunner;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$OpenListener;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;)V

    invoke-interface {v3, v1, v4}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;->open(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getListener()Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;->onFailed(ILcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
