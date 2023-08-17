.class public final LcoeditCoreInternalMessage/GetChangesResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreInternalMessage/GetChangesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreInternalMessage/GetChangesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreInternalMessage/GetChangesResponse;",
        "LcoeditCoreInternalMessage/GetChangesResponse$Builder;",
        ">;",
        "LcoeditCoreInternalMessage/GetChangesResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreInternalMessage/GetChangesResponse;->j()LcoeditCoreInternalMessage/GetChangesResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreInternalMessage/f;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreInternalMessage/GetChangesResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCheckpointCoeditopPair(Ljava/lang/Iterable;)LcoeditCoreInternalMessage/GetChangesResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditCoreMessage/CheckPointCoeditOpPair;",
            ">;)",
            "LcoeditCoreInternalMessage/GetChangesResponse$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/GetChangesResponse;->a(LcoeditCoreInternalMessage/GetChangesResponse;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCheckpointCoeditopPair(ILcoeditCoreMessage/CheckPointCoeditOpPair$Builder;)LcoeditCoreInternalMessage/GetChangesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1, p2}, LcoeditCoreInternalMessage/GetChangesResponse;->b(LcoeditCoreInternalMessage/GetChangesResponse;ILcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public addCheckpointCoeditopPair(ILcoeditCoreMessage/CheckPointCoeditOpPair;)LcoeditCoreInternalMessage/GetChangesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {v0, p1, p2}, LcoeditCoreInternalMessage/GetChangesResponse;->b(LcoeditCoreInternalMessage/GetChangesResponse;ILcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public addCheckpointCoeditopPair(LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;)LcoeditCoreInternalMessage/GetChangesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/GetChangesResponse;->c(LcoeditCoreInternalMessage/GetChangesResponse;LcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public addCheckpointCoeditopPair(LcoeditCoreMessage/CheckPointCoeditOpPair;)LcoeditCoreInternalMessage/GetChangesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/GetChangesResponse;->c(LcoeditCoreInternalMessage/GetChangesResponse;LcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public clearCheckpointCoeditopPair()LcoeditCoreInternalMessage/GetChangesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {v0}, LcoeditCoreInternalMessage/GetChangesResponse;->d(LcoeditCoreInternalMessage/GetChangesResponse;)V

    return-object p0
.end method

.method public clearResponseResult()LcoeditCoreInternalMessage/GetChangesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {v0}, LcoeditCoreInternalMessage/GetChangesResponse;->e(LcoeditCoreInternalMessage/GetChangesResponse;)V

    return-object p0
.end method

.method public getCheckpointCoeditopPair(I)LcoeditCoreMessage/CheckPointCoeditOpPair;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-virtual {v0, p1}, LcoeditCoreInternalMessage/GetChangesResponse;->getCheckpointCoeditopPair(I)LcoeditCoreMessage/CheckPointCoeditOpPair;

    move-result-object p1

    return-object p1
.end method

.method public getCheckpointCoeditopPairCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/GetChangesResponse;->getCheckpointCoeditopPairCount()I

    move-result v0

    return v0
.end method

.method public getCheckpointCoeditopPairList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditCoreMessage/CheckPointCoeditOpPair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/GetChangesResponse;->getCheckpointCoeditopPairList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResponseResult()LcoeditCoreMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/GetChangesResponse;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/GetChangesResponse;->hasResponseResult()Z

    move-result v0

    return v0
.end method

.method public mergeResponseResult(LcoeditCoreMessage/ResponseResult;)LcoeditCoreInternalMessage/GetChangesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/GetChangesResponse;->f(LcoeditCoreInternalMessage/GetChangesResponse;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public removeCheckpointCoeditopPair(I)LcoeditCoreInternalMessage/GetChangesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/GetChangesResponse;->g(LcoeditCoreInternalMessage/GetChangesResponse;I)V

    return-object p0
.end method

.method public setCheckpointCoeditopPair(ILcoeditCoreMessage/CheckPointCoeditOpPair$Builder;)LcoeditCoreInternalMessage/GetChangesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1, p2}, LcoeditCoreInternalMessage/GetChangesResponse;->h(LcoeditCoreInternalMessage/GetChangesResponse;ILcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public setCheckpointCoeditopPair(ILcoeditCoreMessage/CheckPointCoeditOpPair;)LcoeditCoreInternalMessage/GetChangesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {v0, p1, p2}, LcoeditCoreInternalMessage/GetChangesResponse;->h(LcoeditCoreInternalMessage/GetChangesResponse;ILcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditCoreMessage/ResponseResult$Builder;)LcoeditCoreInternalMessage/GetChangesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/GetChangesResponse;->i(LcoeditCoreInternalMessage/GetChangesResponse;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditCoreMessage/ResponseResult;)LcoeditCoreInternalMessage/GetChangesResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesResponse;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/GetChangesResponse;->i(LcoeditCoreInternalMessage/GetChangesResponse;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method
