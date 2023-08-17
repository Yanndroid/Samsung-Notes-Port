.class public final LcoeditCoreInternalMessage/WorkspaceRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreInternalMessage/WorkspaceRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreInternalMessage/WorkspaceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreInternalMessage/WorkspaceRequest;",
        "LcoeditCoreInternalMessage/WorkspaceRequest$Builder;",
        ">;",
        "LcoeditCoreInternalMessage/WorkspaceRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreInternalMessage/WorkspaceRequest;->j()LcoeditCoreInternalMessage/WorkspaceRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreInternalMessage/g;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreInternalMessage/WorkspaceRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCid()LcoeditCoreInternalMessage/WorkspaceRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {v0}, LcoeditCoreInternalMessage/WorkspaceRequest;->a(LcoeditCoreInternalMessage/WorkspaceRequest;)V

    return-object p0
.end method

.method public clearOwnerId()LcoeditCoreInternalMessage/WorkspaceRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {v0}, LcoeditCoreInternalMessage/WorkspaceRequest;->b(LcoeditCoreInternalMessage/WorkspaceRequest;)V

    return-object p0
.end method

.method public clearUuid()LcoeditCoreInternalMessage/WorkspaceRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {v0}, LcoeditCoreInternalMessage/WorkspaceRequest;->c(LcoeditCoreInternalMessage/WorkspaceRequest;)V

    return-object p0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/WorkspaceRequest;->getCid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/WorkspaceRequest;->getCidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/WorkspaceRequest;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/WorkspaceRequest;->getOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/WorkspaceRequest;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUuidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/WorkspaceRequest;->getUuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setCid(Ljava/lang/String;)LcoeditCoreInternalMessage/WorkspaceRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/WorkspaceRequest;->d(LcoeditCoreInternalMessage/WorkspaceRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCidBytes(Lcom/google/protobuf/ByteString;)LcoeditCoreInternalMessage/WorkspaceRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/WorkspaceRequest;->e(LcoeditCoreInternalMessage/WorkspaceRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOwnerId(Ljava/lang/String;)LcoeditCoreInternalMessage/WorkspaceRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/WorkspaceRequest;->f(LcoeditCoreInternalMessage/WorkspaceRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOwnerIdBytes(Lcom/google/protobuf/ByteString;)LcoeditCoreInternalMessage/WorkspaceRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/WorkspaceRequest;->g(LcoeditCoreInternalMessage/WorkspaceRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)LcoeditCoreInternalMessage/WorkspaceRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/WorkspaceRequest;->h(LcoeditCoreInternalMessage/WorkspaceRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUuidBytes(Lcom/google/protobuf/ByteString;)LcoeditCoreInternalMessage/WorkspaceRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/WorkspaceRequest;->i(LcoeditCoreInternalMessage/WorkspaceRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
