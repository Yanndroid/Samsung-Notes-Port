.class Lcom/google/common/graph/Graphs$TransposedNetwork;
.super Lcom/google/common/graph/ForwardingNetwork;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransposedNetwork"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/ForwardingNetwork<",
        "TN;TE;>;"
    }
.end annotation


# instance fields
.field private final network:Lcom/google/common/graph/Network;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/graph/Network;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/graph/ForwardingNetwork;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    return-void
.end method

.method public static synthetic access$200(Lcom/google/common/graph/Graphs$TransposedNetwork;)Lcom/google/common/graph/Network;
    .locals 0

    iget-object p0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    return-object p0
.end method


# virtual methods
.method public delegate()Lcom/google/common/graph/Network;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    return-object v0
.end method

.method public edgeConnectingOrNull(Lcom/google/common/graph/EndpointPair;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/graph/Graphs;->transpose(Lcom/google/common/graph/EndpointPair;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->edgeConnectingOrNull(Lcom/google/common/graph/EndpointPair;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public edgeConnectingOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/google/common/graph/Network;->edgeConnectingOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public edgesConnecting(Lcom/google/common/graph/EndpointPair;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/graph/Graphs;->transpose(Lcom/google/common/graph/EndpointPair;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->edgesConnecting(Lcom/google/common/graph/EndpointPair;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/google/common/graph/Network;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

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

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/graph/Graphs;->transpose(Lcom/google/common/graph/EndpointPair;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->hasEdgeConnecting(Lcom/google/common/graph/EndpointPair;)Z

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

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/google/common/graph/Network;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->outDegree(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public inEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/common/graph/EndpointPair;->of(Lcom/google/common/graph/Network;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

.method public outDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->inDegree(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public outEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->inEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/graph/Graphs$TransposedNetwork;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

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

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/graph/Graphs$TransposedNetwork;->successors(Ljava/lang/Object;)Ljava/util/Set;

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

    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lcom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
