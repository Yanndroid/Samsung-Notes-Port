.class public final LcoeditOtMessage/ComposeRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditOtMessage/ComposeRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOtMessage/ComposeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditOtMessage/ComposeRequest;",
        "LcoeditOtMessage/ComposeRequest$Builder;",
        ">;",
        "LcoeditOtMessage/ComposeRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditOtMessage/ComposeRequest;->g()LcoeditOtMessage/ComposeRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditOtMessage/a;)V
    .locals 0

    invoke-direct {p0}, LcoeditOtMessage/ComposeRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllPairs(Ljava/lang/Iterable;)LcoeditOtMessage/ComposeRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditOtMessage/IdxCedOpsPair;",
            ">;)",
            "LcoeditOtMessage/ComposeRequest$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/ComposeRequest;

    invoke-static {v0, p1}, LcoeditOtMessage/ComposeRequest;->a(LcoeditOtMessage/ComposeRequest;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addPairs(ILcoeditOtMessage/IdxCedOpsPair$Builder;)LcoeditOtMessage/ComposeRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/ComposeRequest;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1, p2}, LcoeditOtMessage/ComposeRequest;->b(LcoeditOtMessage/ComposeRequest;ILcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public addPairs(ILcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/ComposeRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/ComposeRequest;

    invoke-static {v0, p1, p2}, LcoeditOtMessage/ComposeRequest;->b(LcoeditOtMessage/ComposeRequest;ILcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public addPairs(LcoeditOtMessage/IdxCedOpsPair$Builder;)LcoeditOtMessage/ComposeRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/ComposeRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1}, LcoeditOtMessage/ComposeRequest;->c(LcoeditOtMessage/ComposeRequest;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public addPairs(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/ComposeRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/ComposeRequest;

    invoke-static {v0, p1}, LcoeditOtMessage/ComposeRequest;->c(LcoeditOtMessage/ComposeRequest;LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public clearPairs()LcoeditOtMessage/ComposeRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/ComposeRequest;

    invoke-static {v0}, LcoeditOtMessage/ComposeRequest;->d(LcoeditOtMessage/ComposeRequest;)V

    return-object p0
.end method

.method public getPairs(I)LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/ComposeRequest;

    invoke-virtual {v0, p1}, LcoeditOtMessage/ComposeRequest;->getPairs(I)LcoeditOtMessage/IdxCedOpsPair;

    move-result-object p1

    return-object p1
.end method

.method public getPairsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/ComposeRequest;

    invoke-virtual {v0}, LcoeditOtMessage/ComposeRequest;->getPairsCount()I

    move-result v0

    return v0
.end method

.method public getPairsList()Ljava/util/List;
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

    check-cast v0, LcoeditOtMessage/ComposeRequest;

    invoke-virtual {v0}, LcoeditOtMessage/ComposeRequest;->getPairsList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removePairs(I)LcoeditOtMessage/ComposeRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/ComposeRequest;

    invoke-static {v0, p1}, LcoeditOtMessage/ComposeRequest;->e(LcoeditOtMessage/ComposeRequest;I)V

    return-object p0
.end method

.method public setPairs(ILcoeditOtMessage/IdxCedOpsPair$Builder;)LcoeditOtMessage/ComposeRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/ComposeRequest;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1, p2}, LcoeditOtMessage/ComposeRequest;->f(LcoeditOtMessage/ComposeRequest;ILcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public setPairs(ILcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/ComposeRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/ComposeRequest;

    invoke-static {v0, p1, p2}, LcoeditOtMessage/ComposeRequest;->f(LcoeditOtMessage/ComposeRequest;ILcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method
