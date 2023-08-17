.class public final LcoeditCoreInternalMessage/GetChangesResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditCoreInternalMessage/GetChangesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditCoreInternalMessage/GetChangesResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditCoreInternalMessage/GetChangesResponse;",
        "LcoeditCoreInternalMessage/GetChangesResponse$Builder;",
        ">;",
        "LcoeditCoreInternalMessage/GetChangesResponseOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHECKPOINT_COEDITOP_PAIR_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:LcoeditCoreInternalMessage/GetChangesResponse;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreInternalMessage/GetChangesResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_RESULT_FIELD_NUMBER:I = 0x1


# instance fields
.field private checkpointCoeditopPair_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "LcoeditCoreMessage/CheckPointCoeditOpPair;",
            ">;"
        }
    .end annotation
.end field

.field private responseResult_:LcoeditCoreMessage/ResponseResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-direct {v0}, LcoeditCoreInternalMessage/GetChangesResponse;-><init>()V

    sput-object v0, LcoeditCoreInternalMessage/GetChangesResponse;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/GetChangesResponse;

    const-class v1, LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreInternalMessage/GetChangesResponse;->checkpointCoeditopPair_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static bridge synthetic a(LcoeditCoreInternalMessage/GetChangesResponse;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreInternalMessage/GetChangesResponse;->addAllCheckpointCoeditopPair(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAllCheckpointCoeditopPair(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditCoreMessage/CheckPointCoeditOpPair;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LcoeditCoreInternalMessage/GetChangesResponse;->ensureCheckpointCoeditopPairIsMutable()V

    iget-object v0, p0, LcoeditCoreInternalMessage/GetChangesResponse;->checkpointCoeditopPair_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addCheckpointCoeditopPair(ILcoeditCoreMessage/CheckPointCoeditOpPair;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditCoreInternalMessage/GetChangesResponse;->ensureCheckpointCoeditopPairIsMutable()V

    iget-object v0, p0, LcoeditCoreInternalMessage/GetChangesResponse;->checkpointCoeditopPair_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addCheckpointCoeditopPair(LcoeditCoreMessage/CheckPointCoeditOpPair;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditCoreInternalMessage/GetChangesResponse;->ensureCheckpointCoeditopPairIsMutable()V

    iget-object v0, p0, LcoeditCoreInternalMessage/GetChangesResponse;->checkpointCoeditopPair_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic b(LcoeditCoreInternalMessage/GetChangesResponse;ILcoeditCoreMessage/CheckPointCoeditOpPair;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCoreInternalMessage/GetChangesResponse;->addCheckpointCoeditopPair(ILcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-void
.end method

.method public static bridge synthetic c(LcoeditCoreInternalMessage/GetChangesResponse;LcoeditCoreMessage/CheckPointCoeditOpPair;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreInternalMessage/GetChangesResponse;->addCheckpointCoeditopPair(LcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-void
.end method

.method private clearCheckpointCoeditopPair()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreInternalMessage/GetChangesResponse;->checkpointCoeditopPair_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearResponseResult()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditCoreInternalMessage/GetChangesResponse;->responseResult_:LcoeditCoreMessage/ResponseResult;

    return-void
.end method

.method public static bridge synthetic d(LcoeditCoreInternalMessage/GetChangesResponse;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreInternalMessage/GetChangesResponse;->clearCheckpointCoeditopPair()V

    return-void
.end method

.method public static bridge synthetic e(LcoeditCoreInternalMessage/GetChangesResponse;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreInternalMessage/GetChangesResponse;->clearResponseResult()V

    return-void
.end method

.method private ensureCheckpointCoeditopPairIsMutable()V
    .locals 2

    iget-object v0, p0, LcoeditCoreInternalMessage/GetChangesResponse;->checkpointCoeditopPair_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreInternalMessage/GetChangesResponse;->checkpointCoeditopPair_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static bridge synthetic f(LcoeditCoreInternalMessage/GetChangesResponse;LcoeditCoreMessage/ResponseResult;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreInternalMessage/GetChangesResponse;->mergeResponseResult(LcoeditCoreMessage/ResponseResult;)V

    return-void
.end method

.method public static bridge synthetic g(LcoeditCoreInternalMessage/GetChangesResponse;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreInternalMessage/GetChangesResponse;->removeCheckpointCoeditopPair(I)V

    return-void
.end method

.method public static getDefaultInstance()LcoeditCoreInternalMessage/GetChangesResponse;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/GetChangesResponse;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/GetChangesResponse;

    return-object v0
.end method

.method public static bridge synthetic h(LcoeditCoreInternalMessage/GetChangesResponse;ILcoeditCoreMessage/CheckPointCoeditOpPair;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCoreInternalMessage/GetChangesResponse;->setCheckpointCoeditopPair(ILcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-void
.end method

.method public static bridge synthetic i(LcoeditCoreInternalMessage/GetChangesResponse;LcoeditCoreMessage/ResponseResult;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreInternalMessage/GetChangesResponse;->setResponseResult(LcoeditCoreMessage/ResponseResult;)V

    return-void
.end method

.method public static bridge synthetic j()LcoeditCoreInternalMessage/GetChangesResponse;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/GetChangesResponse;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/GetChangesResponse;

    return-object v0
.end method

.method private mergeResponseResult(LcoeditCoreMessage/ResponseResult;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditCoreInternalMessage/GetChangesResponse;->responseResult_:LcoeditCoreMessage/ResponseResult;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditCoreMessage/ResponseResult;->getDefaultInstance()LcoeditCoreMessage/ResponseResult;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditCoreInternalMessage/GetChangesResponse;->responseResult_:LcoeditCoreMessage/ResponseResult;

    invoke-static {v0}, LcoeditCoreMessage/ResponseResult;->newBuilder(LcoeditCoreMessage/ResponseResult;)LcoeditCoreMessage/ResponseResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/ResponseResult$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/ResponseResult;

    :cond_0
    iput-object p1, p0, LcoeditCoreInternalMessage/GetChangesResponse;->responseResult_:LcoeditCoreMessage/ResponseResult;

    return-void
.end method

.method public static newBuilder()LcoeditCoreInternalMessage/GetChangesResponse$Builder;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/GetChangesResponse;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditCoreInternalMessage/GetChangesResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditCoreInternalMessage/GetChangesResponse;)LcoeditCoreInternalMessage/GetChangesResponse$Builder;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/GetChangesResponse;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/GetChangesResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditCoreInternalMessage/GetChangesResponse;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/GetChangesResponse;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/GetChangesResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreInternalMessage/GetChangesResponse;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/GetChangesResponse;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/GetChangesResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditCoreInternalMessage/GetChangesResponse;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/GetChangesResponse;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/GetChangesResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreInternalMessage/GetChangesResponse;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/GetChangesResponse;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/GetChangesResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditCoreInternalMessage/GetChangesResponse;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/GetChangesResponse;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/GetChangesResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreInternalMessage/GetChangesResponse;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/GetChangesResponse;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/GetChangesResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditCoreInternalMessage/GetChangesResponse;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/GetChangesResponse;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/GetChangesResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreInternalMessage/GetChangesResponse;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/GetChangesResponse;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/GetChangesResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditCoreInternalMessage/GetChangesResponse;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/GetChangesResponse;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/GetChangesResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreInternalMessage/GetChangesResponse;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/GetChangesResponse;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/GetChangesResponse;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditCoreInternalMessage/GetChangesResponse;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/GetChangesResponse;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/GetChangesResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreInternalMessage/GetChangesResponse;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/GetChangesResponse;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/GetChangesResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreInternalMessage/GetChangesResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditCoreInternalMessage/GetChangesResponse;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeCheckpointCoeditopPair(I)V
    .locals 1

    invoke-direct {p0}, LcoeditCoreInternalMessage/GetChangesResponse;->ensureCheckpointCoeditopPairIsMutable()V

    iget-object v0, p0, LcoeditCoreInternalMessage/GetChangesResponse;->checkpointCoeditopPair_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setCheckpointCoeditopPair(ILcoeditCoreMessage/CheckPointCoeditOpPair;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditCoreInternalMessage/GetChangesResponse;->ensureCheckpointCoeditopPairIsMutable()V

    iget-object v0, p0, LcoeditCoreInternalMessage/GetChangesResponse;->checkpointCoeditopPair_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setResponseResult(LcoeditCoreMessage/ResponseResult;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreInternalMessage/GetChangesResponse;->responseResult_:LcoeditCoreMessage/ResponseResult;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditCoreInternalMessage/GetChangesResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, LcoeditCoreInternalMessage/GetChangesResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditCoreInternalMessage/GetChangesResponse;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditCoreInternalMessage/GetChangesResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditCoreInternalMessage/GetChangesResponse;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditCoreInternalMessage/GetChangesResponse;->PARSER:Lcom/google/protobuf/Parser;

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p1, LcoeditCoreInternalMessage/GetChangesResponse;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/GetChangesResponse;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "responseResult_"

    aput-object v0, p1, p3

    const-string p3, "checkpointCoeditopPair_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-class p3, LcoeditCoreMessage/CheckPointCoeditOpPair;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\t\u0002\u001b"

    sget-object p3, LcoeditCoreInternalMessage/GetChangesResponse;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditCoreInternalMessage/GetChangesResponse$Builder;

    invoke-direct {p1, p3}, LcoeditCoreInternalMessage/GetChangesResponse$Builder;-><init>(LcoeditCoreInternalMessage/f;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-direct {p1}, LcoeditCoreInternalMessage/GetChangesResponse;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCheckpointCoeditopPair(I)LcoeditCoreMessage/CheckPointCoeditOpPair;
    .locals 1

    iget-object v0, p0, LcoeditCoreInternalMessage/GetChangesResponse;->checkpointCoeditopPair_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/CheckPointCoeditOpPair;

    return-object p1
.end method

.method public getCheckpointCoeditopPairCount()I
    .locals 1

    iget-object v0, p0, LcoeditCoreInternalMessage/GetChangesResponse;->checkpointCoeditopPair_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCheckpointCoeditopPairList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditCoreMessage/CheckPointCoeditOpPair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LcoeditCoreInternalMessage/GetChangesResponse;->checkpointCoeditopPair_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getCheckpointCoeditopPairOrBuilder(I)LcoeditCoreMessage/CheckPointCoeditOpPairOrBuilder;
    .locals 1

    iget-object v0, p0, LcoeditCoreInternalMessage/GetChangesResponse;->checkpointCoeditopPair_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/CheckPointCoeditOpPairOrBuilder;

    return-object p1
.end method

.method public getCheckpointCoeditopPairOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "LcoeditCoreMessage/CheckPointCoeditOpPairOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LcoeditCoreInternalMessage/GetChangesResponse;->checkpointCoeditopPair_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getResponseResult()LcoeditCoreMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, LcoeditCoreInternalMessage/GetChangesResponse;->responseResult_:LcoeditCoreMessage/ResponseResult;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditCoreMessage/ResponseResult;->getDefaultInstance()LcoeditCoreMessage/ResponseResult;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, LcoeditCoreInternalMessage/GetChangesResponse;->responseResult_:LcoeditCoreMessage/ResponseResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
