.class Lcom/google/common/graph/StandardValueGraph;
.super Lcom/google/common/graph/AbstractValueGraph;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/graph/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractValueGraph<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field private final allowsSelfLoops:Z

.field public edgeCount:J

.field private final isDirected:Z

.field public final nodeConnections:Lcom/google/common/graph/MapIteratorCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/MapIteratorCache<",
            "TN;",
            "Lcom/google/common/graph/GraphConnections<",
            "TN;TV;>;>;"
        }
    .end annotation
.end field

.field private final nodeOrder:Lcom/google/common/graph/ElementOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/graph/AbstractGraphBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/AbstractGraphBuilder<",
            "-TN;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/common/graph/AbstractGraphBuilder;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    iget-object v1, p1, Lcom/google/common/graph/AbstractGraphBuilder;->expectedNodeCount:Lcom/google/common/base/Optional;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/ElementOrder;->createMap(I)Ljava/util/Map;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/common/graph/StandardValueGraph;-><init>(Lcom/google/common/graph/AbstractGraphBuilder;Ljava/util/Map;J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/graph/AbstractGraphBuilder;Ljava/util/Map;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/AbstractGraphBuilder<",
            "-TN;>;",
            "Ljava/util/Map<",
            "TN;",
            "Lcom/google/common/graph/GraphConnections<",
            "TN;TV;>;>;J)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/graph/AbstractValueGraph;-><init>()V

    iget-boolean v0, p1, Lcom/google/common/graph/AbstractGraphBuilder;->directed:Z

    iput-boolean v0, p0, Lcom/google/common/graph/StandardValueGraph;->isDirected:Z

    iget-boolean v0, p1, Lcom/google/common/graph/AbstractGraphBuilder;->allowsSelfLoops:Z

    iput-boolean v0, p0, Lcom/google/common/graph/StandardValueGraph;->allowsSelfLoops:Z

    iget-object p1, p1, Lcom/google/common/graph/AbstractGraphBuilder;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    invoke-virtual {p1}, Lcom/google/common/graph/ElementOrder;->cast()Lcom/google/common/graph/ElementOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/StandardValueGraph;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    instance-of p1, p2, Ljava/util/TreeMap;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/common/graph/MapRetrievalCache;

    invoke-direct {p1, p2}, Lcom/google/common/graph/MapRetrievalCache;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/common/graph/MapIteratorCache;

    invoke-direct {p1, p2}, Lcom/google/common/graph/MapIteratorCache;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object p1, p0, Lcom/google/common/graph/StandardValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-static {p3, p4}, Lcom/google/common/graph/Graphs;->checkNonNegative(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/graph/StandardValueGraph;->edgeCount:J

    return-void
.end method

.method private final checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/GraphConnections<",
            "TN;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/StandardValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/GraphConnections;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Node "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not an element of this graph."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final edgeValueOrDefaultInternal(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    iget-object v0, p0, Lcom/google/common/graph/StandardValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/graph/GraphConnections;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lcom/google/common/graph/GraphConnections;->value(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-object p3

    :cond_1
    return-object p1
.end method

.method private final hasEdgeConnectingInternal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/StandardValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/graph/GraphConnections;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/common/graph/GraphConnections;->successors()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/graph/StandardValueGraph;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/graph/GraphConnections;->adjacentNodes()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public allowsSelfLoops()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/graph/StandardValueGraph;->allowsSelfLoops:Z

    return v0
.end method

.method public final containsNode(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/StandardValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public edgeCount()J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/graph/StandardValueGraph;->edgeCount:J

    return-wide v0
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

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->validateEndpoints(Lcom/google/common/graph/EndpointPair;)V

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/common/graph/StandardValueGraph;->edgeValueOrDefaultInternal(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/graph/StandardValueGraph;->edgeValueOrDefaultInternal(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->isOrderingCompatible(Lcom/google/common/graph/EndpointPair;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/common/graph/StandardValueGraph;->hasEdgeConnectingInternal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/graph/StandardValueGraph;->hasEdgeConnectingInternal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/graph/StandardValueGraph;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/StandardValueGraph$1;

    invoke-direct {v1, p0, p0, p1, v0}, Lcom/google/common/graph/StandardValueGraph$1;-><init>(Lcom/google/common/graph/StandardValueGraph;Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;Lcom/google/common/graph/GraphConnections;)V

    return-object v1
.end method

.method public isDirected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/graph/StandardValueGraph;->isDirected:Z

    return v0
.end method

.method public nodeOrder()Lcom/google/common/graph/ElementOrder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/StandardValueGraph;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    return-object v0
.end method

.method public nodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/StandardValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0}, Lcom/google/common/graph/MapIteratorCache;->unmodifiableKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/graph/StandardValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/graph/StandardValueGraph;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/graph/GraphConnections;->predecessors()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/graph/StandardValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public successors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/graph/StandardValueGraph;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/graph/GraphConnections;->successors()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
