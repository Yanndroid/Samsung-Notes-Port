.class public Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;
.super Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;
.source "SourceFile"


# static fields
.field private static final MAX_INBOUND:I = 0x800000

.field private static final TAG:Ljava/lang/String; = "CoeditTransformData"


# instance fields
.field private final mComposeRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "LcoeditOtMessage/ComposeRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mComposeResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "LcoeditOtMessage/ComposeResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mComposerStub:LcoeditOt/ComposerGrpc$ComposerBlockingStub;

.field private mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformDataContract;

.field private final mMultipleTransformRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "LcoeditOtMessage/MultipleTransformRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultipleTransformResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "LcoeditOtMessage/MultipleTransformResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransformRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "LcoeditOtMessage/TransformRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransformResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "LcoeditOtMessage/TransformResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransformWithMultipleRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "LcoeditOtMessage/TransformWithMultipleRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransformWithMultipleResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "LcoeditOtMessage/TransformWithMultipleResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mTransformerStub:LcoeditOt/TransformerGrpc$TransformerBlockingStub;

.field private mWorkspaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mMultipleTransformRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mMultipleTransformResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformWithMultipleRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformWithMultipleResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mComposeRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mComposeResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public clearComposeRequestQueue()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mComposeRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void
.end method

.method public clearComposeResponseQueue()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mComposeResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void
.end method

.method public clearMultipleTransformRequestQueue()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mMultipleTransformRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void
.end method

.method public clearMultipleTransformResponseQueue()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mMultipleTransformResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void
.end method

.method public clearTransformRequestQueue()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void
.end method

.method public clearTransformResponseQueue()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void
.end method

.method public clearTransformWithMultipleRequestQueue()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformWithMultipleRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void
.end method

.method public clearTransformWithMultipleResponseQueue()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformWithMultipleResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void
.end method

.method public compose(Ljava/lang/String;LcoeditOtMessage/ComposeRequest;)LcoeditOtMessage/ComposeResponse;
    .locals 3

    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    sget-object v1, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    const-string v2, "requestId"

    invoke-static {v2, v1}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mComposerStub:LcoeditOt/ComposerGrpc$ComposerBlockingStub;

    invoke-static {p1, v0}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditOt/ComposerGrpc$ComposerBlockingStub;

    invoke-virtual {p1, p2}, LcoeditOt/ComposerGrpc$ComposerBlockingStub;->compose(LcoeditOtMessage/ComposeRequest;)LcoeditOtMessage/ComposeResponse;

    move-result-object p1

    return-object p1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "CoeditTransformData"

    return-object v0
.end method

.method public getWorkspaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformDataContract;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mWorkspaceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformDataContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformDataContract;->getWorkspaceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mWorkspaceId:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mWorkspaceId:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformDataContract;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p7}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->setWorkspaceId(Ljava/lang/String;)V

    iput-object p8, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformDataContract;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mChannel:Lio/grpc/ManagedChannel;

    invoke-static {p1}, LcoeditOt/TransformerGrpc;->newBlockingStub(Lio/grpc/Channel;)LcoeditOt/TransformerGrpc$TransformerBlockingStub;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mMetadata:Lio/grpc/Metadata;

    invoke-static {p1, p2}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditOt/TransformerGrpc$TransformerBlockingStub;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformerStub:LcoeditOt/TransformerGrpc$TransformerBlockingStub;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mChannel:Lio/grpc/ManagedChannel;

    invoke-static {p1}, LcoeditOt/ComposerGrpc;->newBlockingStub(Lio/grpc/Channel;)LcoeditOt/ComposerGrpc$ComposerBlockingStub;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->mMetadata:Lio/grpc/Metadata;

    invoke-static {p1, p2}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditOt/ComposerGrpc$ComposerBlockingStub;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mComposerStub:LcoeditOt/ComposerGrpc$ComposerBlockingStub;

    return-void
.end method

