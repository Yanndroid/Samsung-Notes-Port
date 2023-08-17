.class public final LcoeditCoreMessage/DeviceInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/DeviceInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreMessage/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreMessage/DeviceInfo;",
        "LcoeditCoreMessage/DeviceInfo$Builder;",
        ">;",
        "LcoeditCoreMessage/DeviceInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/DeviceInfo;->m()LcoeditCoreMessage/DeviceInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreMessage/f;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/DeviceInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDeviceInfoChangeType()LcoeditCoreMessage/DeviceInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0}, LcoeditCoreMessage/DeviceInfo;->a(LcoeditCoreMessage/DeviceInfo;)V

    return-object p0
.end method

.method public clearDvcId()LcoeditCoreMessage/DeviceInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0}, LcoeditCoreMessage/DeviceInfo;->b(LcoeditCoreMessage/DeviceInfo;)V

    return-object p0
.end method

.method public clearPermissionType()LcoeditCoreMessage/DeviceInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0}, LcoeditCoreMessage/DeviceInfo;->c(LcoeditCoreMessage/DeviceInfo;)V

    return-object p0
.end method

.method public clearUid()LcoeditCoreMessage/DeviceInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0}, LcoeditCoreMessage/DeviceInfo;->d(LcoeditCoreMessage/DeviceInfo;)V

    return-object p0
.end method

.method public getDeviceInfoChangeType()LcoeditCoreMessage/DeviceInfoChangeType;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/DeviceInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/DeviceInfo;->getDeviceInfoChangeType()LcoeditCoreMessage/DeviceInfoChangeType;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfoChangeTypeValue()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/DeviceInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/DeviceInfo;->getDeviceInfoChangeTypeValue()I

    move-result v0

    return v0
.end method

.method public getDvcId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/DeviceInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/DeviceInfo;->getDvcId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDvcIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/DeviceInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/DeviceInfo;->getDvcIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionType()LcoeditCoreMessage/PermissionType;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/DeviceInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/DeviceInfo;->getPermissionType()LcoeditCoreMessage/PermissionType;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionTypeValue()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/DeviceInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/DeviceInfo;->getPermissionTypeValue()I

    move-result v0

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/DeviceInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/DeviceInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/DeviceInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/DeviceInfo;->getUidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceInfoChangeType(LcoeditCoreMessage/DeviceInfoChangeType;)LcoeditCoreMessage/DeviceInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/DeviceInfo;->e(LcoeditCoreMessage/DeviceInfo;LcoeditCoreMessage/DeviceInfoChangeType;)V

    return-object p0
.end method

.method public setDeviceInfoChangeTypeValue(I)LcoeditCoreMessage/DeviceInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/DeviceInfo;->f(LcoeditCoreMessage/DeviceInfo;I)V

    return-object p0
.end method

.method public setDvcId(Ljava/lang/String;)LcoeditCoreMessage/DeviceInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/DeviceInfo;->g(LcoeditCoreMessage/DeviceInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDvcIdBytes(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/DeviceInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/DeviceInfo;->h(LcoeditCoreMessage/DeviceInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPermissionType(LcoeditCoreMessage/PermissionType;)LcoeditCoreMessage/DeviceInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/DeviceInfo;->i(LcoeditCoreMessage/DeviceInfo;LcoeditCoreMessage/PermissionType;)V

    return-object p0
.end method

.method public setPermissionTypeValue(I)LcoeditCoreMessage/DeviceInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/DeviceInfo;->j(LcoeditCoreMessage/DeviceInfo;I)V

    return-object p0
.end method

.method public setUid(Ljava/lang/String;)LcoeditCoreMessage/DeviceInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/DeviceInfo;->k(LcoeditCoreMessage/DeviceInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUidBytes(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/DeviceInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/DeviceInfo;->l(LcoeditCoreMessage/DeviceInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
