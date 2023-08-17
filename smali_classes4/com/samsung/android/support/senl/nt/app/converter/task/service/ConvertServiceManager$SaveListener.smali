.class Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$SaveListener;
.super Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaveListener"
.end annotation


# instance fields
.field private mState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$SaveListener;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$SaveListener;->mState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    return-void
.end method

.method private encryptData(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->mInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getLockType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$SaveListener;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->a(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/DocumentLockResolver;->lock(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private notifyWidgetMemoConverted(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->mInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getIsWidgetMemo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$SaveListener;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->a(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->mInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcast;->sendConvertWidgetBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setReadyStateForCollector(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$SaveListener;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->a(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentRetryRepository()Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesRetryRepository;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesRetryRepository;->deleteByUuid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v1

    const/4 p1, 0x1

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->setReadyState(Ljava/lang/String;JI)V

    return-void
.end method


# virtual methods
.method public completed(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->completed(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save completed, src : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->mSrcPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->mTakenTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConvertServiceManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$SaveListener;->encryptData(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->mInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getReqFileSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/converter/utils/ConvertingUtils;->reduceConvertingSize(J)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$SaveListener;->notifyWidgetMemoConverted(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$SaveListener;->setReadyStateForCollector(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->mListener:Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->mSrcPath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    invoke-interface {v0, p2, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;->onSuccess(ILcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$SaveListener;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->mSrcPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->mListener:Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;

    const/4 v2, 0x4

    invoke-static {p2, p1, v2, v0, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->p(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;ILjava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;)V

    return-void
.end method

.method public failed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "save failed : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->mSrcPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConvertServiceManager"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->mInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getReqFileSize()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/converter/utils/ConvertingUtils;->reduceConvertingSize(J)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->mListener:Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->mSrcPath:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;->onFailed(ILcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$SaveListener;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$SaveListener;->mState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->mSrcPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->mListener:Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->p(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;ILjava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;)V

    return-void
.end method
