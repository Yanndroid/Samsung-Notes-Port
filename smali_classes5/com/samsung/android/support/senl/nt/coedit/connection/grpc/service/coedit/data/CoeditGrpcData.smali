.class public Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;
.super Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;
    }
.end annotation


# static fields
.field private static final MAX_INBOUND:I = 0x800000

.field private static final TAG:Ljava/lang/String; = "CoeditGrpcData"


# instance fields
.field private mCatcherAsyncStub:LcoeditCore/CatcherGrpc$CatcherStub;

.field private mCatchupEndCheckPoint:J

.field private mCatchupStartCheckPoint:J

.field private mCatchupType:LcoeditCoreMessage/CatchupType;

.field private final mClientMsgQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "LcoeditCoreMessage/ClientMsg;",
            ">;"
        }
    .end annotation
.end field

.field private mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;

.field private final mDownloadContentFileObjectInfos:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "LcoeditCoreMessage/ObjectInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadStrokeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadStrokeRequest:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "LcoeditObjectMessage/DownloadStrokeRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadingObjectId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteId:Ljava/lang/String;

.field private mNotifyCheckPoint:J

.field public mObjectDownloaderAsyncStub:LcoeditObject/DownloaderGrpc$DownloaderStub;

.field public mObjectDownloaderStub:LcoeditObject/DownloaderGrpc$DownloaderBlockingStub;

.field private mObjectUploaderAsyncStub:LcoeditObject/UploaderGrpc$UploaderStub;

.field public mObjectUploaderStub:LcoeditObject/UploaderGrpc$UploaderBlockingStub;

.field private final mPermissionRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "LcoeditCoreMessage/PermissionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyStub:LcoeditCore/PolicyManagerGrpc$PolicyManagerBlockingStub;

.field private final mReceiveMsgQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceId:Ljava/lang/String;

.field private mResponsedWorkspaceVersion:J

.field private mResultCode:I

.field private mSubmitCheckPoint:J

.field private final mSubmitMsgQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "LcoeditCoreMessage/SubmitRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSubmitterStub:LcoeditCore/SubmitterGrpc$SubmitterBlockingStub;

.field private final mUploadContentFileDatas:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadStrokeCompleteSize:J

.field private mUploadStrokeFailedSize:J

.field private final mUploadStrokeRequest:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/util/Pair<",
            "LcoeditObjectMessage/UploadStrokeRequest;",
            "LcoeditObjectMessage/UploadStrokeRequest;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUploadStrokeRequestSize:J

.field private final mUploadedStrokeObjectInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LcoeditCoreMessage/ObjectInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUploadingContentFileId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkspaceId:Ljava/lang/String;

