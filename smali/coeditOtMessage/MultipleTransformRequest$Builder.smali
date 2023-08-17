.class public final LcoeditOtMessage/MultipleTransformRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditOtMessage/MultipleTransformRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOtMessage/MultipleTransformRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditOtMessage/MultipleTransformRequest;",
        "LcoeditOtMessage/MultipleTransformRequest$Builder;",
        ">;",
        "LcoeditOtMessage/MultipleTransformRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditOtMessage/MultipleTransformRequest;->j()LcoeditOtMessage/MultipleTransformRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditOtMessage/d;)V
    .locals 0

    invoke-direct {p0}, LcoeditOtMessage/MultipleTransformRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllFirst(Ljava/lang/Iterable;)LcoeditOtMessage/MultipleTransformRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditOtMessage/IdxCedOpsPair;",
            ">;)",
            "LcoeditOtMessage/MultipleTransformRequest$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {v0, p1}, LcoeditOtMessage/MultipleTransformRequest;->a(LcoeditOtMessage/MultipleTransformRequest;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addFirst(ILcoeditOtMessage/IdxCedOpsPair$Builder;)LcoeditOtMessage/MultipleTransformRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/MultipleTransformRequest;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1, p2}, LcoeditOtMessage/MultipleTransformRequest;->b(LcoeditOtMessage/MultipleTransformRequest;ILcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public addFirst(ILcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/MultipleTransformRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {v0, p1, p2}, LcoeditOtMessage/MultipleTransformRequest;->b(LcoeditOtMessage/MultipleTransformRequest;ILcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public addFirst(LcoeditOtMessage/IdxCedOpsPair$Builder;)LcoeditOtMessage/MultipleTransformRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/MultipleTransformRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1}, LcoeditOtMessage/MultipleTransformRequest;->c(LcoeditOtMessage/MultipleTransformRequest;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public addFirst(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/MultipleTransformRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {v0, p1}, LcoeditOtMessage/MultipleTransformRequest;->c(LcoeditOtMessage/MultipleTransformRequest;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public clearFirst()LcoeditOtMessage/MultipleTransformRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {v0}, LcoeditOtMessage/MultipleTransformRequest;->d(LcoeditOtMessage/MultipleTransformRequest;)V

    return-object p0
.end method

.method public clearSecond()LcoeditOtMessage/MultipleTransformRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {v0}, LcoeditOtMessage/MultipleTransformRequest;->e(LcoeditOtMessage/MultipleTransformRequest;)V

    return-object p0
.end method

.method public getFirst(I)LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/MultipleTransformRequest;

    invoke-virtual {v0, p1}, LcoeditOtMessage/MultipleTransformRequest;->getFirst(I)LcoeditOtMessage/IdxCedOpsPair;

    move-result-object p1

    return-object p1
.end method

.method public getFirstCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/MultipleTransformRequest;

    invoke-virtual {v0}, LcoeditOtMessage/MultipleTransformRequest;->getFirstCount()I

    move-result v0

    return v0
.end method

.method public getFirstList()Ljava/util/List;
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

    check-cast v0, LcoeditOtMessage/MultipleTransformRequest;

    invoke-virtual {v0}, LcoeditOtMessage/MultipleTransformRequest;->getFirstList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSecond()LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/MultipleTransformRequest;

    invoke-virtual {v0}, LcoeditOtMessage/MultipleTransformRequest;->getSecond()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v0

    return-object v0
.end method

.method public hasSecond()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/MultipleTransformRequest;

    invoke-virtual {v0}, LcoeditOtMessage/MultipleTransformRequest;->hasSecond()Z

    move-result v0

    return v0
.end method

.method public mergeSecond(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/MultipleTransformRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {v0, p1}, LcoeditOtMessage/MultipleTransformRequest;->f(LcoeditOtMessage/MultipleTransformRequest;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public removeFirst(I)LcoeditOtMessage/MultipleTransformRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {v0, p1}, LcoeditOtMessage/MultipleTransformRequest;->g(LcoeditOtMessage/MultipleTransformRequest;I)V

    return-object p0
.end method

.method public setFirst(ILcoeditOtMessage/IdxCedOpsPair$Builder;)LcoeditOtMessage/MultipleTransformRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/MultipleTransformRequest;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1, p2}, LcoeditOtMessage/MultipleTransformRequest;->h(LcoeditOtMessage/MultipleTransformRequest;ILcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public setFirst(ILcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/MultipleTransformRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {v0, p1, p2}, LcoeditOtMessage/MultipleTransformRequest;->h(LcoeditOtMessage/MultipleTransformRequest;ILcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public setSecond(LcoeditOtMessage/IdxCedOpsPair$Builder;)LcoeditOtMessage/MultipleTransformRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/MultipleTransformRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1}, LcoeditOtMessage/MultipleTransformRequest;->i(LcoeditOtMessage/MultipleTransformRequest;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public setSecond(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/MultipleTransformRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {v0, p1}, LcoeditOtMessage/MultipleTransformRequest;->i(LcoeditOtMessage/MultipleTransformRequest;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method
