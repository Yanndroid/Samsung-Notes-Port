.class public final LcoeditCoreInternalMessage/WorkspaceResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreInternalMessage/WorkspaceResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreInternalMessage/WorkspaceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreInternalMessage/WorkspaceResponse;",
        "LcoeditCoreInternalMessage/WorkspaceResponse$Builder;",
        ">;",
        "LcoeditCoreInternalMessage/WorkspaceResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreInternalMessage/WorkspaceResponse;->g()LcoeditCoreInternalMessage/WorkspaceResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreInternalMessage/h;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreInternalMessage/WorkspaceResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearResponseResult()LcoeditCoreInternalMessage/WorkspaceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceResponse;

    invoke-static {v0}, LcoeditCoreInternalMessage/WorkspaceResponse;->a(LcoeditCoreInternalMessage/WorkspaceResponse;)V

    return-object p0
.end method

.method public clearWorkspaceId()LcoeditCoreInternalMessage/WorkspaceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceResponse;

    invoke-static {v0}, LcoeditCoreInternalMessage/WorkspaceResponse;->b(LcoeditCoreInternalMessage/WorkspaceResponse;)V

    return-object p0
.end method

.method public getResponseResult()LcoeditCoreMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceResponse;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/WorkspaceResponse;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public getWorkspaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceResponse;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/WorkspaceResponse;->getWorkspaceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWorkspaceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceResponse;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/WorkspaceResponse;->getWorkspaceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceResponse;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/WorkspaceResponse;->hasResponseResult()Z

    move-result v0

    return v0
.end method

.method public mergeResponseResult(LcoeditCoreMessage/ResponseResult;)LcoeditCoreInternalMessage/WorkspaceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceResponse;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/WorkspaceResponse;->c(LcoeditCoreInternalMessage/WorkspaceResponse;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditCoreMessage/ResponseResult$Builder;)LcoeditCoreInternalMessage/WorkspaceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/WorkspaceResponse;->d(LcoeditCoreInternalMessage/WorkspaceResponse;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditCoreMessage/ResponseResult;)LcoeditCoreInternalMessage/WorkspaceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceResponse;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/WorkspaceResponse;->d(LcoeditCoreInternalMessage/WorkspaceResponse;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public setWorkspaceId(Ljava/lang/String;)LcoeditCoreInternalMessage/WorkspaceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceResponse;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/WorkspaceResponse;->e(LcoeditCoreInternalMessage/WorkspaceResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setWorkspaceIdBytes(Lcom/google/protobuf/ByteString;)LcoeditCoreInternalMessage/WorkspaceResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceResponse;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/WorkspaceResponse;->f(LcoeditCoreInternalMessage/WorkspaceResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
