.class public Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;
.super Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SnapGrpcData"


# instance fields
.field private mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcDataContract;

.field private mDownloadStrokeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mDownloadXmlData:Ljava/lang/String;

.field private final mUploadNoteMsgQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "LnoteSnapMessage/UploadRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->mUploadNoteMsgQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->setDownloadStrokeMap(Ljava/util/Map;)V

    return-void
.end method

.method private putUploadRequest(LnoteSnapMessage/UploadRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->mUploadNoteMsgQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method private setDownloadStrokeMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->mDownloadStrokeMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public asyncDownloadNote(Ljava/lang/String;Lio/grpc/stub/StreamObserver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/grpc/stub/StreamObserver<",
            "LnoteSnapMessage/DownloadResponse;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mChannel:Lio/grpc/ManagedChannel;

    invoke-static {v0}, LnoteSnap/DownloaderGrpc;->newStub(Lio/grpc/Channel;)LnoteSnap/DownloaderGrpc$DownloaderStub;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mMetadata:Lio/grpc/Metadata;

    invoke-static {v0, v1}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    check-cast v0, LnoteSnap/DownloaderGrpc$DownloaderStub;

    new-instance v1, Lio/grpc/Metadata;

    invoke-direct {v1}, Lio/grpc/Metadata;-><init>()V

    sget-object v2, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    const-string v3, "requestId"

    invoke-static {v3, v2}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LnoteSnap/DownloaderGrpc$DownloaderStub;

    invoke-static {}, LnoteSnapMessage/DownloadRequest;->newBuilder()LnoteSnapMessage/DownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, LnoteSnapMessage/DownloadRequest;

    invoke-virtual {p1, v0, p2}, LnoteSnap/DownloaderGrpc$DownloaderStub;->downloadNote(LnoteSnapMessage/DownloadRequest;Lio/grpc/stub/StreamObserver;)V

    return-void
.end method

.method public asyncUploadNote(Ljava/lang/String;Lio/grpc/stub/StreamObserver;)Lio/grpc/stub/StreamObserver;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/grpc/stub/StreamObserver<",
            "LnoteSnapMessage/UploadResponse;",
            ">;)",
            "Lio/grpc/stub/StreamObserver<",
            "LnoteSnapMessage/UploadRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mChannel:Lio/grpc/ManagedChannel;

    invoke-static {v0}, LnoteSnap/UploaderGrpc;->newStub(Lio/grpc/Channel;)LnoteSnap/UploaderGrpc$UploaderStub;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mMetadata:Lio/grpc/Metadata;

    invoke-static {v0, v1}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    check-cast v0, LnoteSnap/UploaderGrpc$UploaderStub;

    new-instance v1, Lio/grpc/Metadata;

    invoke-direct {v1}, Lio/grpc/Metadata;-><init>()V

    sget-object v2, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    const-string v3, "requestId"

    invoke-static {v3, v2}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LnoteSnap/UploaderGrpc$UploaderStub;

    invoke-virtual {p1, p2}, LnoteSnap/UploaderGrpc$UploaderStub;->uploadNote(Lio/grpc/stub/StreamObserver;)Lio/grpc/stub/StreamObserver;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized downloadContentFile(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcDataContract;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcDataContract;->downloadContentFile(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDownloadStroke(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->mDownloadStrokeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public getDownloadStrokeMapKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->mDownloadStrokeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadXmlData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->mDownloadXmlData:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestNoteInfo(Ljava/lang/String;LnoteSnapMessage/NoteInfoRequest;)LnoteSnapMessage/NoteInfoResponse;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mChannel:Lio/grpc/ManagedChannel;

    invoke-static {v0}, LnoteSnap/NoteInfoGetterGrpc;->newBlockingStub(Lio/grpc/Channel;)LnoteSnap/NoteInfoGetterGrpc$NoteInfoGetterBlockingStub;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mMetadata:Lio/grpc/Metadata;

    invoke-static {v0, v1}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    check-cast v0, LnoteSnap/NoteInfoGetterGrpc$NoteInfoGetterBlockingStub;

    new-instance v1, Lio/grpc/Metadata;

    invoke-direct {v1}, Lio/grpc/Metadata;-><init>()V

    sget-object v2, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    const-string v3, "requestId"

    invoke-static {v3, v2}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LnoteSnap/NoteInfoGetterGrpc$NoteInfoGetterBlockingStub;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v1, v2, v0}, Lio/grpc/stub/AbstractStub;->withDeadlineAfter(JLjava/util/concurrent/TimeUnit;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LnoteSnap/NoteInfoGetterGrpc$NoteInfoGetterBlockingStub;

    invoke-virtual {p1, p2}, LnoteSnap/NoteInfoGetterGrpc$NoteInfoGetterBlockingStub;->getLatestNoteInfo(LnoteSnapMessage/NoteInfoRequest;)LnoteSnapMessage/NoteInfoResponse;

    move-result-object p1

    return-object p1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "SnapGrpcData"

    return-object v0
.end method

.method public handleDownloadUrlMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcDataContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcDataContract;->handleDownloadUrlMap(Ljava/util/Map;)V

    return-void
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcDataContract;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p8}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setWorkspaceId(Ljava/lang/String;)V

    invoke-virtual {p0, p7}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setNoteId(Ljava/lang/String;)V

    iput-object p9, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcDataContract;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mChannel:Lio/grpc/ManagedChannel;

    invoke-static {p1}, LcoeditObject/UploaderGrpc;->newBlockingStub(Lio/grpc/Channel;)LcoeditObject/UploaderGrpc$UploaderBlockingStub;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mMetadata:Lio/grpc/Metadata;

    invoke-static {p1, p2}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditObject/UploaderGrpc$UploaderBlockingStub;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mObjectUploaderStub:LcoeditObject/UploaderGrpc$UploaderBlockingStub;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mChannel:Lio/grpc/ManagedChannel;

    invoke-static {p1}, LcoeditObject/DownloaderGrpc;->newBlockingStub(Lio/grpc/Channel;)LcoeditObject/DownloaderGrpc$DownloaderBlockingStub;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mMetadata:Lio/grpc/Metadata;

    invoke-static {p1, p2}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditObject/DownloaderGrpc$DownloaderBlockingStub;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->mObjectDownloaderStub:LcoeditObject/DownloaderGrpc$DownloaderBlockingStub;

    return-void
.end method

.method public isInvalidStub()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUploadRequestQueueEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->mUploadNoteMsgQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onContentFileUploadError(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcDataContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcDataContract;->onContentFileUploadError(I)V

    return-void
.end method

.method public putDownloadStrokeData(Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->mDownloadStrokeMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putUploadNoteRequest(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, LnoteSnapMessage/UploadRequest;->newBuilder()LnoteSnapMessage/UploadRequest$Builder;

    move-result-object v0

    invoke-static {}, LnoteSnapMessage/BinaryInfo;->newBuilder()LnoteSnapMessage/BinaryInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, LnoteSnapMessage/BinaryInfo$Builder;->setName(Ljava/lang/String;)LnoteSnapMessage/BinaryInfo$Builder;

    move-result-object p1

    const-string v1, "application/xml"

    invoke-virtual {p1, v1}, LnoteSnapMessage/BinaryInfo$Builder;->setType(Ljava/lang/String;)LnoteSnapMessage/BinaryInfo$Builder;

    move-result-object p1

    int-to-long v1, p3

    invoke-virtual {p1, v1, v2}, LnoteSnapMessage/BinaryInfo$Builder;->setLength(J)LnoteSnapMessage/BinaryInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LnoteSnapMessage/BinaryInfo;

    invoke-virtual {v0, p1}, LnoteSnapMessage/UploadRequest$Builder;->setBinaryInfo(LnoteSnapMessage/BinaryInfo;)LnoteSnapMessage/UploadRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LnoteSnapMessage/UploadRequest;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->putUploadRequest(LnoteSnapMessage/UploadRequest;)V

    new-instance p1, Ljava/io/ByteArrayInputStream;

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/high16 p2, 0x200000

    new-array p2, p2, [B

    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p3

    if-lez p3, :cond_0

    invoke-static {}, LnoteSnapMessage/UploadRequest;->newBuilder()LnoteSnapMessage/UploadRequest$Builder;

    move-result-object v0

    invoke-static {}, LnoteSnapMessage/Binary;->newBuilder()LnoteSnapMessage/Binary$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v2, p3}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, LnoteSnapMessage/Binary$Builder;->setChunk(Lcom/google/protobuf/ByteString;)LnoteSnapMessage/Binary$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, LnoteSnapMessage/Binary$Builder;->setReadSize(I)LnoteSnapMessage/Binary$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p3

    check-cast p3, LnoteSnapMessage/Binary;

    invoke-virtual {v0, p3}, LnoteSnapMessage/UploadRequest$Builder;->setBinary(LnoteSnapMessage/Binary;)LnoteSnapMessage/UploadRequest$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p3

    check-cast p3, LnoteSnapMessage/UploadRequest;

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->putUploadRequest(LnoteSnapMessage/UploadRequest;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putUploadStrokeRequest(Ljava/lang/String;Ljava/lang/String;[BJ)V
    .locals 2

    invoke-static {}, LnoteSnapMessage/UploadRequest;->newBuilder()LnoteSnapMessage/UploadRequest$Builder;

    move-result-object v0

    invoke-static {}, LnoteSnapMessage/BinaryInfo;->newBuilder()LnoteSnapMessage/BinaryInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, LnoteSnapMessage/BinaryInfo$Builder;->setName(Ljava/lang/String;)LnoteSnapMessage/BinaryInfo$Builder;

    move-result-object p1

    const-string v1, "object/stroke"

    invoke-virtual {p1, v1}, LnoteSnapMessage/BinaryInfo$Builder;->setType(Ljava/lang/String;)LnoteSnapMessage/BinaryInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, LnoteSnapMessage/BinaryInfo$Builder;->setLength(J)LnoteSnapMessage/BinaryInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, LnoteSnapMessage/BinaryInfo$Builder;->setHash(Ljava/lang/String;)LnoteSnapMessage/BinaryInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, LnoteSnapMessage/BinaryInfo$Builder;->setSize(J)LnoteSnapMessage/BinaryInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LnoteSnapMessage/BinaryInfo;

    invoke-virtual {v0, p1}, LnoteSnapMessage/UploadRequest$Builder;->setBinaryInfo(LnoteSnapMessage/BinaryInfo;)LnoteSnapMessage/UploadRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LnoteSnapMessage/UploadRequest;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->putUploadRequest(LnoteSnapMessage/UploadRequest;)V

    invoke-static {}, LnoteSnapMessage/UploadRequest;->newBuilder()LnoteSnapMessage/UploadRequest$Builder;

    move-result-object p1

    invoke-static {}, LnoteSnapMessage/Binary;->newBuilder()LnoteSnapMessage/Binary$Builder;

    move-result-object p2

    invoke-static {p3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p3

    invoke-virtual {p2, p3}, LnoteSnapMessage/Binary$Builder;->setChunk(Lcom/google/protobuf/ByteString;)LnoteSnapMessage/Binary$Builder;

    move-result-object p2

    long-to-int p3, p4

    invoke-virtual {p2, p3}, LnoteSnapMessage/Binary$Builder;->setReadSize(I)LnoteSnapMessage/Binary$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LnoteSnapMessage/Binary;

    invoke-virtual {p1, p2}, LnoteSnapMessage/UploadRequest$Builder;->setBinary(LnoteSnapMessage/Binary;)LnoteSnapMessage/UploadRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LnoteSnapMessage/UploadRequest;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->putUploadRequest(LnoteSnapMessage/UploadRequest;)V

    return-void
.end method

.method public setDownloadXmlData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->mDownloadXmlData:Ljava/lang/String;

    return-void
.end method

.method public takeUploadRequest()LnoteSnapMessage/UploadRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->mUploadNoteMsgQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LnoteSnapMessage/UploadRequest;

    return-object v0
.end method

.method public updateSnapNoteLatestInfo(JJLjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcDataContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcDataContract;->updateSnapNoteLatestInfo(JJLjava/lang/String;)V

    return-void
.end method

.method public uploadContentFileData(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcDataContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcDataContract;->uploadContentFileData(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