.method public isComposeRequestEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mComposeRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isComposeResponseEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mComposeResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isInvalidStub()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformerStub:LcoeditOt/TransformerGrpc$TransformerBlockingStub;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMultipleTransformRequestEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mMultipleTransformRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isMultipleTransformResponseEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mMultipleTransformResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isTransformRequestEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isTransformResponseEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isTransformWithMultipleRequestEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformWithMultipleRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isTransformWithMultipleResponseEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformWithMultipleResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public needBlockCoedit(I)Z
    .locals 1

    const/4 v0, 0x3

    if-gt v0, p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " exceed retry count"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->setPausedByNetwork(Ljava/lang/String;)V

    const-string p1, "retryTransform response"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->releaseLock(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public putComposeRequest(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {}, LcoeditOtMessage/IdxCedOpsPair;->newBuilder()LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, LcoeditOtMessage/IdxCedOpsPair$Builder;->setIdx(J)LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object v2

    invoke-static {}, LcoeditOperation/CedOps;->newBuilder()LcoeditOperation/CedOps$Builder;

    move-result-object v3

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->serialize(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, LcoeditOperation/CedOps$Builder;->addAllCoeditOperation(Ljava/lang/Iterable;)LcoeditOperation/CedOps$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, LcoeditOperation/CedOps;

    invoke-virtual {v2, v1}, LcoeditOtMessage/IdxCedOpsPair$Builder;->setCedOps(LcoeditOperation/CedOps;)LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, LcoeditOtMessage/IdxCedOpsPair;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mComposeRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, LcoeditOtMessage/ComposeRequest;->newBuilder()LcoeditOtMessage/ComposeRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, LcoeditOtMessage/ComposeRequest$Builder;->addAllPairs(Ljava/lang/Iterable;)LcoeditOtMessage/ComposeRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, LcoeditOtMessage/ComposeRequest;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public putComposeResponse(LcoeditOtMessage/ComposeResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mComposeResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public putMultipleTransformRequest(LcoeditOtMessage/MultipleTransformRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mMultipleTransformRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public putMultipleTransformRequest(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {}, LcoeditOtMessage/IdxCedOpsPair;->newBuilder()LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, LcoeditOtMessage/IdxCedOpsPair$Builder;->setIdx(J)LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object v2

    invoke-static {}, LcoeditOperation/CedOps;->newBuilder()LcoeditOperation/CedOps$Builder;

    move-result-object v3

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->serialize(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, LcoeditOperation/CedOps$Builder;->addAllCoeditOperation(Ljava/lang/Iterable;)LcoeditOperation/CedOps$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, LcoeditOperation/CedOps;

    invoke-virtual {v2, v1}, LcoeditOtMessage/IdxCedOpsPair$Builder;->setCedOps(LcoeditOperation/CedOps;)LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, LcoeditOtMessage/IdxCedOpsPair;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, LcoeditOtMessage/MultipleTransformRequest;->newBuilder()LcoeditOtMessage/MultipleTransformRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, LcoeditOtMessage/MultipleTransformRequest$Builder;->addAllFirst(Ljava/lang/Iterable;)LcoeditOtMessage/MultipleTransformRequest$Builder;

    move-result-object p1

    invoke-static {}, LcoeditOtMessage/IdxCedOpsPair;->newBuilder()LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, LcoeditOtMessage/IdxCedOpsPair$Builder;->setIdx(J)LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object v0

    invoke-static {}, LcoeditOperation/CedOps;->newBuilder()LcoeditOperation/CedOps$Builder;

    move-result-object v1

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->serialize(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1, p2}, LcoeditOperation/CedOps$Builder;->addAllCoeditOperation(Ljava/lang/Iterable;)LcoeditOperation/CedOps$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOperation/CedOps;

    invoke-virtual {v0, p2}, LcoeditOtMessage/IdxCedOpsPair$Builder;->setCedOps(LcoeditOperation/CedOps;)LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOtMessage/IdxCedOpsPair;

    invoke-virtual {p1, p2}, LcoeditOtMessage/MultipleTransformRequest$Builder;->setSecond(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/MultipleTransformRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/MultipleTransformRequest;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->putMultipleTransformRequest(LcoeditOtMessage/MultipleTransformRequest;)V

    return-void
.end method

.method public putMultipleTransformResponse(LcoeditOtMessage/MultipleTransformResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mMultipleTransformResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public putTransformRequest(LcoeditOtMessage/TransformRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public putTransformRequest(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, LcoeditOtMessage/TransformRequest;->newBuilder()LcoeditOtMessage/TransformRequest$Builder;

    move-result-object v0

    invoke-static {}, LcoeditOtMessage/IdxCedOpsPair;->newBuilder()LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, LcoeditOtMessage/IdxCedOpsPair$Builder;->setIdx(J)LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object v1

    invoke-static {}, LcoeditOperation/CedOps;->newBuilder()LcoeditOperation/CedOps$Builder;

    move-result-object v4

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->serialize(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v4, p1}, LcoeditOperation/CedOps$Builder;->addAllCoeditOperation(Ljava/lang/Iterable;)LcoeditOperation/CedOps$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CedOps;

    invoke-virtual {v1, p1}, LcoeditOtMessage/IdxCedOpsPair$Builder;->setCedOps(LcoeditOperation/CedOps;)LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair;

    invoke-virtual {v0, p1}, LcoeditOtMessage/TransformRequest$Builder;->setFirst(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/TransformRequest$Builder;

    move-result-object p1

    invoke-static {}, LcoeditOtMessage/IdxCedOpsPair;->newBuilder()LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, LcoeditOtMessage/IdxCedOpsPair$Builder;->setIdx(J)LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object v0

    invoke-static {}, LcoeditOperation/CedOps;->newBuilder()LcoeditOperation/CedOps$Builder;

    move-result-object v1

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->serialize(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1, p2}, LcoeditOperation/CedOps$Builder;->addAllCoeditOperation(Ljava/lang/Iterable;)LcoeditOperation/CedOps$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOperation/CedOps;

    invoke-virtual {v0, p2}, LcoeditOtMessage/IdxCedOpsPair$Builder;->setCedOps(LcoeditOperation/CedOps;)LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOtMessage/IdxCedOpsPair;

    invoke-virtual {p1, p2}, LcoeditOtMessage/TransformRequest$Builder;->setSecond(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/TransformRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/TransformRequest;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->putTransformRequest(LcoeditOtMessage/TransformRequest;)V

    return-void
.end method

.method public putTransformResponse(LcoeditOtMessage/TransformResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public putTransformWithMultipleRequest(LcoeditOtMessage/TransformWithMultipleRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformWithMultipleRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public putTransformWithMultipleRequest(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {}, LcoeditOtMessage/IdxCedOpsPair;->newBuilder()LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, LcoeditOtMessage/IdxCedOpsPair$Builder;->setIdx(J)LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object v2

    invoke-static {}, LcoeditOperation/CedOps;->newBuilder()LcoeditOperation/CedOps$Builder;

    move-result-object v3

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->serialize(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, LcoeditOperation/CedOps$Builder;->addAllCoeditOperation(Ljava/lang/Iterable;)LcoeditOperation/CedOps$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, LcoeditOperation/CedOps;

    invoke-virtual {v2, v1}, LcoeditOtMessage/IdxCedOpsPair$Builder;->setCedOps(LcoeditOperation/CedOps;)LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, LcoeditOtMessage/IdxCedOpsPair;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, LcoeditOtMessage/TransformWithMultipleRequest;->newBuilder()LcoeditOtMessage/TransformWithMultipleRequest$Builder;

    move-result-object p2

    invoke-static {}, LcoeditOtMessage/IdxCedOpsPair;->newBuilder()LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, LcoeditOtMessage/IdxCedOpsPair$Builder;->setIdx(J)LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object v1

    invoke-static {}, LcoeditOperation/CedOps;->newBuilder()LcoeditOperation/CedOps$Builder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->serialize(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, LcoeditOperation/CedOps$Builder;->addAllCoeditOperation(Ljava/lang/Iterable;)LcoeditOperation/CedOps$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CedOps;

    invoke-virtual {v1, p1}, LcoeditOtMessage/IdxCedOpsPair$Builder;->setCedOps(LcoeditOperation/CedOps;)LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair;

    invoke-virtual {p2, p1}, LcoeditOtMessage/TransformWithMultipleRequest$Builder;->setFirst(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/TransformWithMultipleRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, LcoeditOtMessage/TransformWithMultipleRequest$Builder;->addAllSecond(Ljava/lang/Iterable;)LcoeditOtMessage/TransformWithMultipleRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/TransformWithMultipleRequest;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->putTransformWithMultipleRequest(LcoeditOtMessage/TransformWithMultipleRequest;)V

    return-void
.end method

.method public putTransformWithMultipleResponse(LcoeditOtMessage/TransformWithMultipleResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformWithMultipleResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public reconnect(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reconnect, message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", waiting : 100s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditTransformData"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v2, 0xea60

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reconnect waiting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformDataContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformDataContract;->reconnect(Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformDataContract;

    return-void
.end method

.method public releaseLock(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformDataContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformDataContract;->releaseLock(Ljava/lang/String;)V

    return-void
.end method

.method public setPausedByNetwork(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformDataContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformDataContract;->setPausedByNetwork(Ljava/lang/String;)V

    return-void
.end method

.method public setWorkspaceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mWorkspaceId:Ljava/lang/String;

    return-void
.end method

.method public takeComposeRequest()LcoeditOtMessage/ComposeRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mComposeRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcoeditOtMessage/ComposeRequest;

    return-object v0
.end method

.method public takeComposeResponse()LcoeditOtMessage/ComposeResponse;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mComposeResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcoeditOtMessage/ComposeResponse;

    return-object v0
.end method

.method public takeMultipleTransformRequest()LcoeditOtMessage/MultipleTransformRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mMultipleTransformRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcoeditOtMessage/MultipleTransformRequest;

    return-object v0
.end method

.method public takeMultipleTransformResponse()LcoeditOtMessage/MultipleTransformResponse;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mMultipleTransformResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcoeditOtMessage/MultipleTransformResponse;

    return-object v0
.end method

.method public takeTransformRequest()LcoeditOtMessage/TransformRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcoeditOtMessage/TransformRequest;

    return-object v0
.end method

.method public takeTransformResponse()LcoeditOtMessage/TransformResponse;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcoeditOtMessage/TransformResponse;

    return-object v0
.end method

.method public takeTransformWithMultipleRequest()LcoeditOtMessage/TransformWithMultipleRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformWithMultipleRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcoeditOtMessage/TransformWithMultipleRequest;

    return-object v0
.end method

.method public takeTransformWithMultipleResponse()LcoeditOtMessage/TransformWithMultipleResponse;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformWithMultipleResponseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcoeditOtMessage/TransformWithMultipleResponse;

    return-object v0
.end method

.method public transform(Ljava/lang/String;LcoeditOtMessage/MultipleTransformRequest;)LcoeditOtMessage/MultipleTransformResponse;
    .locals 3

    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    sget-object v1, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    const-string v2, "requestId"

    invoke-static {v2, v1}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformerStub:LcoeditOt/TransformerGrpc$TransformerBlockingStub;

    invoke-static {p1, v0}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditOt/TransformerGrpc$TransformerBlockingStub;

    const/high16 v0, 0x800000

    invoke-virtual {p1, v0}, Lio/grpc/stub/AbstractStub;->withMaxInboundMessageSize(I)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditOt/TransformerGrpc$TransformerBlockingStub;

    invoke-virtual {p1, p2}, LcoeditOt/TransformerGrpc$TransformerBlockingStub;->multipleTransform(LcoeditOtMessage/MultipleTransformRequest;)LcoeditOtMessage/MultipleTransformResponse;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/lang/String;LcoeditOtMessage/TransformRequest;)LcoeditOtMessage/TransformResponse;
    .locals 3

    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    sget-object v1, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    const-string v2, "requestId"

    invoke-static {v2, v1}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformerStub:LcoeditOt/TransformerGrpc$TransformerBlockingStub;

    invoke-static {p1, v0}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditOt/TransformerGrpc$TransformerBlockingStub;

    const/high16 v0, 0x800000

    invoke-virtual {p1, v0}, Lio/grpc/stub/AbstractStub;->withMaxInboundMessageSize(I)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditOt/TransformerGrpc$TransformerBlockingStub;

    invoke-virtual {p1, p2}, LcoeditOt/TransformerGrpc$TransformerBlockingStub;->transform(LcoeditOtMessage/TransformRequest;)LcoeditOtMessage/TransformResponse;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/lang/String;LcoeditOtMessage/TransformWithMultipleRequest;)LcoeditOtMessage/TransformWithMultipleResponse;
    .locals 3

    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    sget-object v1, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    const-string v2, "requestId"

    invoke-static {v2, v1}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->mTransformerStub:LcoeditOt/TransformerGrpc$TransformerBlockingStub;

    invoke-static {p1, v0}, Lio/grpc/stub/MetadataUtils;->attachHeaders(Lio/grpc/stub/AbstractStub;Lio/grpc/Metadata;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditOt/TransformerGrpc$TransformerBlockingStub;

    const/high16 v0, 0x800000

    invoke-virtual {p1, v0}, Lio/grpc/stub/AbstractStub;->withMaxInboundMessageSize(I)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    check-cast p1, LcoeditOt/TransformerGrpc$TransformerBlockingStub;

    invoke-virtual {p1, p2}, LcoeditOt/TransformerGrpc$TransformerBlockingStub;->transformWithMultiple(LcoeditOtMessage/TransformWithMultipleRequest;)LcoeditOtMessage/TransformWithMultipleResponse;

    move-result-object p1

    return-object p1
.end method
