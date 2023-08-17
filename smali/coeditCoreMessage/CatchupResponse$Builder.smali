.class public final LcoeditCoreMessage/CatchupResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/CatchupResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreMessage/CatchupResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreMessage/CatchupResponse;",
        "LcoeditCoreMessage/CatchupResponse$Builder;",
        ">;",
        "LcoeditCoreMessage/CatchupResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/CatchupResponse;->j()LcoeditCoreMessage/CatchupResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreMessage/c;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/CatchupResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCheckpointCoeditopPair(Ljava/lang/Iterable;)LcoeditCoreMessage/CatchupResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditCoreMessage/CheckPointCoeditOpPair;",
            ">;)",
            "LcoeditCoreMessage/CatchupResponse$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupResponse;

    invoke-static {v0, p1}, LcoeditCoreMessage/CatchupResponse;->a(LcoeditCoreMessage/CatchupResponse;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCheckpointCoeditopPair(ILcoeditCoreMessage/CheckPointCoeditOpPair$Builder;)LcoeditCoreMessage/CatchupResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupResponse;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/CatchupResponse;->b(LcoeditCoreMessage/CatchupResponse;ILcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public addCheckpointCoeditopPair(ILcoeditCoreMessage/CheckPointCoeditOpPair;)LcoeditCoreMessage/CatchupResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupResponse;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/CatchupResponse;->b(LcoeditCoreMessage/CatchupResponse;ILcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public addCheckpointCoeditopPair(LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;)LcoeditCoreMessage/CatchupResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1}, LcoeditCoreMessage/CatchupResponse;->c(LcoeditCoreMessage/CatchupResponse;LcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public addCheckpointCoeditopPair(LcoeditCoreMessage/CheckPointCoeditOpPair;)LcoeditCoreMessage/CatchupResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupResponse;

    invoke-static {v0, p1}, LcoeditCoreMessage/CatchupResponse;->c(LcoeditCoreMessage/CatchupResponse;LcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public clearCheckpointCoeditopPair()LcoeditCoreMessage/CatchupResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupResponse;

    invoke-static {v0}, LcoeditCoreMessage/CatchupResponse;->d(LcoeditCoreMessage/CatchupResponse;)V

    return-object p0
.end method

.method public clearResponseResult()LcoeditCoreMessage/CatchupResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupResponse;

    invoke-static {v0}, LcoeditCoreMessage/CatchupResponse;->e(LcoeditCoreMessage/CatchupResponse;)V

    return-object p0
.end method

.method public getCheckpointCoeditopPair(I)LcoeditCoreMessage/CheckPointCoeditOpPair;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupResponse;

    invoke-virtual {v0, p1}, LcoeditCoreMessage/CatchupResponse;->getCheckpointCoeditopPair(I)LcoeditCoreMessage/CheckPointCoeditOpPair;

    move-result-object p1

    return-object p1
.end method

.method public getCheckpointCoeditopPairCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupResponse;

    invoke-virtual {v0}, LcoeditCoreMessage/CatchupResponse;->getCheckpointCoeditopPairCount()I

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

    check-cast v0, LcoeditCoreMessage/CatchupResponse;

    invoke-virtual {v0}, LcoeditCoreMessage/CatchupResponse;->getCheckpointCoeditopPairList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResponseResult()LcoeditCoreMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupResponse;

    invoke-virtual {v0}, LcoeditCoreMessage/CatchupResponse;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupResponse;

    invoke-virtual {v0}, LcoeditCoreMessage/CatchupResponse;->hasResponseResult()Z

    move-result v0

    return v0
.end method

.method public mergeResponseResult(LcoeditCoreMessage/ResponseResult;)LcoeditCoreMessage/CatchupResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupResponse;

    invoke-static {v0, p1}, LcoeditCoreMessage/CatchupResponse;->f(LcoeditCoreMessage/CatchupResponse;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public removeCheckpointCoeditopPair(I)LcoeditCoreMessage/CatchupResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupResponse;

    invoke-static {v0, p1}, LcoeditCoreMessage/CatchupResponse;->g(LcoeditCoreMessage/CatchupResponse;I)V

    return-object p0
.end method

.method public setCheckpointCoeditopPair(ILcoeditCoreMessage/CheckPointCoeditOpPair$Builder;)LcoeditCoreMessage/CatchupResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupResponse;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/CatchupResponse;->h(LcoeditCoreMessage/CatchupResponse;ILcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public setCheckpointCoeditopPair(ILcoeditCoreMessage/CheckPointCoeditOpPair;)LcoeditCoreMessage/CatchupResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupResponse;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/CatchupResponse;->h(LcoeditCoreMessage/CatchupResponse;ILcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditCoreMessage/ResponseResult$Builder;)LcoeditCoreMessage/CatchupResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditCoreMessage/CatchupResponse;->i(LcoeditCoreMessage/CatchupResponse;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditCoreMessage/ResponseResult;)LcoeditCoreMessage/CatchupResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CatchupResponse;

    invoke-static {v0, p1}, LcoeditCoreMessage/CatchupResponse;->i(LcoeditCoreMessage/CatchupResponse;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method
