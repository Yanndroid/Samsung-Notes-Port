.class public final LcoeditCoreMessage/ResetWorkspaceResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/ResetWorkspaceResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreMessage/ResetWorkspaceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreMessage/ResetWorkspaceResponse;",
        "LcoeditCoreMessage/ResetWorkspaceResponse$Builder;",
        ">;",
        "LcoeditCoreMessage/ResetWorkspaceResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/ResetWorkspaceResponse;->m()LcoeditCoreMessage/ResetWorkspaceResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreMessage/m;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ResetWorkspaceResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIsBlocked()LcoeditCoreMessage/ResetWorkspaceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0}, LcoeditCoreMessage/ResetWorkspaceResponse;->a(LcoeditCoreMessage/ResetWorkspaceResponse;)V

    return-object p0
.end method

.method public clearLatestSnapshotCheckpoint()LcoeditCoreMessage/ResetWorkspaceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0}, LcoeditCoreMessage/ResetWorkspaceResponse;->b(LcoeditCoreMessage/ResetWorkspaceResponse;)V

    return-object p0
.end method

.method public clearResponseResult()LcoeditCoreMessage/ResetWorkspaceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0}, LcoeditCoreMessage/ResetWorkspaceResponse;->c(LcoeditCoreMessage/ResetWorkspaceResponse;)V

    return-object p0
.end method

.method public clearWorkspaceId()LcoeditCoreMessage/ResetWorkspaceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0}, LcoeditCoreMessage/ResetWorkspaceResponse;->d(LcoeditCoreMessage/ResetWorkspaceResponse;)V

    return-object p0
.end method

.method public clearWorkspaceVersion()LcoeditCoreMessage/ResetWorkspaceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0}, LcoeditCoreMessage/ResetWorkspaceResponse;->e(LcoeditCoreMessage/ResetWorkspaceResponse;)V

    return-object p0
.end method

.method public getIsBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-virtual {v0}, LcoeditCoreMessage/ResetWorkspaceResponse;->getIsBlocked()Z

    move-result v0

    return v0
.end method

.method public getLatestSnapshotCheckpoint()J
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-virtual {v0}, LcoeditCoreMessage/ResetWorkspaceResponse;->getLatestSnapshotCheckpoint()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResponseResult()LcoeditCoreMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-virtual {v0}, LcoeditCoreMessage/ResetWorkspaceResponse;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public getWorkspaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-virtual {v0}, LcoeditCoreMessage/ResetWorkspaceResponse;->getWorkspaceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWorkspaceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-virtual {v0}, LcoeditCoreMessage/ResetWorkspaceResponse;->getWorkspaceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getWorkspaceVersion()J
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-virtual {v0}, LcoeditCoreMessage/ResetWorkspaceResponse;->getWorkspaceVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-virtual {v0}, LcoeditCoreMessage/ResetWorkspaceResponse;->hasResponseResult()Z

    move-result v0

    return v0
.end method

.method public mergeResponseResult(LcoeditCoreMessage/ResponseResult;)LcoeditCoreMessage/ResetWorkspaceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0, p1}, LcoeditCoreMessage/ResetWorkspaceResponse;->f(LcoeditCoreMessage/ResetWorkspaceResponse;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public setIsBlocked(Z)LcoeditCoreMessage/ResetWorkspaceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0, p1}, LcoeditCoreMessage/ResetWorkspaceResponse;->g(LcoeditCoreMessage/ResetWorkspaceResponse;Z)V

    return-object p0
.end method

.method public setLatestSnapshotCheckpoint(J)LcoeditCoreMessage/ResetWorkspaceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/ResetWorkspaceResponse;->h(LcoeditCoreMessage/ResetWorkspaceResponse;J)V

    return-object p0
.end method

.method public setResponseResult(LcoeditCoreMessage/ResponseResult$Builder;)LcoeditCoreMessage/ResetWorkspaceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditCoreMessage/ResetWorkspaceResponse;->i(LcoeditCoreMessage/ResetWorkspaceResponse;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditCoreMessage/ResponseResult;)LcoeditCoreMessage/ResetWorkspaceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0, p1}, LcoeditCoreMessage/ResetWorkspaceResponse;->i(LcoeditCoreMessage/ResetWorkspaceResponse;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public setWorkspaceId(Ljava/lang/String;)LcoeditCoreMessage/ResetWorkspaceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0, p1}, LcoeditCoreMessage/ResetWorkspaceResponse;->j(LcoeditCoreMessage/ResetWorkspaceResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setWorkspaceIdBytes(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/ResetWorkspaceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0, p1}, LcoeditCoreMessage/ResetWorkspaceResponse;->k(LcoeditCoreMessage/ResetWorkspaceResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setWorkspaceVersion(J)LcoeditCoreMessage/ResetWorkspaceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/ResetWorkspaceResponse;->l(LcoeditCoreMessage/ResetWorkspaceResponse;J)V

    return-object p0
.end method
