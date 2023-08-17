.class public final LcoeditCoreMessage/ServerMsg;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/ServerMsgOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditCoreMessage/ServerMsg$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditCoreMessage/ServerMsg;",
        "LcoeditCoreMessage/ServerMsg$Builder;",
        ">;",
        "LcoeditCoreMessage/ServerMsgOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHANNEL_ID_FIELD_NUMBER:I = 0x2

.field public static final CHECKPOINT_COEDITOP_PAIR_FIELD_NUMBER:I = 0x4

.field public static final CONNECTED_DEVICE_CNT_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:LcoeditCoreMessage/ServerMsg;

.field public static final DEVICE_INFO_FIELD_NUMBER:I = 0x7

.field public static final DVC_ID_FIELD_NUMBER:I = 0xc

.field public static final EVENT_INFO_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreMessage/ServerMsg;",
            ">;"
        }
    .end annotation
.end field

.field public static final POLICY_INFO_FIELD_NUMBER:I = 0xb

.field public static final RESPONSE_RESULT_FIELD_NUMBER:I = 0x1

.field public static final SERVER_CMD_FIELD_NUMBER:I = 0x3

.field public static final SESSION_VALID_TIME_FIELD_NUMBER:I = 0x5

.field public static final WORKSPACE_BLOCKED_FIELD_NUMBER:I = 0x9

.field public static final WORKSPACE_VERSION_FIELD_NUMBER:I = 0xa


# instance fields
.field private channelId_:Ljava/lang/String;

.field private checkpointCoeditopPair_:LcoeditCoreMessage/CheckPointCoeditOpPair;

.field private connectedDeviceCnt_:J

.field private deviceInfo_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "LcoeditCoreMessage/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dvcId_:Ljava/lang/String;

.field private eventInfo_:LcoeditCoreMessage/EventInfo;

.field private policyInfo_:LcoeditCoreMessage/PolicyInfo;

.field private responseResult_:LcoeditCoreMessage/ResponseResult;

.field private serverCmd_:I

.field private sessionValidTime_:J

.field private workspaceBlocked_:Z

