.class public final LcoeditCoreMessage/SubmitRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/SubmitRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreMessage/SubmitRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreMessage/SubmitRequest;",
        "LcoeditCoreMessage/SubmitRequest$Builder;",
        ">;",
        "LcoeditCoreMessage/SubmitRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/SubmitRequest;->n()LcoeditCoreMessage/SubmitRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreMessage/p;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/SubmitRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChannelId()LcoeditCoreMessage/SubmitRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0}, LcoeditCoreMessage/SubmitRequest;->a(LcoeditCoreMessage/SubmitRequest;)V

    return-object p0
.end method

.method public clearCheckpointCoeditopPair()LcoeditCoreMessage/SubmitRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0}, LcoeditCoreMessage/SubmitRequest;->b(LcoeditCoreMessage/SubmitRequest;)V

    return-object p0
.end method

.method public clearClientCmd()LcoeditCoreMessage/SubmitRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0}, LcoeditCoreMessage/SubmitRequest;->c(LcoeditCoreMessage/SubmitRequest;)V

    return-object p0
.end method

.method public clearIsValidate()LcoeditCoreMessage/SubmitRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0}, LcoeditCoreMessage/SubmitRequest;->d(LcoeditCoreMessage/SubmitRequest;)V

    return-object p0
.end method

.method public clearWorkspaceVersion()LcoeditCoreMessage/SubmitRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0}, LcoeditCoreMessage/SubmitRequest;->e(LcoeditCoreMessage/SubmitRequest;)V

    return-object p0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    invoke-virtual {v0}, LcoeditCoreMessage/SubmitRequest;->getChannelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    invoke-virtual {v0}, LcoeditCoreMessage/SubmitRequest;->getChannelIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCheckpointCoeditopPair()LcoeditCoreMessage/CheckPointCoeditOpPair;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    invoke-virtual {v0}, LcoeditCoreMessage/SubmitRequest;->getCheckpointCoeditopPair()LcoeditCoreMessage/CheckPointCoeditOpPair;

    move-result-object v0

    return-object v0
.end method

.method public getClientCmd()LcoeditCoreMessage/ClientCmd;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    invoke-virtual {v0}, LcoeditCoreMessage/SubmitRequest;->getClientCmd()LcoeditCoreMessage/ClientCmd;

    move-result-object v0

    return-object v0
.end method

.method public getClientCmdValue()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    invoke-virtual {v0}, LcoeditCoreMessage/SubmitRequest;->getClientCmdValue()I

    move-result v0

    return v0
.end method

.method public getIsValidate()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    invoke-virtual {v0}, LcoeditCoreMessage/SubmitRequest;->getIsValidate()Z

    move-result v0

    return v0
.end method

.method public getWorkspaceVersion()J
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    invoke-virtual {v0}, LcoeditCoreMessage/SubmitRequest;->getWorkspaceVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCheckpointCoeditopPair()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    invoke-virtual {v0}, LcoeditCoreMessage/SubmitRequest;->hasCheckpointCoeditopPair()Z

    move-result v0

    return v0
.end method

.method public mergeCheckpointCoeditopPair(LcoeditCoreMessage/CheckPointCoeditOpPair;)LcoeditCoreMessage/SubmitRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0, p1}, LcoeditCoreMessage/SubmitRequest;->f(LcoeditCoreMessage/SubmitRequest;LcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)LcoeditCoreMessage/SubmitRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0, p1}, LcoeditCoreMessage/SubmitRequest;->g(LcoeditCoreMessage/SubmitRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setChannelIdBytes(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/SubmitRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0, p1}, LcoeditCoreMessage/SubmitRequest;->h(LcoeditCoreMessage/SubmitRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCheckpointCoeditopPair(LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;)LcoeditCoreMessage/SubmitRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1}, LcoeditCoreMessage/SubmitRequest;->i(LcoeditCoreMessage/SubmitRequest;LcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public setCheckpointCoeditopPair(LcoeditCoreMessage/CheckPointCoeditOpPair;)LcoeditCoreMessage/SubmitRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0, p1}, LcoeditCoreMessage/SubmitRequest;->i(LcoeditCoreMessage/SubmitRequest;LcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public setClientCmd(LcoeditCoreMessage/ClientCmd;)LcoeditCoreMessage/SubmitRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0, p1}, LcoeditCoreMessage/SubmitRequest;->j(LcoeditCoreMessage/SubmitRequest;LcoeditCoreMessage/ClientCmd;)V

    return-object p0
.end method

.method public setClientCmdValue(I)LcoeditCoreMessage/SubmitRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0, p1}, LcoeditCoreMessage/SubmitRequest;->k(LcoeditCoreMessage/SubmitRequest;I)V

    return-object p0
.end method

.method public setIsValidate(Z)LcoeditCoreMessage/SubmitRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0, p1}, LcoeditCoreMessage/SubmitRequest;->l(LcoeditCoreMessage/SubmitRequest;Z)V

    return-object p0
.end method

.method public setWorkspaceVersion(J)LcoeditCoreMessage/SubmitRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/SubmitRequest;->m(LcoeditCoreMessage/SubmitRequest;J)V

    return-object p0
.end method
