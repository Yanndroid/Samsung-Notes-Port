.class public final LcoeditCoreMessage/ServerMsg$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/ServerMsgOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreMessage/ServerMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreMessage/ServerMsg;",
        "LcoeditCoreMessage/ServerMsg$Builder;",
        ">;",
        "LcoeditCoreMessage/ServerMsgOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/ServerMsg;->J()LcoeditCoreMessage/ServerMsg;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreMessage/o;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ServerMsg$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllDeviceInfo(Ljava/lang/Iterable;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditCoreMessage/DeviceInfo;",
            ">;)",
            "LcoeditCoreMessage/ServerMsg$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->a(LcoeditCoreMessage/ServerMsg;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addDeviceInfo(ILcoeditCoreMessage/DeviceInfo$Builder;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/ServerMsg;->b(LcoeditCoreMessage/ServerMsg;ILcoeditCoreMessage/DeviceInfo;)V

    return-object p0
.end method

.method public addDeviceInfo(ILcoeditCoreMessage/DeviceInfo;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/ServerMsg;->b(LcoeditCoreMessage/ServerMsg;ILcoeditCoreMessage/DeviceInfo;)V

    return-object p0
.end method

.method public addDeviceInfo(LcoeditCoreMessage/DeviceInfo$Builder;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->c(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/DeviceInfo;)V

    return-object p0
.end method

.method public addDeviceInfo(LcoeditCoreMessage/DeviceInfo;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->c(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/DeviceInfo;)V

    return-object p0
.end method

.method public clearChannelId()LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0}, LcoeditCoreMessage/ServerMsg;->d(LcoeditCoreMessage/ServerMsg;)V

    return-object p0
.end method

.method public clearCheckpointCoeditopPair()LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0}, LcoeditCoreMessage/ServerMsg;->e(LcoeditCoreMessage/ServerMsg;)V

    return-object p0
.end method

.method public clearConnectedDeviceCnt()LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0}, LcoeditCoreMessage/ServerMsg;->f(LcoeditCoreMessage/ServerMsg;)V

    return-object p0
.end method

.method public clearDeviceInfo()LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0}, LcoeditCoreMessage/ServerMsg;->g(LcoeditCoreMessage/ServerMsg;)V

    return-object p0
.end method

.method public clearDvcId()LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0}, LcoeditCoreMessage/ServerMsg;->h(LcoeditCoreMessage/ServerMsg;)V

    return-object p0
.end method

.method public clearEventInfo()LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0}, LcoeditCoreMessage/ServerMsg;->i(LcoeditCoreMessage/ServerMsg;)V

    return-object p0
.end method

.method public clearPolicyInfo()LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0}, LcoeditCoreMessage/ServerMsg;->j(LcoeditCoreMessage/ServerMsg;)V

    return-object p0
.end method

.method public clearResponseResult()LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0}, LcoeditCoreMessage/ServerMsg;->k(LcoeditCoreMessage/ServerMsg;)V

    return-object p0
.end method

.method public clearServerCmd()LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0}, LcoeditCoreMessage/ServerMsg;->l(LcoeditCoreMessage/ServerMsg;)V

    return-object p0
.end method

.method public clearSessionValidTime()LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0}, LcoeditCoreMessage/ServerMsg;->m(LcoeditCoreMessage/ServerMsg;)V

    return-object p0
.end method

.method public clearWorkspaceBlocked()LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0}, LcoeditCoreMessage/ServerMsg;->n(LcoeditCoreMessage/ServerMsg;)V

    return-object p0
.end method

.method public clearWorkspaceVersion()LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0}, LcoeditCoreMessage/ServerMsg;->o(LcoeditCoreMessage/ServerMsg;)V

    return-object p0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ServerMsg;->getChannelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ServerMsg;->getChannelIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCheckpointCoeditopPair()LcoeditCoreMessage/CheckPointCoeditOpPair;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ServerMsg;->getCheckpointCoeditopPair()LcoeditCoreMessage/CheckPointCoeditOpPair;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedDeviceCnt()J
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ServerMsg;->getConnectedDeviceCnt()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceInfo(I)LcoeditCoreMessage/DeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0, p1}, LcoeditCoreMessage/ServerMsg;->getDeviceInfo(I)LcoeditCoreMessage/DeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceInfoCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ServerMsg;->getDeviceInfoCount()I

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

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ServerMsg;->getDeviceInfoList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDvcId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ServerMsg;->getDvcId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDvcIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ServerMsg;->getDvcIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEventInfo()LcoeditCoreMessage/EventInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ServerMsg;->getEventInfo()LcoeditCoreMessage/EventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPolicyInfo()LcoeditCoreMessage/PolicyInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ServerMsg;->getPolicyInfo()LcoeditCoreMessage/PolicyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getResponseResult()LcoeditCoreMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ServerMsg;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public getServerCmd()LcoeditCoreMessage/ServerCmd;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ServerMsg;->getServerCmd()LcoeditCoreMessage/ServerCmd;

    move-result-object v0

    return-object v0