.field private mWorkspaceStub:LcoeditCore/WorkspaceManagerGrpc$WorkspaceManagerBlockingStub;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mResponsedWorkspaceVersion:J

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeCompleteSize:J

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeFailedSize:J

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeRequestSize:J

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mClientMsgQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mSubmitMsgQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeRequest:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mDownloadStrokeRequest:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mPermissionRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mReceiveMsgQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mDownloadStrokeMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mDownloadingObjectId:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadingContentFileId:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadContentFileDatas:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mDownloadContentFileObjectInfos:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadedStrokeObjectInfos:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized addDownloadingObjectId(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mDownloadingObjectId:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized addUploadingContentFileId(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadingContentFileId:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized isDownloadingObjectIdExist()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mDownloadingObjectId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isUploadingContentFileIdExist()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadingContentFileId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeDownloadingObjectId(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mDownloadingObjectId:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized removeUploadingContentFileId(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadingContentFileId:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized addDownloadContentFileObjectInfo(LcoeditCoreMessage/ObjectInfo;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mDownloadContentFileObjectInfos:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, LcoeditCoreMessage/ObjectInfo;->getObjId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->addDownloadingObjectId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mNoteId:Ljava/lang/String;

    invoke-virtual {p1}, LcoeditCoreMessage/ObjectInfo;->getObjId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LcoeditCoreMessage/ObjectInfo;->getDownloadSignedUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->addUndownloadedObjectInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addUploadContentFileData(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadContentFileDatas:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->addUploadingContentFileId(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mNoteId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->getUnuploadedContentFileCachePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->saveCoeditCache(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addUploadedStrokeObjectInfo(LcoeditCoreMessage/ObjectInfo;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadedStrokeObjectInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public asyncCatchup(Ljava/lang/String;LcoeditCoreMessage/CatchupRequest;Lio/grpc/stub/StreamObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LcoeditCoreMessage/CatchupRequest;",
            "Lio/grpc/stub/StreamObserver<",
            "LcoeditCoreMessage/CatchupResponse;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    sget-object v1, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    const-string v2, "requestId"

    invoke-static {v2, v1}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mCatcherAsyncStub:LcoeditCore/CatcherGrpc$CatcherStub;

    invoke-static {p1, v0}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditCore/CatcherGrpc$CatcherStub;

    invoke-virtual {p1, p2, p3}, LcoeditCore/CatcherGrpc$CatcherStub;->catchup(LcoeditCoreMessage/CatchupRequest;Lio/grpc/stub/StreamObserver;)V

    return-void
.end method

.method public asyncContinuousMessage(Lio/grpc/stub/StreamObserver;)Lio/grpc/stub/StreamObserver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/stub/StreamObserver<",
            "LcoeditCoreMessage/ServerMsg;",
            ">;)",
            "Lio/grpc/stub/StreamObserver<",
            "LcoeditCoreMessage/ClientMsg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mChannel:Lio/grpc/ManagedChannel;

    invoke-static {v0}, LcoeditCore/ContinuerGrpc;->newStub(Lio/grpc/Channel;)LcoeditCore/ContinuerGrpc$ContinuerStub;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mMetadata:Lio/grpc/Metadata;

    invoke-static {v0, v1}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    check-cast v0, LcoeditCore/ContinuerGrpc$ContinuerStub;

    invoke-virtual {v0, p1}, LcoeditCore/ContinuerGrpc$ContinuerStub;->continuousMessage(Lio/grpc/stub/StreamObserver;)Lio/grpc/stub/StreamObserver;

    move-result-object p1

    return-object p1
.end method

.method public asyncDownloadStroke(LcoeditObjectMessage/DownloadStrokeRequest;Lio/grpc/stub/StreamObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LcoeditObjectMessage/DownloadStrokeRequest;",
            "Lio/grpc/stub/StreamObserver<",
            "LcoeditObjectMessage/DownloadStrokeResponse;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mObjectDownloaderAsyncStub:LcoeditObject/DownloaderGrpc$DownloaderStub;

    invoke-virtual {v0, p1, p2}, LcoeditObject/DownloaderGrpc$DownloaderStub;->downloadStroke(LcoeditObjectMessage/DownloadStrokeRequest;Lio/grpc/stub/StreamObserver;)V

    return-void
.end method

.method public clearSubmitRequestQueue()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mSubmitMsgQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void
.end method

.method public declared-synchronized downloadContentFileObjectInfos(LcoeditCoreMessage/ObjectInfo;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;->downloadContentFile(LcoeditCoreMessage/ObjectInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findStrokeData([B)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mDownloadStrokeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;->findObjectBinaryHash([B)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAsyncUploadStroke(Lio/grpc/stub/StreamObserver;)Lio/grpc/stub/StreamObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/stub/StreamObserver<",
            "LcoeditObjectMessage/UploadStrokeResponse;",
            ">;)",
            "Lio/grpc/stub/StreamObserver<",
            "LcoeditObjectMessage/UploadStrokeRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mObjectUploaderAsyncStub:LcoeditObject/UploaderGrpc$UploaderStub;

    invoke-virtual {v0, p1}, LcoeditObject/UploaderGrpc$UploaderStub;->uploadStroke(Lio/grpc/stub/StreamObserver;)Lio/grpc/stub/StreamObserver;

    move-result-object p1

    return-object p1
.end method

.method public getCatchupEndCheckPoint()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mCatchupEndCheckPoint:J

    return-wide v0
.end method

.method public getCatchupStartCheckPoint()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mCatchupStartCheckPoint:J

    return-wide v0
.end method

.method public getCatchupType()LcoeditCoreMessage/CatchupType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mCatchupType:LcoeditCoreMessage/CatchupType;

    return-object v0
.end method

.method public getNoteId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mNoteId:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyCheckPoint()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mNotifyCheckPoint:J

    return-wide v0
.end method

.method public getObjUploadUrl(LcoeditObjectMessage/ObjUploadUrlRequest;)LcoeditObjectMessage/ObjUploadUrlResponse;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mObjectUploaderStub:LcoeditObject/UploaderGrpc$UploaderBlockingStub;

    invoke-virtual {v0, p1}, LcoeditObject/UploaderGrpc$UploaderBlockingStub;->getObjectUploadUrl(LcoeditObjectMessage/ObjUploadUrlRequest;)LcoeditObjectMessage/ObjUploadUrlResponse;

    move-result-object p1

    return-object p1
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mResourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getResponsedWorkspaceVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mResponsedWorkspaceVersion:J

    return-wide v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mResultCode:I

    return v0
.end method

.method public getSignedDownloadUrl(LcoeditObjectMessage/SignedDownloadUrlRequest;)LcoeditObjectMessage/SignedDownloadUrlResponse;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mObjectDownloaderStub:LcoeditObject/DownloaderGrpc$DownloaderBlockingStub;

    invoke-virtual {v0, p1}, LcoeditObject/DownloaderGrpc$DownloaderBlockingStub;->getSignedDownloadUrl(LcoeditObjectMessage/SignedDownloadUrlRequest;)LcoeditObjectMessage/SignedDownloadUrlResponse;

    move-result-object p1

    return-object p1
.end method

.method public getSubmitCheckPoint()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mSubmitCheckPoint:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "CoeditGrpcData"

    return-object v0
.end method

.method public declared-synchronized getUndownloadedObjectInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditCoreMessage/ObjectInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->isDownloadingObjectIdExist()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mNoteId:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->getUndownloadedObjectInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, LcoeditCoreMessage/ObjectInfo;->newBuilder()LcoeditCoreMessage/ObjectInfo$Builder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, LcoeditCoreMessage/ObjectInfo$Builder;->setObjId(Ljava/lang/String;)LcoeditCoreMessage/ObjectInfo$Builder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, LcoeditCoreMessage/ObjectInfo$Builder;->setDownloadSignedUrl(Ljava/lang/String;)LcoeditCoreMessage/ObjectInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, LcoeditCoreMessage/ObjectInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "CoeditGrpcData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUndownloadedObjectInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUnuploadedNoteOpFileDatas()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->isUploadingContentFileIdExist()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mNoteId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->getUnuploadedContentFiles(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;-><init>()V

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->loadCoeditCache(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUnuploadedNoteOpFileDatas: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoeditGrpcData"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public declared-synchronized getUploadedStrokeObjectInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditCoreMessage/ObjectInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadedStrokeObjectInfos:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWorkspaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mWorkspaceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;->getWorkspaceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mWorkspaceId:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mWorkspaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkspaceVersion()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mNoteId:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->getWorkspaceVersion(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasSubmitRequestQueue()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mSubmitMsgQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public declared-synchronized increaseUploadStrokeCompleteSize()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeCompleteSize:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeCompleteSize:J

    const-string v0, "CoeditGrpcData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "increaseUploadStrokeCompleteSize: complete["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeCompleteSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]/failed["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeFailedSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]/request["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeRequestSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->isUploadStrokeFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UploadStroke Object Finished"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->releaseLock(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized increaseUploadStrokeFailedSize()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeFailedSize:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeFailedSize:J

    const-string v0, "CoeditGrpcData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "increaseUploadStrokeFailedSize: complete["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeCompleteSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]/failed["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeFailedSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]/request["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeRequestSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->isUploadStrokeFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UploadStroke Object Finished"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->releaseLock(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initUploadStrokeRequestSize(J)V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeCompleteSize:J

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeFailedSize:J

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeRequestSize:J

    const-string p1, "CoeditGrpcData"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initUploadStrokeRequestSize: request["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeRequestSize:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initUploadedStrokeObjectInfos()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadedStrokeObjectInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p8}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setWorkspaceId(Ljava/lang/String;)V

    invoke-virtual {p0, p7}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setNoteId(Ljava/lang/String;)V

    iput-object p9, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mChannel:Lio/grpc/ManagedChannel;

    invoke-static {p1}, LcoeditCore/SubmitterGrpc;->newBlockingStub(Lio/grpc/Channel;)LcoeditCore/SubmitterGrpc$SubmitterBlockingStub;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mMetadata:Lio/grpc/Metadata;

    invoke-static {p1, p2}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditCore/SubmitterGrpc$SubmitterBlockingStub;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mSubmitterStub:LcoeditCore/SubmitterGrpc$SubmitterBlockingStub;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mChannel:Lio/grpc/ManagedChannel;

    invoke-static {p1}, LcoeditCore/CatcherGrpc;->newStub(Lio/grpc/Channel;)LcoeditCore/CatcherGrpc$CatcherStub;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mMetadata:Lio/grpc/Metadata;

    invoke-static {p1, p2}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditCore/CatcherGrpc$CatcherStub;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mCatcherAsyncStub:LcoeditCore/CatcherGrpc$CatcherStub;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mChannel:Lio/grpc/ManagedChannel;

    invoke-static {p1}, LcoeditCore/PolicyManagerGrpc;->newBlockingStub(Lio/grpc/Channel;)LcoeditCore/PolicyManagerGrpc$PolicyManagerBlockingStub;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mMetadata:Lio/grpc/Metadata;

    invoke-static {p1, p2}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditCore/PolicyManagerGrpc$PolicyManagerBlockingStub;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mPolicyStub:LcoeditCore/PolicyManagerGrpc$PolicyManagerBlockingStub;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mChannel:Lio/grpc/ManagedChannel;

    invoke-static {p1}, LcoeditCore/WorkspaceManagerGrpc;->newBlockingStub(Lio/grpc/Channel;)LcoeditCore/WorkspaceManagerGrpc$WorkspaceManagerBlockingStub;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mMetadata:Lio/grpc/Metadata;

    invoke-static {p1, p2}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditCore/WorkspaceManagerGrpc$WorkspaceManagerBlockingStub;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mWorkspaceStub:LcoeditCore/WorkspaceManagerGrpc$WorkspaceManagerBlockingStub;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mChannel:Lio/grpc/ManagedChannel;

    invoke-static {p1}, LcoeditObject/UploaderGrpc;->newBlockingStub(Lio/grpc/Channel;)LcoeditObject/UploaderGrpc$UploaderBlockingStub;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mMetadata:Lio/grpc/Metadata;

    invoke-static {p1, p2}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditObject/UploaderGrpc$UploaderBlockingStub;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mObjectUploaderStub:LcoeditObject/UploaderGrpc$UploaderBlockingStub;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mChannel:Lio/grpc/ManagedChannel;

    invoke-static {p1}, LcoeditObject/UploaderGrpc;->newStub(Lio/grpc/Channel;)LcoeditObject/UploaderGrpc$UploaderStub;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mMetadata:Lio/grpc/Metadata;

    invoke-static {p1, p2}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditObject/UploaderGrpc$UploaderStub;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mObjectUploaderAsyncStub:LcoeditObject/UploaderGrpc$UploaderStub;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mChannel:Lio/grpc/ManagedChannel;

    invoke-static {p1}, LcoeditObject/DownloaderGrpc;->newBlockingStub(Lio/grpc/Channel;)LcoeditObject/DownloaderGrpc$DownloaderBlockingStub;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mMetadata:Lio/grpc/Metadata;

    invoke-static {p1, p2}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditObject/DownloaderGrpc$DownloaderBlockingStub;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mObjectDownloaderStub:LcoeditObject/DownloaderGrpc$DownloaderBlockingStub;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mChannel:Lio/grpc/ManagedChannel;

    invoke-static {p1}, LcoeditObject/DownloaderGrpc;->newStub(Lio/grpc/Channel;)LcoeditObject/DownloaderGrpc$DownloaderStub;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mMetadata:Lio/grpc/Metadata;

    invoke-static {p1, p2}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditObject/DownloaderGrpc$DownloaderStub;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mObjectDownloaderAsyncStub:LcoeditObject/DownloaderGrpc$DownloaderStub;

    return-void
.end method

.method public isCatchupRequestDataValid()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mCatchupStartCheckPoint:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mCatchupEndCheckPoint:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClientMsgEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mClientMsgQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isConcurrencyPausedByNetwork()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;->isConcurrencyPausedByNetwork()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isDownloadContentFileObjectInfoExist()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mDownloadContentFileObjectInfos:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDownloadStrokeRequestQueueEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mDownloadStrokeRequest:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isInvalidAsyncCatcher()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mCatcherAsyncStub:LcoeditCore/CatcherGrpc$CatcherStub;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInvalidAsyncObjectUploader()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mObjectUploaderAsyncStub:LcoeditObject/UploaderGrpc$UploaderStub;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInvalidObjectAsyncDownloader()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mObjectDownloaderAsyncStub:LcoeditObject/DownloaderGrpc$DownloaderStub;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInvalidObjectDownloader()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mObjectDownloaderStub:LcoeditObject/DownloaderGrpc$DownloaderBlockingStub;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInvalidObjectUploader()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mObjectUploaderStub:LcoeditObject/UploaderGrpc$UploaderBlockingStub;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInvalidPolicyManager()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mPolicyStub:LcoeditCore/PolicyManagerGrpc$PolicyManagerBlockingStub;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInvalidStub()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->isInvalidSubmitter()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->isInvalidAsyncCatcher()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInvalidSubmitter()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mSubmitterStub:LcoeditCore/SubmitterGrpc$SubmitterBlockingStub;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInvalidWorkspaceManager()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mWorkspaceStub:LcoeditCore/WorkspaceManagerGrpc$WorkspaceManagerBlockingStub;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPermissionRequestQueueEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mPermissionRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isReceiveMsgQueueEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mReceiveMsgQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isUploadContentFileDataExist()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadContentFileDatas:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isUploadStrokeFailed()Z
    .locals 4

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeFailedSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isUploadStrokeFinished()Z
    .locals 6

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeRequestSize:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeCompleteSize:J

    iget-wide v4, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeFailedSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isUploadStrokeRequestQueueEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeRequest:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public notify(LcoeditCoreMessage/ServerMsg;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;->notify(LcoeditCoreMessage/ServerMsg;)V

    return-void
.end method

.method public onContentFileUploadError(I)V
    .locals 0

    return-void
.end method

.method public putClientMsg(LcoeditCoreMessage/ClientMsg;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mClientMsgQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized putDownloadStrokeData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mDownloadStrokeMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putDownloadStrokeData(Ljava/lang/String;[B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mDownloadStrokeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;->setBytes([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public putDownloadStrokeRequest(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mDownloadStrokeRequest:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, LcoeditObjectMessage/DownloadStrokeRequest;->newBuilder()LcoeditObjectMessage/DownloadStrokeRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, LcoeditObjectMessage/DownloadStrokeRequest$Builder;->setObjId(Ljava/lang/String;)LcoeditObjectMessage/DownloadStrokeRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/DownloadStrokeRequest;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public putPermissionRequest(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mPermissionRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, LcoeditCoreMessage/PermissionRequest;->newBuilder()LcoeditCoreMessage/PermissionRequest$Builder;

    move-result-object v1

    if-eqz p1, :cond_0

    sget-object p1, LcoeditCoreMessage/PermissionType;->EDIT:LcoeditCoreMessage/PermissionType;

    goto :goto_0

    :cond_0
    sget-object p1, LcoeditCoreMessage/PermissionType;->VIEW:LcoeditCoreMessage/PermissionType;

    :goto_0
    invoke-virtual {v1, p1}, LcoeditCoreMessage/PermissionRequest$Builder;->setPermissionType(LcoeditCoreMessage/PermissionType;)LcoeditCoreMessage/PermissionRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/PermissionRequest;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public putReceiveMsg(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mReceiveMsgQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;->wakeConcurrencyPool()V

    :cond_0
    return-void
.end method

.method public putSubmitRequest(Ljava/util/List;JLjava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "LcoeditCoreMessage/ObjectInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->serialize(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mSubmitMsgQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, LcoeditCoreMessage/SubmitRequest;->newBuilder()LcoeditCoreMessage/SubmitRequest$Builder;

    move-result-object v1

    sget-object v2, LcoeditCoreMessage/ClientCmd;->SUBMIT:LcoeditCoreMessage/ClientCmd;

    invoke-virtual {v1, v2}, LcoeditCoreMessage/SubmitRequest$Builder;->setClientCmd(LcoeditCoreMessage/ClientCmd;)LcoeditCoreMessage/SubmitRequest$Builder;

    move-result-object v1

    invoke-static {}, LcoeditCoreMessage/CheckPointCoeditOpPair;->newBuilder()LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;->setCheckpoint(J)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;

    move-result-object p2

    invoke-virtual {p2, p4}, LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;->setExtraData(Ljava/lang/String;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;->addAllCoeditOperation(Ljava/lang/Iterable;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;->addAllObjectInfo(Ljava/lang/Iterable;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-virtual {v1, p1}, LcoeditCoreMessage/SubmitRequest$Builder;->setCheckpointCoeditopPair(LcoeditCoreMessage/CheckPointCoeditOpPair;)LcoeditCoreMessage/SubmitRequest$Builder;

    move-result-object p1

    sget-boolean p2, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants;->IS_VALIDATION:Z

    invoke-virtual {p1, p2}, LcoeditCoreMessage/SubmitRequest$Builder;->setIsValidate(Z)LcoeditCoreMessage/SubmitRequest$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getWorkspaceVersion()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, LcoeditCoreMessage/SubmitRequest$Builder;->setWorkspaceVersion(J)LcoeditCoreMessage/SubmitRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/SubmitRequest;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public putUploadStrokeRequest(LcoeditObjectMessage/UploadStrokeRequest;LcoeditObjectMessage/UploadStrokeRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeRequest:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public putUploadStrokeRequest(Ljava/lang/String;JLjava/lang/String;[B)V
    .locals 2

    invoke-static {}, LcoeditObjectMessage/UploadStrokeRequest;->newBuilder()LcoeditObjectMessage/UploadStrokeRequest$Builder;

    move-result-object v0

    invoke-static {}, LcoeditObjectMessage/BinaryInfo;->newBuilder()LcoeditObjectMessage/BinaryInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, LcoeditObjectMessage/BinaryInfo$Builder;->setHash(Ljava/lang/String;)LcoeditObjectMessage/BinaryInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, LcoeditObjectMessage/BinaryInfo$Builder;->setSize(J)LcoeditObjectMessage/BinaryInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, LcoeditObjectMessage/BinaryInfo$Builder;->setMimetype(Ljava/lang/String;)LcoeditObjectMessage/BinaryInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/BinaryInfo;

    invoke-virtual {v0, p1}, LcoeditObjectMessage/UploadStrokeRequest$Builder;->setBinaryInfo(LcoeditObjectMessage/BinaryInfo;)LcoeditObjectMessage/UploadStrokeRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/UploadStrokeRequest;

    invoke-static {}, LcoeditObjectMessage/UploadStrokeRequest;->newBuilder()LcoeditObjectMessage/UploadStrokeRequest$Builder;

    move-result-object p2

    invoke-static {}, LcoeditObjectMessage/Binary;->newBuilder()LcoeditObjectMessage/Binary$Builder;

    move-result-object p3

    invoke-static {p5}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p4

    invoke-virtual {p3, p4}, LcoeditObjectMessage/Binary$Builder;->setChunk(Lcom/google/protobuf/ByteString;)LcoeditObjectMessage/Binary$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p3

    check-cast p3, LcoeditObjectMessage/Binary;

    invoke-virtual {p2, p3}, LcoeditObjectMessage/UploadStrokeRequest$Builder;->setBinary(LcoeditObjectMessage/Binary;)LcoeditObjectMessage/UploadStrokeRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditObjectMessage/UploadStrokeRequest;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->putUploadStrokeRequest(LcoeditObjectMessage/UploadStrokeRequest;LcoeditObjectMessage/UploadStrokeRequest;)V

    return-void
.end method

.method public reconnect(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;->reconnect(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized refreshForReopen()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mDownloadStrokeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadedStrokeObjectInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mDownloadContentFileObjectInfos:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;

    return-void
.end method

.method public releaseLock(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;->releaseLock(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized removeDownloadStrokeData(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mDownloadStrokeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mDownloadStrokeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeUndownloadedObjectInfo(Ljava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->removeDownloadingObjectId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mNoteId:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->removeUndownloadedObjectInfo(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeUnuploadedContentFileData(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->removeUploadingContentFileId(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mNoteId:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->removeUnuploadedContentFileCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public requestPermission(Ljava/lang/String;LcoeditCoreMessage/PermissionRequest;)LcoeditCoreMessage/PermissionResponse;
    .locals 3

    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    sget-object v1, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    const-string v2, "requestId"

    invoke-static {v2, v1}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mPolicyStub:LcoeditCore/PolicyManagerGrpc$PolicyManagerBlockingStub;

    invoke-static {p1, v0}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditCore/PolicyManagerGrpc$PolicyManagerBlockingStub;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v1, v2, v0}, Lio/grpc/stub/AbstractStub;->withDeadlineAfter(JLjava/util/concurrent/TimeUnit;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditCore/PolicyManagerGrpc$PolicyManagerBlockingStub;

    invoke-virtual {p1, p2}, LcoeditCore/PolicyManagerGrpc$PolicyManagerBlockingStub;->requestPermission(LcoeditCoreMessage/PermissionRequest;)LcoeditCoreMessage/PermissionResponse;

    move-result-object p1

    return-object p1
.end method

.method public requestResetWorkspace(Ljava/lang/String;)LcoeditCoreMessage/ResetWorkspaceResponse;
    .locals 3

    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    sget-object v1, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    const-string v2, "requestId"

    invoke-static {v2, v1}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mWorkspaceStub:LcoeditCore/WorkspaceManagerGrpc$WorkspaceManagerBlockingStub;

    invoke-static {p1, v0}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditCore/WorkspaceManagerGrpc$WorkspaceManagerBlockingStub;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v1, v2, v0}, Lio/grpc/stub/AbstractStub;->withDeadlineAfter(JLjava/util/concurrent/TimeUnit;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditCore/WorkspaceManagerGrpc$WorkspaceManagerBlockingStub;

    invoke-static {}, LcoeditCoreMessage/ResetWorkspaceRequest;->newBuilder()LcoeditCoreMessage/ResetWorkspaceRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getWorkspaceVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LcoeditCoreMessage/ResetWorkspaceRequest$Builder;->setWorkspaceVersion(J)LcoeditCoreMessage/ResetWorkspaceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceRequest;

    invoke-virtual {p1, v0}, LcoeditCore/WorkspaceManagerGrpc$WorkspaceManagerBlockingStub;->resetWorkspace(LcoeditCoreMessage/ResetWorkspaceRequest;)LcoeditCoreMessage/ResetWorkspaceResponse;

    move-result-object p1

    return-object p1
.end method

.method public setCatchupEndCheckPoint(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mCatchupEndCheckPoint:J

    return-void
.end method

.method public setCatchupStartCheckPoint(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mCatchupStartCheckPoint:J

    return-void
.end method

.method public setCatchupType(LcoeditCoreMessage/CatchupType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mCatchupType:LcoeditCoreMessage/CatchupType;

    return-void
.end method

.method public setNoteId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mNoteId:Ljava/lang/String;

    return-void
.end method

.method public setNotifyCheckPoint(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mNotifyCheckPoint:J

    return-void
.end method

.method public setPausedByNetwork(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;->setPausedByNetwork(Ljava/lang/String;)V

    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mResourceId:Ljava/lang/String;

    return-void
.end method

.method public setResponsedWorkspaceVersion(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mResponsedWorkspaceVersion:J

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mResultCode:I

    return-void
.end method

.method public setSubmitCheckPoint(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mSubmitCheckPoint:J

    return-void
.end method

.method public setWorkspaceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mWorkspaceId:Ljava/lang/String;

    return-void
.end method

.method public submitRequest(Ljava/lang/String;LcoeditCoreMessage/SubmitRequest;)LcoeditCoreMessage/SubmitResponse;
    .locals 3

    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    sget-object v1, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    const-string v2, "requestId"

    invoke-static {v2, v1}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mSubmitterStub:LcoeditCore/SubmitterGrpc$SubmitterBlockingStub;

    invoke-static {p1, v0}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditCore/SubmitterGrpc$SubmitterBlockingStub;

    const/high16 v0, 0x800000

    invoke-virtual {p1, v0}, Lio/grpc/stub/AbstractStub;->withMaxInboundMessageSize(I)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditCore/SubmitterGrpc$SubmitterBlockingStub;

    invoke-virtual {p1, p2}, LcoeditCore/SubmitterGrpc$SubmitterBlockingStub;->submit(LcoeditCoreMessage/SubmitRequest;)LcoeditCoreMessage/SubmitResponse;

    move-result-object p1

    return-object p1
.end method

.method public takeClientMsg()LcoeditCoreMessage/ClientMsg;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mClientMsgQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcoeditCoreMessage/ClientMsg;

    return-object v0
.end method

.method public declared-synchronized takeDownloadContentFileObjectInfo()LcoeditCoreMessage/ObjectInfo;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mDownloadContentFileObjectInfos:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcoeditCoreMessage/ObjectInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public takeDownloadStrokeRequest()LcoeditObjectMessage/DownloadStrokeRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mDownloadStrokeRequest:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcoeditObjectMessage/DownloadStrokeRequest;

    return-object v0
.end method

.method public takePermissionRequest()LcoeditCoreMessage/PermissionRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mPermissionRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcoeditCoreMessage/PermissionRequest;

    return-object v0
.end method

.method public takeReceiveMsg()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mReceiveMsgQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public takeSubmitRequest()LcoeditCoreMessage/SubmitRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mSubmitMsgQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    return-object v0
.end method

.method public declared-synchronized takeUploadContentFileData()Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadContentFileDatas:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public takeUploadStrokeRequest()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "LcoeditObjectMessage/UploadStrokeRequest;",
            "LcoeditObjectMessage/UploadStrokeRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mUploadStrokeRequest:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public uploadContentFileData(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;->uploadContentFile(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