.field private workspaceVersion_:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditCoreMessage/ServerMsg;

    invoke-direct {v0}, LcoeditCoreMessage/ServerMsg;-><init>()V

    sput-object v0, LcoeditCoreMessage/ServerMsg;->DEFAULT_INSTANCE:LcoeditCoreMessage/ServerMsg;

    const-class v1, LcoeditCoreMessage/ServerMsg;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LcoeditCoreMessage/ServerMsg;->channelId_:Ljava/lang/String;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, LcoeditCoreMessage/ServerMsg;->deviceInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    iput-object v0, p0, LcoeditCoreMessage/ServerMsg;->dvcId_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic A(LcoeditCoreMessage/ServerMsg;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ServerMsg;->setDvcIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic B(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/EventInfo;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ServerMsg;->setEventInfo(LcoeditCoreMessage/EventInfo;)V

    return-void
.end method

.method public static bridge synthetic C(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/PolicyInfo;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ServerMsg;->setPolicyInfo(LcoeditCoreMessage/PolicyInfo;)V

    return-void
.end method

.method public static bridge synthetic D(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/ResponseResult;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ServerMsg;->setResponseResult(LcoeditCoreMessage/ResponseResult;)V

    return-void
.end method

.method public static bridge synthetic E(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/ServerCmd;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ServerMsg;->setServerCmd(LcoeditCoreMessage/ServerCmd;)V

    return-void
.end method

.method public static bridge synthetic F(LcoeditCoreMessage/ServerMsg;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ServerMsg;->setServerCmdValue(I)V

    return-void
.end method

.method public static bridge synthetic G(LcoeditCoreMessage/ServerMsg;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCoreMessage/ServerMsg;->setSessionValidTime(J)V

    return-void
.end method

.method public static bridge synthetic H(LcoeditCoreMessage/ServerMsg;Z)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ServerMsg;->setWorkspaceBlocked(Z)V

    return-void
.end method

.method public static bridge synthetic I(LcoeditCoreMessage/ServerMsg;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCoreMessage/ServerMsg;->setWorkspaceVersion(J)V

    return-void
.end method

.method public static bridge synthetic J()LcoeditCoreMessage/ServerMsg;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ServerMsg;->DEFAULT_INSTANCE:LcoeditCoreMessage/ServerMsg;

    return-object v0
.end method

.method public static bridge synthetic a(LcoeditCoreMessage/ServerMsg;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ServerMsg;->addAllDeviceInfo(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAllDeviceInfo(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditCoreMessage/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LcoeditCoreMessage/ServerMsg;->ensureDeviceInfoIsMutable()V

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->deviceInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addDeviceInfo(ILcoeditCoreMessage/DeviceInfo;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditCoreMessage/ServerMsg;->ensureDeviceInfoIsMutable()V

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->deviceInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addDeviceInfo(LcoeditCoreMessage/DeviceInfo;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditCoreMessage/ServerMsg;->ensureDeviceInfoIsMutable()V

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->deviceInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic b(LcoeditCoreMessage/ServerMsg;ILcoeditCoreMessage/DeviceInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCoreMessage/ServerMsg;->addDeviceInfo(ILcoeditCoreMessage/DeviceInfo;)V

    return-void
.end method

.method public static bridge synthetic c(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/DeviceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ServerMsg;->addDeviceInfo(LcoeditCoreMessage/DeviceInfo;)V

    return-void
.end method

.method private clearChannelId()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/ServerMsg;->getDefaultInstance()LcoeditCoreMessage/ServerMsg;

    move-result-object v0

    invoke-virtual {v0}, LcoeditCoreMessage/ServerMsg;->getChannelId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreMessage/ServerMsg;->channelId_:Ljava/lang/String;

    return-void
.end method

.method private clearCheckpointCoeditopPair()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditCoreMessage/ServerMsg;->checkpointCoeditopPair_:LcoeditCoreMessage/CheckPointCoeditOpPair;

    return-void
.end method

.method private clearConnectedDeviceCnt()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LcoeditCoreMessage/ServerMsg;->connectedDeviceCnt_:J

    return-void
.end method

.method private clearDeviceInfo()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreMessage/ServerMsg;->deviceInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearDvcId()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/ServerMsg;->getDefaultInstance()LcoeditCoreMessage/ServerMsg;

    move-result-object v0

    invoke-virtual {v0}, LcoeditCoreMessage/ServerMsg;->getDvcId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreMessage/ServerMsg;->dvcId_:Ljava/lang/String;

    return-void
.end method

.method private clearEventInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditCoreMessage/ServerMsg;->eventInfo_:LcoeditCoreMessage/EventInfo;

    return-void
.end method

.method private clearPolicyInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditCoreMessage/ServerMsg;->policyInfo_:LcoeditCoreMessage/PolicyInfo;

    return-void
.end method

.method private clearResponseResult()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditCoreMessage/ServerMsg;->responseResult_:LcoeditCoreMessage/ResponseResult;

    return-void
.end method

.method private clearServerCmd()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LcoeditCoreMessage/ServerMsg;->serverCmd_:I

    return-void
.end method

.method private clearSessionValidTime()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LcoeditCoreMessage/ServerMsg;->sessionValidTime_:J

    return-void
.end method

.method private clearWorkspaceBlocked()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LcoeditCoreMessage/ServerMsg;->workspaceBlocked_:Z

    return-void
.end method

.method private clearWorkspaceVersion()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LcoeditCoreMessage/ServerMsg;->workspaceVersion_:J

    return-void
.end method

.method public static bridge synthetic d(LcoeditCoreMessage/ServerMsg;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ServerMsg;->clearChannelId()V

    return-void
.end method

.method public static bridge synthetic e(LcoeditCoreMessage/ServerMsg;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ServerMsg;->clearCheckpointCoeditopPair()V

    return-void
.end method

.method private ensureDeviceInfoIsMutable()V
    .locals 2

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->deviceInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreMessage/ServerMsg;->deviceInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static bridge synthetic f(LcoeditCoreMessage/ServerMsg;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ServerMsg;->clearConnectedDeviceCnt()V

    return-void
.end method

.method public static bridge synthetic g(LcoeditCoreMessage/ServerMsg;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ServerMsg;->clearDeviceInfo()V

    return-void
.end method

.method public static getDefaultInstance()LcoeditCoreMessage/ServerMsg;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ServerMsg;->DEFAULT_INSTANCE:LcoeditCoreMessage/ServerMsg;

    return-object v0
.end method

.method public static bridge synthetic h(LcoeditCoreMessage/ServerMsg;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ServerMsg;->clearDvcId()V

    return-void
.end method

.method public static bridge synthetic i(LcoeditCoreMessage/ServerMsg;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ServerMsg;->clearEventInfo()V

    return-void
.end method

.method public static bridge synthetic j(LcoeditCoreMessage/ServerMsg;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ServerMsg;->clearPolicyInfo()V

    return-void
.end method

.method public static bridge synthetic k(LcoeditCoreMessage/ServerMsg;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ServerMsg;->clearResponseResult()V

    return-void
.end method

.method public static bridge synthetic l(LcoeditCoreMessage/ServerMsg;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ServerMsg;->clearServerCmd()V

    return-void
.end method

.method public static bridge synthetic m(LcoeditCoreMessage/ServerMsg;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ServerMsg;->clearSessionValidTime()V

    return-void
.end method

.method private mergeCheckpointCoeditopPair(LcoeditCoreMessage/CheckPointCoeditOpPair;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->checkpointCoeditopPair_:LcoeditCoreMessage/CheckPointCoeditOpPair;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getDefaultInstance()LcoeditCoreMessage/CheckPointCoeditOpPair;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->checkpointCoeditopPair_:LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->newBuilder(LcoeditCoreMessage/CheckPointCoeditOpPair;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/CheckPointCoeditOpPair;

    :cond_0
    iput-object p1, p0, LcoeditCoreMessage/ServerMsg;->checkpointCoeditopPair_:LcoeditCoreMessage/CheckPointCoeditOpPair;

    return-void
.end method

.method private mergeEventInfo(LcoeditCoreMessage/EventInfo;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->eventInfo_:LcoeditCoreMessage/EventInfo;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditCoreMessage/EventInfo;->getDefaultInstance()LcoeditCoreMessage/EventInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->eventInfo_:LcoeditCoreMessage/EventInfo;

    invoke-static {v0}, LcoeditCoreMessage/EventInfo;->newBuilder(LcoeditCoreMessage/EventInfo;)LcoeditCoreMessage/EventInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/EventInfo$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/EventInfo;

    :cond_0
    iput-object p1, p0, LcoeditCoreMessage/ServerMsg;->eventInfo_:LcoeditCoreMessage/EventInfo;

    return-void
.end method

.method private mergePolicyInfo(LcoeditCoreMessage/PolicyInfo;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->policyInfo_:LcoeditCoreMessage/PolicyInfo;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditCoreMessage/PolicyInfo;->getDefaultInstance()LcoeditCoreMessage/PolicyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->policyInfo_:LcoeditCoreMessage/PolicyInfo;

    invoke-static {v0}, LcoeditCoreMessage/PolicyInfo;->newBuilder(LcoeditCoreMessage/PolicyInfo;)LcoeditCoreMessage/PolicyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/PolicyInfo$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/PolicyInfo;

    :cond_0
    iput-object p1, p0, LcoeditCoreMessage/ServerMsg;->policyInfo_:LcoeditCoreMessage/PolicyInfo;

    return-void
.end method

.method private mergeResponseResult(LcoeditCoreMessage/ResponseResult;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->responseResult_:LcoeditCoreMessage/ResponseResult;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditCoreMessage/ResponseResult;->getDefaultInstance()LcoeditCoreMessage/ResponseResult;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->responseResult_:LcoeditCoreMessage/ResponseResult;

    invoke-static {v0}, LcoeditCoreMessage/ResponseResult;->newBuilder(LcoeditCoreMessage/ResponseResult;)LcoeditCoreMessage/ResponseResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/ResponseResult$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/ResponseResult;

    :cond_0
    iput-object p1, p0, LcoeditCoreMessage/ServerMsg;->responseResult_:LcoeditCoreMessage/ResponseResult;

    return-void
.end method

.method public static bridge synthetic n(LcoeditCoreMessage/ServerMsg;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ServerMsg;->clearWorkspaceBlocked()V

    return-void
.end method

.method public static newBuilder()LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ServerMsg;->DEFAULT_INSTANCE:LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditCoreMessage/ServerMsg$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditCoreMessage/ServerMsg;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ServerMsg;->DEFAULT_INSTANCE:LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ServerMsg$Builder;

    return-object p0
.end method

.method public static bridge synthetic o(LcoeditCoreMessage/ServerMsg;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ServerMsg;->clearWorkspaceVersion()V

    return-void
.end method

.method public static bridge synthetic p(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/CheckPointCoeditOpPair;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ServerMsg;->mergeCheckpointCoeditopPair(LcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-void
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditCoreMessage/ServerMsg;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ServerMsg;->DEFAULT_INSTANCE:LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ServerMsg;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/ServerMsg;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ServerMsg;->DEFAULT_INSTANCE:LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ServerMsg;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/ServerMsg;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ServerMsg;->DEFAULT_INSTANCE:LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ServerMsg;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/ServerMsg;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ServerMsg;->DEFAULT_INSTANCE:LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ServerMsg;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditCoreMessage/ServerMsg;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ServerMsg;->DEFAULT_INSTANCE:LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ServerMsg;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/ServerMsg;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ServerMsg;->DEFAULT_INSTANCE:LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ServerMsg;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditCoreMessage/ServerMsg;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ServerMsg;->DEFAULT_INSTANCE:LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ServerMsg;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/ServerMsg;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ServerMsg;->DEFAULT_INSTANCE:LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ServerMsg;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditCoreMessage/ServerMsg;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ServerMsg;->DEFAULT_INSTANCE:LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ServerMsg;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/ServerMsg;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ServerMsg;->DEFAULT_INSTANCE:LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ServerMsg;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditCoreMessage/ServerMsg;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ServerMsg;->DEFAULT_INSTANCE:LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ServerMsg;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/ServerMsg;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ServerMsg;->DEFAULT_INSTANCE:LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ServerMsg;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreMessage/ServerMsg;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditCoreMessage/ServerMsg;->DEFAULT_INSTANCE:LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic q(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/EventInfo;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ServerMsg;->mergeEventInfo(LcoeditCoreMessage/EventInfo;)V

    return-void
.end method

.method public static bridge synthetic r(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/PolicyInfo;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ServerMsg;->mergePolicyInfo(LcoeditCoreMessage/PolicyInfo;)V

    return-void
.end method

.method private removeDeviceInfo(I)V
    .locals 1

    invoke-direct {p0}, LcoeditCoreMessage/ServerMsg;->ensureDeviceInfoIsMutable()V

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->deviceInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic s(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/ResponseResult;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ServerMsg;->mergeResponseResult(LcoeditCoreMessage/ResponseResult;)V

    return-void
.end method

.method private setChannelId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreMessage/ServerMsg;->channelId_:Ljava/lang/String;

    return-void
.end method

.method private setChannelIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditCoreMessage/ServerMsg;->channelId_:Ljava/lang/String;

    return-void
.end method

.method private setCheckpointCoeditopPair(LcoeditCoreMessage/CheckPointCoeditOpPair;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreMessage/ServerMsg;->checkpointCoeditopPair_:LcoeditCoreMessage/CheckPointCoeditOpPair;

    return-void
.end method

.method private setConnectedDeviceCnt(J)V
    .locals 0

    iput-wide p1, p0, LcoeditCoreMessage/ServerMsg;->connectedDeviceCnt_:J

    return-void
.end method

.method private setDeviceInfo(ILcoeditCoreMessage/DeviceInfo;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditCoreMessage/ServerMsg;->ensureDeviceInfoIsMutable()V

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->deviceInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDvcId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreMessage/ServerMsg;->dvcId_:Ljava/lang/String;

    return-void
.end method

.method private setDvcIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditCoreMessage/ServerMsg;->dvcId_:Ljava/lang/String;

    return-void
.end method

.method private setEventInfo(LcoeditCoreMessage/EventInfo;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreMessage/ServerMsg;->eventInfo_:LcoeditCoreMessage/EventInfo;

    return-void
.end method

.method private setPolicyInfo(LcoeditCoreMessage/PolicyInfo;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreMessage/ServerMsg;->policyInfo_:LcoeditCoreMessage/PolicyInfo;

    return-void
.end method

.method private setResponseResult(LcoeditCoreMessage/ResponseResult;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreMessage/ServerMsg;->responseResult_:LcoeditCoreMessage/ResponseResult;

    return-void
.end method

.method private setServerCmd(LcoeditCoreMessage/ServerCmd;)V
    .locals 0

    invoke-virtual {p1}, LcoeditCoreMessage/ServerCmd;->getNumber()I

    move-result p1

    iput p1, p0, LcoeditCoreMessage/ServerMsg;->serverCmd_:I

    return-void
.end method

.method private setServerCmdValue(I)V
    .locals 0

    iput p1, p0, LcoeditCoreMessage/ServerMsg;->serverCmd_:I

    return-void
.end method

.method private setSessionValidTime(J)V
    .locals 0

    iput-wide p1, p0, LcoeditCoreMessage/ServerMsg;->sessionValidTime_:J

    return-void
.end method

.method private setWorkspaceBlocked(Z)V
    .locals 0

    iput-boolean p1, p0, LcoeditCoreMessage/ServerMsg;->workspaceBlocked_:Z

    return-void
.end method

.method private setWorkspaceVersion(J)V
    .locals 0

    iput-wide p1, p0, LcoeditCoreMessage/ServerMsg;->workspaceVersion_:J

    return-void
.end method

.method public static bridge synthetic t(LcoeditCoreMessage/ServerMsg;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ServerMsg;->removeDeviceInfo(I)V

    return-void
.end method

.method public static bridge synthetic u(LcoeditCoreMessage/ServerMsg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ServerMsg;->setChannelId(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic v(LcoeditCoreMessage/ServerMsg;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ServerMsg;->setChannelIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic w(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/CheckPointCoeditOpPair;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ServerMsg;->setCheckpointCoeditopPair(LcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-void
.end method

.method public static bridge synthetic x(LcoeditCoreMessage/ServerMsg;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCoreMessage/ServerMsg;->setConnectedDeviceCnt(J)V

    return-void
.end method

.method public static bridge synthetic y(LcoeditCoreMessage/ServerMsg;ILcoeditCoreMessage/DeviceInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCoreMessage/ServerMsg;->setDeviceInfo(ILcoeditCoreMessage/DeviceInfo;)V

    return-void
.end method

.method public static bridge synthetic z(LcoeditCoreMessage/ServerMsg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ServerMsg;->setDvcId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditCoreMessage/ServerMsg$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditCoreMessage/ServerMsg;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditCoreMessage/ServerMsg;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditCoreMessage/ServerMsg;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditCoreMessage/ServerMsg;->DEFAULT_INSTANCE:LcoeditCoreMessage/ServerMsg;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditCoreMessage/ServerMsg;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditCoreMessage/ServerMsg;->DEFAULT_INSTANCE:LcoeditCoreMessage/ServerMsg;

    return-object p1

    :pswitch_4
    const/16 p1, 0xd

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "responseResult_"

    aput-object v0, p1, p3

    const-string p3, "channelId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "serverCmd_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "checkpointCoeditopPair_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "sessionValidTime_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "eventInfo_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "deviceInfo_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, LcoeditCoreMessage/DeviceInfo;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "connectedDeviceCnt_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "workspaceBlocked_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "workspaceVersion_"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "policyInfo_"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "dvcId_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u000c\u0000\u0000\u0001\u000c\u000c\u0000\u0001\u0000\u0001\t\u0002\u0208\u0003\u000c\u0004\t\u0005\u0002\u0006\t\u0007\u001b\u0008\u0002\t\u0007\n\u0002\u000b\t\u000c\u0208"

    sget-object p3, LcoeditCoreMessage/ServerMsg;->DEFAULT_INSTANCE:LcoeditCoreMessage/ServerMsg;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditCoreMessage/ServerMsg$Builder;

    invoke-direct {p1, p3}, LcoeditCoreMessage/ServerMsg$Builder;-><init>(LcoeditCoreMessage/o;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditCoreMessage/ServerMsg;

    invoke-direct {p1}, LcoeditCoreMessage/ServerMsg;-><init>()V

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

.method public getChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->channelId_:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->channelId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCheckpointCoeditopPair()LcoeditCoreMessage/CheckPointCoeditOpPair;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->checkpointCoeditopPair_:LcoeditCoreMessage/CheckPointCoeditOpPair;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getDefaultInstance()LcoeditCoreMessage/CheckPointCoeditOpPair;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConnectedDeviceCnt()J
    .locals 2

    iget-wide v0, p0, LcoeditCoreMessage/ServerMsg;->connectedDeviceCnt_:J

    return-wide v0
.end method

.method public getDeviceInfo(I)LcoeditCoreMessage/DeviceInfo;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->deviceInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/DeviceInfo;

    return-object p1
.end method

.method public getDeviceInfoCount()I
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->deviceInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDeviceInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditCoreMessage/DeviceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->deviceInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getDeviceInfoOrBuilder(I)LcoeditCoreMessage/DeviceInfoOrBuilder;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->deviceInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/DeviceInfoOrBuilder;

    return-object p1
.end method

.method public getDeviceInfoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "LcoeditCoreMessage/DeviceInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->deviceInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getDvcId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->dvcId_:Ljava/lang/String;

    return-object v0
.end method

.method public getDvcIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->dvcId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEventInfo()LcoeditCoreMessage/EventInfo;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->eventInfo_:LcoeditCoreMessage/EventInfo;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditCoreMessage/EventInfo;->getDefaultInstance()LcoeditCoreMessage/EventInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPolicyInfo()LcoeditCoreMessage/PolicyInfo;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->policyInfo_:LcoeditCoreMessage/PolicyInfo;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditCoreMessage/PolicyInfo;->getDefaultInstance()LcoeditCoreMessage/PolicyInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResponseResult()LcoeditCoreMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->responseResult_:LcoeditCoreMessage/ResponseResult;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditCoreMessage/ResponseResult;->getDefaultInstance()LcoeditCoreMessage/ResponseResult;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getServerCmd()LcoeditCoreMessage/ServerCmd;
    .locals 1

    iget v0, p0, LcoeditCoreMessage/ServerMsg;->serverCmd_:I

    invoke-static {v0}, LcoeditCoreMessage/ServerCmd;->forNumber(I)LcoeditCoreMessage/ServerCmd;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, LcoeditCoreMessage/ServerCmd;->UNRECOGNIZED:LcoeditCoreMessage/ServerCmd;

    :cond_0
    return-object v0
.end method

.method public getServerCmdValue()I
    .locals 1

    iget v0, p0, LcoeditCoreMessage/ServerMsg;->serverCmd_:I

    return v0
.end method

.method public getSessionValidTime()J
    .locals 2

    iget-wide v0, p0, LcoeditCoreMessage/ServerMsg;->sessionValidTime_:J

    return-wide v0
.end method

.method public getWorkspaceBlocked()Z
    .locals 1

    iget-boolean v0, p0, LcoeditCoreMessage/ServerMsg;->workspaceBlocked_:Z

    return v0
.end method

.method public getWorkspaceVersion()J
    .locals 2

    iget-wide v0, p0, LcoeditCoreMessage/ServerMsg;->workspaceVersion_:J

    return-wide v0
.end method

.method public hasCheckpointCoeditopPair()Z
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->checkpointCoeditopPair_:LcoeditCoreMessage/CheckPointCoeditOpPair;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEventInfo()Z
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->eventInfo_:LcoeditCoreMessage/EventInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPolicyInfo()Z
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->policyInfo_:LcoeditCoreMessage/PolicyInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ServerMsg;->responseResult_:LcoeditCoreMessage/ResponseResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
