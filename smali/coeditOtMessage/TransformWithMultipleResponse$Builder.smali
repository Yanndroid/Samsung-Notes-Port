.class public final LcoeditOtMessage/TransformWithMultipleResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditOtMessage/TransformWithMultipleResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOtMessage/TransformWithMultipleResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditOtMessage/TransformWithMultipleResponse;",
        "LcoeditOtMessage/TransformWithMultipleResponse$Builder;",
        ">;",
        "LcoeditOtMessage/TransformWithMultipleResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditOtMessage/TransformWithMultipleResponse;->j()LcoeditOtMessage/TransformWithMultipleResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditOtMessage/i;)V
    .locals 0

    invoke-direct {p0}, LcoeditOtMessage/TransformWithMultipleResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllSecond(Ljava/lang/Iterable;)LcoeditOtMessage/TransformWithMultipleResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditOtMessage/IdxCedOpsPair;",
            ">;)",
            "LcoeditOtMessage/TransformWithMultipleResponse$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformWithMultipleResponse;->a(LcoeditOtMessage/TransformWithMultipleResponse;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addSecond(ILcoeditOtMessage/IdxCedOpsPair$Builder;)LcoeditOtMessage/TransformWithMultipleResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1, p2}, LcoeditOtMessage/TransformWithMultipleResponse;->b(LcoeditOtMessage/TransformWithMultipleResponse;ILcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public addSecond(ILcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/TransformWithMultipleResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {v0, p1, p2}, LcoeditOtMessage/TransformWithMultipleResponse;->b(LcoeditOtMessage/TransformWithMultipleResponse;ILcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public addSecond(LcoeditOtMessage/IdxCedOpsPair$Builder;)LcoeditOtMessage/TransformWithMultipleResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformWithMultipleResponse;->c(LcoeditOtMessage/TransformWithMultipleResponse;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public addSecond(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/TransformWithMultipleResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformWithMultipleResponse;->c(LcoeditOtMessage/TransformWithMultipleResponse;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public clearFirst()LcoeditOtMessage/TransformWithMultipleResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {v0}, LcoeditOtMessage/TransformWithMultipleResponse;->d(LcoeditOtMessage/TransformWithMultipleResponse;)V

    return-object p0
.end method

.method public clearSecond()LcoeditOtMessage/TransformWithMultipleResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {v0}, LcoeditOtMessage/TransformWithMultipleResponse;->e(LcoeditOtMessage/TransformWithMultipleResponse;)V

    return-object p0
.end method

.method public getFirst()LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-virtual {v0}, LcoeditOtMessage/TransformWithMultipleResponse;->getFirst()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v0

    return-object v0
.end method

.method public getSecond(I)LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-virtual {v0, p1}, LcoeditOtMessage/TransformWithMultipleResponse;->getSecond(I)LcoeditOtMessage/IdxCedOpsPair;

    move-result-object p1

    return-object p1
.end method

.method public getSecondCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-virtual {v0}, LcoeditOtMessage/TransformWithMultipleResponse;->getSecondCount()I

    move-result v0

    return v0
.end method

.method public getSecondList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditOtMessage/IdxCedOpsPair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-virtual {v0}, LcoeditOtMessage/TransformWithMultipleResponse;->getSecondList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasFirst()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-virtual {v0}, LcoeditOtMessage/TransformWithMultipleResponse;->hasFirst()Z

    move-result v0

    return v0
.end method

.method public mergeFirst(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/TransformWithMultipleResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformWithMultipleResponse;->f(LcoeditOtMessage/TransformWithMultipleResponse;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public removeSecond(I)LcoeditOtMessage/TransformWithMultipleResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformWithMultipleResponse;->g(LcoeditOtMessage/TransformWithMultipleResponse;I)V

    return-object p0
.end method

.method public setFirst(LcoeditOtMessage/IdxCedOpsPair$Builder;)LcoeditOtMessage/TransformWithMultipleResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformWithMultipleResponse;->h(LcoeditOtMessage/TransformWithMultipleResponse;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public setFirst(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/TransformWithMultipleResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformWithMultipleResponse;->h(LcoeditOtMessage/TransformWithMultipleResponse;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public setSecond(ILcoeditOtMessage/IdxCedOpsPair$Builder;)LcoeditOtMessage/TransformWithMultipleResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1, p2}, LcoeditOtMessage/TransformWithMultipleResponse;->i(LcoeditOtMessage/TransformWithMultipleResponse;ILcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public setSecond(ILcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/TransformWithMultipleResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {v0, p1, p2}, LcoeditOtMessage/TransformWithMultipleResponse;->i(LcoeditOtMessage/TransformWithMultipleResponse;ILcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method
