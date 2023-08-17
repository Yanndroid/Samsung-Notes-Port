.class public final LcoeditOtMessage/TransformWithMultipleRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditOtMessage/TransformWithMultipleRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOtMessage/TransformWithMultipleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditOtMessage/TransformWithMultipleRequest;",
        "LcoeditOtMessage/TransformWithMultipleRequest$Builder;",
        ">;",
        "LcoeditOtMessage/TransformWithMultipleRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditOtMessage/TransformWithMultipleRequest;->j()LcoeditOtMessage/TransformWithMultipleRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditOtMessage/h;)V
    .locals 0

    invoke-direct {p0}, LcoeditOtMessage/TransformWithMultipleRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllSecond(Ljava/lang/Iterable;)LcoeditOtMessage/TransformWithMultipleRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditOtMessage/IdxCedOpsPair;",
            ">;)",
            "LcoeditOtMessage/TransformWithMultipleRequest$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleRequest;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformWithMultipleRequest;->a(LcoeditOtMessage/TransformWithMultipleRequest;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addSecond(ILcoeditOtMessage/IdxCedOpsPair$Builder;)LcoeditOtMessage/TransformWithMultipleRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleRequest;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1, p2}, LcoeditOtMessage/TransformWithMultipleRequest;->b(LcoeditOtMessage/TransformWithMultipleRequest;ILcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public addSecond(ILcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/TransformWithMultipleRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleRequest;

    invoke-static {v0, p1, p2}, LcoeditOtMessage/TransformWithMultipleRequest;->b(LcoeditOtMessage/TransformWithMultipleRequest;ILcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public addSecond(LcoeditOtMessage/IdxCedOpsPair$Builder;)LcoeditOtMessage/TransformWithMultipleRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformWithMultipleRequest;->c(LcoeditOtMessage/TransformWithMultipleRequest;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public addSecond(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/TransformWithMultipleRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleRequest;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformWithMultipleRequest;->c(LcoeditOtMessage/TransformWithMultipleRequest;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public clearFirst()LcoeditOtMessage/TransformWithMultipleRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleRequest;

    invoke-static {v0}, LcoeditOtMessage/TransformWithMultipleRequest;->d(LcoeditOtMessage/TransformWithMultipleRequest;)V

    return-object p0
.end method

.method public clearSecond()LcoeditOtMessage/TransformWithMultipleRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleRequest;

    invoke-static {v0}, LcoeditOtMessage/TransformWithMultipleRequest;->e(LcoeditOtMessage/TransformWithMultipleRequest;)V

    return-object p0
.end method

.method public getFirst()LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleRequest;

    invoke-virtual {v0}, LcoeditOtMessage/TransformWithMultipleRequest;->getFirst()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v0

    return-object v0
.end method

.method public getSecond(I)LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleRequest;

    invoke-virtual {v0, p1}, LcoeditOtMessage/TransformWithMultipleRequest;->getSecond(I)LcoeditOtMessage/IdxCedOpsPair;

    move-result-object p1

    return-object p1
.end method

.method public getSecondCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleRequest;

    invoke-virtual {v0}, LcoeditOtMessage/TransformWithMultipleRequest;->getSecondCount()I

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

    check-cast v0, LcoeditOtMessage/TransformWithMultipleRequest;

    invoke-virtual {v0}, LcoeditOtMessage/TransformWithMultipleRequest;->getSecondList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasFirst()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleRequest;

    invoke-virtual {v0}, LcoeditOtMessage/TransformWithMultipleRequest;->hasFirst()Z

    move-result v0

    return v0
.end method

.method public mergeFirst(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/TransformWithMultipleRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleRequest;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformWithMultipleRequest;->f(LcoeditOtMessage/TransformWithMultipleRequest;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public removeSecond(I)LcoeditOtMessage/TransformWithMultipleRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleRequest;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformWithMultipleRequest;->g(LcoeditOtMessage/TransformWithMultipleRequest;I)V

    return-object p0
.end method

.method public setFirst(LcoeditOtMessage/IdxCedOpsPair$Builder;)LcoeditOtMessage/TransformWithMultipleRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformWithMultipleRequest;->h(LcoeditOtMessage/TransformWithMultipleRequest;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public setFirst(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/TransformWithMultipleRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleRequest;

    invoke-static {v0, p1}, LcoeditOtMessage/TransformWithMultipleRequest;->h(LcoeditOtMessage/TransformWithMultipleRequest;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public setSecond(ILcoeditOtMessage/IdxCedOpsPair$Builder;)LcoeditOtMessage/TransformWithMultipleRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleRequest;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1, p2}, LcoeditOtMessage/TransformWithMultipleRequest;->i(LcoeditOtMessage/TransformWithMultipleRequest;ILcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public setSecond(ILcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/TransformWithMultipleRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/TransformWithMultipleRequest;

    invoke-static {v0, p1, p2}, LcoeditOtMessage/TransformWithMultipleRequest;->i(LcoeditOtMessage/TransformWithMultipleRequest;ILcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method
