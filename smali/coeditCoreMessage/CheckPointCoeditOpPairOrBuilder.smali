.class public interface abstract LcoeditCoreMessage/CheckPointCoeditOpPairOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getCheckpoint()J
.end method

.method public abstract getCoeditOperation(I)LcoeditOperation/CoeditOperation;
.end method

.method public abstract getCoeditOperationCount()I
.end method

.method public abstract getCoeditOperationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceInfo()LcoeditCoreMessage/DeviceInfo;
.end method

.method public abstract getExtraData()Ljava/lang/String;
.end method

.method public abstract getExtraDataBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getObjectInfo(I)LcoeditCoreMessage/ObjectInfo;
.end method

.method public abstract getObjectInfoCount()I
.end method

.method public abstract getObjectInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditCoreMessage/ObjectInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasDeviceInfo()Z
.end method
