.class public final LcoeditOperation/CedOps$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditOperation/CedOpsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOperation/CedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditOperation/CedOps;",
        "LcoeditOperation/CedOps$Builder;",
        ">;",
        "LcoeditOperation/CedOpsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditOperation/CedOps;->g()LcoeditOperation/CedOps;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditOperation/a;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CedOps$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCoeditOperation(Ljava/lang/Iterable;)LcoeditOperation/CedOps$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditOperation/CoeditOperation;",
            ">;)",
            "LcoeditOperation/CedOps$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CedOps;

    invoke-static {v0, p1}, LcoeditOperation/CedOps;->a(LcoeditOperation/CedOps;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCoeditOperation(ILcoeditOperation/CoeditOperation$Builder;)LcoeditOperation/CedOps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CedOps;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1, p2}, LcoeditOperation/CedOps;->b(LcoeditOperation/CedOps;ILcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public addCoeditOperation(ILcoeditOperation/CoeditOperation;)LcoeditOperation/CedOps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CedOps;

    invoke-static {v0, p1, p2}, LcoeditOperation/CedOps;->b(LcoeditOperation/CedOps;ILcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public addCoeditOperation(LcoeditOperation/CoeditOperation$Builder;)LcoeditOperation/CedOps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CedOps;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditOperation/CedOps;->c(LcoeditOperation/CedOps;LcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public addCoeditOperation(LcoeditOperation/CoeditOperation;)LcoeditOperation/CedOps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CedOps;

    invoke-static {v0, p1}, LcoeditOperation/CedOps;->c(LcoeditOperation/CedOps;LcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public clearCoeditOperation()LcoeditOperation/CedOps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CedOps;

    invoke-static {v0}, LcoeditOperation/CedOps;->d(LcoeditOperation/CedOps;)V

    return-object p0
.end method

.method public getCoeditOperation(I)LcoeditOperation/CoeditOperation;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CedOps;

    invoke-virtual {v0, p1}, LcoeditOperation/CedOps;->getCoeditOperation(I)LcoeditOperation/CoeditOperation;

    move-result-object p1

    return-object p1
.end method

.method public getCoeditOperationCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CedOps;

    invoke-virtual {v0}, LcoeditOperation/CedOps;->getCoeditOperationCount()I

    move-result v0

    return v0
.end method

.method public getCoeditOperationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CedOps;

    invoke-virtual {v0}, LcoeditOperation/CedOps;->getCoeditOperationList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeCoeditOperation(I)LcoeditOperation/CedOps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CedOps;

    invoke-static {v0, p1}, LcoeditOperation/CedOps;->e(LcoeditOperation/CedOps;I)V

    return-object p0
.end method

.method public setCoeditOperation(ILcoeditOperation/CoeditOperation$Builder;)LcoeditOperation/CedOps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CedOps;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1, p2}, LcoeditOperation/CedOps;->f(LcoeditOperation/CedOps;ILcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public setCoeditOperation(ILcoeditOperation/CoeditOperation;)LcoeditOperation/CedOps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CedOps;

    invoke-static {v0, p1, p2}, LcoeditOperation/CedOps;->f(LcoeditOperation/CedOps;ILcoeditOperation/CoeditOperation;)V

    return-object p0
.end method
