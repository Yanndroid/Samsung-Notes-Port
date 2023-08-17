.class public final LcoeditCoreMessage/CatchupRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/CatchupRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreMessage/CatchupRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreMessage/CatchupRequest;",
        "LcoeditCoreMessage/CatchupRequest$Builder;",
        ">;",
        "LcoeditCoreMessage/CatchupRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/CatchupRequest;->j()LcoeditCoreMessage/CatchupRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreMessage/b;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/CatchupRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCatchupType()LcoeditCoreMessage/CatchupRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupRequest;

    invoke-static {v0}, LcoeditCoreMessage/CatchupRequest;->a(LcoeditCoreMessage/CatchupRequest;)V

    return-object p0
.end method

.method public clearEndCheckpoint()LcoeditCoreMessage/CatchupRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupRequest;

    invoke-static {v0}, LcoeditCoreMessage/CatchupRequest;->b(LcoeditCoreMessage/CatchupRequest;)V

    return-object p0
.end method

.method public clearStartCheckpoint()LcoeditCoreMessage/CatchupRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupRequest;

    invoke-static {v0}, LcoeditCoreMessage/CatchupRequest;->c(LcoeditCoreMessage/CatchupRequest;)V

    return-object p0
.end method

.method public clearWorkspaceVersion()LcoeditCoreMessage/CatchupRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupRequest;

    invoke-static {v0}, LcoeditCoreMessage/CatchupRequest;->d(LcoeditCoreMessage/CatchupRequest;)V

    return-object p0
.end method

.method public getCatchupType()LcoeditCoreMessage/CatchupType;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupRequest;

    invoke-virtual {v0}, LcoeditCoreMessage/CatchupRequest;->getCatchupType()LcoeditCoreMessage/CatchupType;

    move-result-object v0

    return-object v0
.end method

.method public getCatchupTypeValue()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupRequest;

    invoke-virtual {v0}, LcoeditCoreMessage/CatchupRequest;->getCatchupTypeValue()I

    move-result v0

    return v0
.end method

.method public getEndCheckpoint()J
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupRequest;

    invoke-virtual {v0}, LcoeditCoreMessage/CatchupRequest;->getEndCheckpoint()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartCheckpoint()J
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupRequest;

    invoke-virtual {v0}, LcoeditCoreMessage/CatchupRequest;->getStartCheckpoint()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWorkspaceVersion()J
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupRequest;

    invoke-virtual {v0}, LcoeditCoreMessage/CatchupRequest;->getWorkspaceVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public setCatchupType(LcoeditCoreMessage/CatchupType;)LcoeditCoreMessage/CatchupRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupRequest;

    invoke-static {v0, p1}, LcoeditCoreMessage/CatchupRequest;->e(LcoeditCoreMessage/CatchupRequest;LcoeditCoreMessage/CatchupType;)V

    return-object p0
.end method

.method public setCatchupTypeValue(I)LcoeditCoreMessage/CatchupRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupRequest;

    invoke-static {v0, p1}, LcoeditCoreMessage/CatchupRequest;->f(LcoeditCoreMessage/CatchupRequest;I)V

    return-object p0
.end method

.method public setEndCheckpoint(J)LcoeditCoreMessage/CatchupRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupRequest;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/CatchupRequest;->g(LcoeditCoreMessage/CatchupRequest;J)V

    return-object p0
.end method

.method public setStartCheckpoint(J)LcoeditCoreMessage/CatchupRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupRequest;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/CatchupRequest;->h(LcoeditCoreMessage/CatchupRequest;J)V

    return-object p0
.end method

.method public setWorkspaceVersion(J)LcoeditCoreMessage/CatchupRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupRequest;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/CatchupRequest;->i(LcoeditCoreMessage/CatchupRequest;J)V

    return-object p0
.end method
