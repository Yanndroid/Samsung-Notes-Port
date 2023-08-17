.class public final LcoeditCoreMessage/ResetWorkspaceResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/ResetWorkspaceResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditCoreMessage/ResetWorkspaceResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditCoreMessage/ResetWorkspaceResponse;",
        "LcoeditCoreMessage/ResetWorkspaceResponse$Builder;",
        ">;",
        "LcoeditCoreMessage/ResetWorkspaceResponseOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:LcoeditCoreMessage/ResetWorkspaceResponse;

.field public static final IS_BLOCKED_FIELD_NUMBER:I = 0x5

.field public static final LATEST_SNAPSHOT_CHECKPOINT_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreMessage/ResetWorkspaceResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_RESULT_FIELD_NUMBER:I = 0x1

.field public static final WORKSPACE_ID_FIELD_NUMBER:I = 0x2

.field public static final WORKSPACE_VERSION_FIELD_NUMBER:I = 0x3


# instance fields
.field private isBlocked_:Z

.field private latestSnapshotCheckpoint_:J

.field private responseResult_:LcoeditCoreMessage/ResponseResult;

.field private workspaceId_:Ljava/lang/String;

.field private workspaceVersion_:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-direct {v0}, LcoeditCoreMessage/ResetWorkspaceResponse;-><init>()V

    sput-object v0, LcoeditCoreMessage/ResetWorkspaceResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/ResetWorkspaceResponse;

    const-class v1, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LcoeditCoreMessage/ResetWorkspaceResponse;->workspaceId_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(LcoeditCoreMessage/ResetWorkspaceResponse;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ResetWorkspaceResponse;->clearIsBlocked()V

    return-void
.end method

.method public static bridge synthetic b(LcoeditCoreMessage/ResetWorkspaceResponse;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ResetWorkspaceResponse;->clearLatestSnapshotCheckpoint()V

    return-void
.end method

.method public static bridge synthetic c(LcoeditCoreMessage/ResetWorkspaceResponse;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ResetWorkspaceResponse;->clearResponseResult()V

    return-void
.end method

.method private clearIsBlocked()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LcoeditCoreMessage/ResetWorkspaceResponse;->isBlocked_:Z

    return-void
.end method

.method private clearLatestSnapshotCheckpoint()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LcoeditCoreMessage/ResetWorkspaceResponse;->latestSnapshotCheckpoint_:J

    return-void
.end method

.method private clearResponseResult()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditCoreMessage/ResetWorkspaceResponse;->responseResult_:LcoeditCoreMessage/ResponseResult;

    return-void
.end method

.method private clearWorkspaceId()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/ResetWorkspaceResponse;->getDefaultInstance()LcoeditCoreMessage/ResetWorkspaceResponse;

    move-result-object v0

    invoke-virtual {v0}, LcoeditCoreMessage/ResetWorkspaceResponse;->getWorkspaceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreMessage/ResetWorkspaceResponse;->workspaceId_:Ljava/lang/String;

    return-void
.end method

.method private clearWorkspaceVersion()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LcoeditCoreMessage/ResetWorkspaceResponse;->workspaceVersion_:J

    return-void
.end method

.method public static bridge synthetic d(LcoeditCoreMessage/ResetWorkspaceResponse;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ResetWorkspaceResponse;->clearWorkspaceId()V

    return-void
.end method

.method public static bridge synthetic e(LcoeditCoreMessage/ResetWorkspaceResponse;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ResetWorkspaceResponse;->clearWorkspaceVersion()V

    return-void
.end method

.method public static bridge synthetic f(LcoeditCoreMessage/ResetWorkspaceResponse;LcoeditCoreMessage/ResponseResult;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ResetWorkspaceResponse;->mergeResponseResult(LcoeditCoreMessage/ResponseResult;)V

    return-void
.end method

.method public static bridge synthetic g(LcoeditCoreMessage/ResetWorkspaceResponse;Z)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ResetWorkspaceResponse;->setIsBlocked(Z)V

    return-void
.end method

.method public static getDefaultInstance()LcoeditCoreMessage/ResetWorkspaceResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ResetWorkspaceResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/ResetWorkspaceResponse;

    return-object v0
.end method

.method public static bridge synthetic h(LcoeditCoreMessage/ResetWorkspaceResponse;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCoreMessage/ResetWorkspaceResponse;->setLatestSnapshotCheckpoint(J)V

    return-void
.end method

.method public static bridge synthetic i(LcoeditCoreMessage/ResetWorkspaceResponse;LcoeditCoreMessage/ResponseResult;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ResetWorkspaceResponse;->setResponseResult(LcoeditCoreMessage/ResponseResult;)V

    return-void
.end method

.method public static bridge synthetic j(LcoeditCoreMessage/ResetWorkspaceResponse;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ResetWorkspaceResponse;->setWorkspaceId(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic k(LcoeditCoreMessage/ResetWorkspaceResponse;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ResetWorkspaceResponse;->setWorkspaceIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic l(LcoeditCoreMessage/ResetWorkspaceResponse;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCoreMessage/ResetWorkspaceResponse;->setWorkspaceVersion(J)V

    return-void
.end method

.method public static bridge synthetic m()LcoeditCoreMessage/ResetWorkspaceResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ResetWorkspaceResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/ResetWorkspaceResponse;

    return-object v0
.end method

.method private mergeResponseResult(LcoeditCoreMessage/ResponseResult;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditCoreMessage/ResetWorkspaceResponse;->responseResult_:LcoeditCoreMessage/ResponseResult;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditCoreMessage/ResponseResult;->getDefaultInstance()LcoeditCoreMessage/ResponseResult;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditCoreMessage/ResetWorkspaceResponse;->responseResult_:LcoeditCoreMessage/ResponseResult;

    invoke-static {v0}, LcoeditCoreMessage/ResponseResult;->newBuilder(LcoeditCoreMessage/ResponseResult;)LcoeditCoreMessage/ResponseResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/ResponseResult$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/ResponseResult;

    :cond_0
    iput-object p1, p0, LcoeditCoreMessage/ResetWorkspaceResponse;->responseResult_:LcoeditCoreMessage/ResponseResult;

    return-void
.end method

.method public static newBuilder()LcoeditCoreMessage/ResetWorkspaceResponse$Builder;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ResetWorkspaceResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditCoreMessage/ResetWorkspaceResponse;)LcoeditCoreMessage/ResetWorkspaceResponse$Builder;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ResetWorkspaceResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ResetWorkspaceResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditCoreMessage/ResetWorkspaceResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ResetWorkspaceResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ResetWorkspaceResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/ResetWorkspaceResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ResetWorkspaceResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ResetWorkspaceResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/ResetWorkspaceResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ResetWorkspaceResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ResetWorkspaceResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/ResetWorkspaceResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ResetWorkspaceResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ResetWorkspaceResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditCoreMessage/ResetWorkspaceResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ResetWorkspaceResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ResetWorkspaceResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/ResetWorkspaceResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ResetWorkspaceResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ResetWorkspaceResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditCoreMessage/ResetWorkspaceResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ResetWorkspaceResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ResetWorkspaceResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/ResetWorkspaceResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ResetWorkspaceResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ResetWorkspaceResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditCoreMessage/ResetWorkspaceResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ResetWorkspaceResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ResetWorkspaceResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/ResetWorkspaceResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ResetWorkspaceResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ResetWorkspaceResponse;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditCoreMessage/ResetWorkspaceResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ResetWorkspaceResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ResetWorkspaceResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/ResetWorkspaceResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ResetWorkspaceResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ResetWorkspaceResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreMessage/ResetWorkspaceResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditCoreMessage/ResetWorkspaceResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setIsBlocked(Z)V
    .locals 0

    iput-boolean p1, p0, LcoeditCoreMessage/ResetWorkspaceResponse;->isBlocked_:Z

    return-void
.end method

.method private setLatestSnapshotCheckpoint(J)V
    .locals 0

    iput-wide p1, p0, LcoeditCoreMessage/ResetWorkspaceResponse;->latestSnapshotCheckpoint_:J

    return-void
.end method

.method private setResponseResult(LcoeditCoreMessage/ResponseResult;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreMessage/ResetWorkspaceResponse;->responseResult_:LcoeditCoreMessage/ResponseResult;

    return-void
.end method

.method private setWorkspaceId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreMessage/ResetWorkspaceResponse;->workspaceId_:Ljava/lang/String;

    return-void
.end method

.method private setWorkspaceIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditCoreMessage/ResetWorkspaceResponse;->workspaceId_:Ljava/lang/String;

    return-void
.end method

.method private setWorkspaceVersion(J)V
    .locals 0

    iput-wide p1, p0, LcoeditCoreMessage/ResetWorkspaceResponse;->workspaceVersion_:J

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditCoreMessage/ResetWorkspaceResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditCoreMessage/ResetWorkspaceResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditCoreMessage/ResetWorkspaceResponse;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditCoreMessage/ResetWorkspaceResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditCoreMessage/ResetWorkspaceResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditCoreMessage/ResetWorkspaceResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditCoreMessage/ResetWorkspaceResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/ResetWorkspaceResponse;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "responseResult_"

    aput-object v0, p1, p3

    const-string p3, "workspaceId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "workspaceVersion_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "latestSnapshotCheckpoint_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "isBlocked_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\t\u0002\u0208\u0003\u0002\u0004\u0002\u0005\u0007"

    sget-object p3, LcoeditCoreMessage/ResetWorkspaceResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditCoreMessage/ResetWorkspaceResponse$Builder;

    invoke-direct {p1, p3}, LcoeditCoreMessage/ResetWorkspaceResponse$Builder;-><init>(LcoeditCoreMessage/m;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-direct {p1}, LcoeditCoreMessage/ResetWorkspaceResponse;-><init>()V

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

.method public getIsBlocked()Z
    .locals 1

    iget-boolean v0, p0, LcoeditCoreMessage/ResetWorkspaceResponse;->isBlocked_:Z

    return v0
.end method

.method public getLatestSnapshotCheckpoint()J
    .locals 2

    iget-wide v0, p0, LcoeditCoreMessage/ResetWorkspaceResponse;->latestSnapshotCheckpoint_:J

    return-wide v0
.end method

.method public getResponseResult()LcoeditCoreMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ResetWorkspaceResponse;->responseResult_:LcoeditCoreMessage/ResponseResult;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditCoreMessage/ResponseResult;->getDefaultInstance()LcoeditCoreMessage/ResponseResult;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getWorkspaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ResetWorkspaceResponse;->workspaceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkspaceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ResetWorkspaceResponse;->workspaceId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getWorkspaceVersion()J
    .locals 2

    iget-wide v0, p0, LcoeditCoreMessage/ResetWorkspaceResponse;->workspaceVersion_:J

    return-wide v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ResetWorkspaceResponse;->responseResult_:LcoeditCoreMessage/ResponseResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