.end method

.method public getServerCmdValue()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ServerMsg;->getServerCmdValue()I

    move-result v0

    return v0
.end method

.method public getSessionValidTime()J
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ServerMsg;->getSessionValidTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWorkspaceBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ServerMsg;->getWorkspaceBlocked()Z

    move-result v0

    return v0
.end method

.method public getWorkspaceVersion()J
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ServerMsg;->getWorkspaceVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCheckpointCoeditopPair()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ServerMsg;->hasCheckpointCoeditopPair()Z

    move-result v0

    return v0
.end method

.method public hasEventInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ServerMsg;->hasEventInfo()Z

    move-result v0

    return v0
.end method

.method public hasPolicyInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ServerMsg;->hasPolicyInfo()Z

    move-result v0

    return v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ServerMsg;->hasResponseResult()Z

    move-result v0

    return v0
.end method

.method public mergeCheckpointCoeditopPair(LcoeditCoreMessage/CheckPointCoeditOpPair;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->p(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public mergeEventInfo(LcoeditCoreMessage/EventInfo;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->q(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/EventInfo;)V

    return-object p0
.end method

.method public mergePolicyInfo(LcoeditCoreMessage/PolicyInfo;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->r(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/PolicyInfo;)V

    return-object p0
.end method

.method public mergeResponseResult(LcoeditCoreMessage/ResponseResult;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->s(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public removeDeviceInfo(I)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->t(LcoeditCoreMessage/ServerMsg;I)V

    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->u(LcoeditCoreMessage/ServerMsg;Ljava/lang/String;)V

    return-object p0
.end method

.method public setChannelIdBytes(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->v(LcoeditCoreMessage/ServerMsg;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCheckpointCoeditopPair(LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->w(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public setCheckpointCoeditopPair(LcoeditCoreMessage/CheckPointCoeditOpPair;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->w(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public setConnectedDeviceCnt(J)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/ServerMsg;->x(LcoeditCoreMessage/ServerMsg;J)V

    return-object p0
.end method

.method public setDeviceInfo(ILcoeditCoreMessage/DeviceInfo$Builder;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/ServerMsg;->y(LcoeditCoreMessage/ServerMsg;ILcoeditCoreMessage/DeviceInfo;)V

    return-object p0
.end method

.method public setDeviceInfo(ILcoeditCoreMessage/DeviceInfo;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/ServerMsg;->y(LcoeditCoreMessage/ServerMsg;ILcoeditCoreMessage/DeviceInfo;)V

    return-object p0
.end method

.method public setDvcId(Ljava/lang/String;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->z(LcoeditCoreMessage/ServerMsg;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDvcIdBytes(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->A(LcoeditCoreMessage/ServerMsg;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setEventInfo(LcoeditCoreMessage/EventInfo$Builder;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/EventInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->B(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/EventInfo;)V

    return-object p0
.end method

.method public setEventInfo(LcoeditCoreMessage/EventInfo;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->B(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/EventInfo;)V

    return-object p0
.end method

.method public setPolicyInfo(LcoeditCoreMessage/PolicyInfo$Builder;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/PolicyInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->C(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/PolicyInfo;)V

    return-object p0
.end method

.method public setPolicyInfo(LcoeditCoreMessage/PolicyInfo;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->C(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/PolicyInfo;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditCoreMessage/ResponseResult$Builder;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->D(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditCoreMessage/ResponseResult;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->D(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public setServerCmd(LcoeditCoreMessage/ServerCmd;)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->E(LcoeditCoreMessage/ServerMsg;LcoeditCoreMessage/ServerCmd;)V

    return-object p0
.end method

.method public setServerCmdValue(I)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->F(LcoeditCoreMessage/ServerMsg;I)V

    return-object p0
.end method

.method public setSessionValidTime(J)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/ServerMsg;->G(LcoeditCoreMessage/ServerMsg;J)V

    return-object p0
.end method

.method public setWorkspaceBlocked(Z)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1}, LcoeditCoreMessage/ServerMsg;->H(LcoeditCoreMessage/ServerMsg;Z)V

    return-object p0
.end method

.method public setWorkspaceVersion(J)LcoeditCoreMessage/ServerMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ServerMsg;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/ServerMsg;->I(LcoeditCoreMessage/ServerMsg;J)V

    return-object p0
.end method
