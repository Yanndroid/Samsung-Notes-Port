.class public interface abstract LcoeditCoreMessage/ServerMsgOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getChannelId()Ljava/lang/String;
.end method

.method public abstract getChannelIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCheckpointCoeditopPair()LcoeditCoreMessage/CheckPointCoeditOpPair;
.end method

.method public abstract getConnectedDeviceCnt()J
.end method

.method public abstract getDeviceInfo(I)LcoeditCoreMessage/DeviceInfo;
.end method

.method public abstract getDeviceInfoCount()I
.end method

.method public abstract getDeviceInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditCoreMessage/DeviceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDvcId()Ljava/lang/String;
.end method

.method public abstract getDvcIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getEventInfo()LcoeditCoreMessage/EventInfo;
.end method

.method public abstract getPolicyInfo()LcoeditCoreMessage/PolicyInfo;
.end method

.method public abstract getResponseResult()LcoeditCoreMessage/ResponseResult;
.end method

.method public abstract getServerCmd()LcoeditCoreMessage/ServerCmd;
.end method

.method public abstract getServerCmdValue()I
.end method

.method public abstract getSessionValidTime()J
.end method

.method public abstract getWorkspaceBlocked()Z
.end method

.method public abstract getWorkspaceVersion()J
.end method

.method public abstract hasCheckpointCoeditopPair()Z
.end method

.method public abstract hasEventInfo()Z
.end method

.method public abstract hasPolicyInfo()Z
.end method

.method public abstract hasResponseResult()Z
.end method
