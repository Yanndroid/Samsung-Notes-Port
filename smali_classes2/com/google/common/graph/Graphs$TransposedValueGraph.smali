.class Lcom/google/common/graph/Graphs$TransposedValueGraph;
.super Lcom/google/common/graph/ForwardingValueGraph;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransposedValueGraph"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/ForwardingValueGraph<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field private final graph:Lcom/google/common/graph/ValueGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/ValueGraph<",
            "TN;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/graph/ValueGraph;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/ValueGraph<",
            "TN;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/graph/ForwardingValueGraph;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lcom/google/common/graph/ValueGraph;

    return-void
.end method

.method public static synthetic access$100(Lcom/google/common/graph/Graphs$TransposedValueGraph;)Lcom/google/common/graph/ValueGraph;
    .locals 0

    iget-object p0, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lcom/google/common/graph/ValueGraph;

    return-object p0
.end method


# virtual methods
.method public delegate()Lcom/google/common/graph/ValueGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ValueGraph<",
            "TN;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lcom/google/common/graph/ValueGraph;

    return-object v0
.end method

.method public edgeValueOrDefault(Lcom/google/common/graph/EndpointPair;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/graph/Graphs;->transpose(Lcom/google/common/graph/EndpointPair;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/common/graph/ValueGraph;->edgeValueOrDefault(Lcom/google/common/graph/EndpointPair;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p2, p1, p3}, Lcom/google/common/graph/ValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasEdgeConnecting(Lcom/google/common/graph/EndpointPair;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/graph/Graphs;->transpose(Lcom/google/common/graph/EndpointPair;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->hasEdgeConnecting(Lcom/google/common/graph/EndpointPair;)Z

    move-result p1

    return p1
.end method

.method public hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/google/common/graph/ValueGraph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public inDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->outDegree(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public outDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->inDegree(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public successors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
