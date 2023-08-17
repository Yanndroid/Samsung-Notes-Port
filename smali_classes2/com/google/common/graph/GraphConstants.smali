.class final Lcom/google/common/graph/GraphConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/graph/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/GraphConstants$Presence;
    }
.end annotation


# static fields
.field public static final DEFAULT_EDGE_COUNT:I = 0x14

.field public static final DEFAULT_NODE_COUNT:I = 0xa

.field public static final EDGE_ALREADY_EXISTS:Ljava/lang/String; = "Edge %s already exists in the graph."

.field public static final EDGE_NOT_IN_GRAPH:Ljava/lang/String; = "Edge %s is not an element of this graph."

.field public static final ENDPOINTS_MISMATCH:Ljava/lang/String; = "Mismatch: unordered endpoints cannot be used with directed graphs"

.field public static final EXPECTED_DEGREE:I = 0x2

.field public static final INNER_CAPACITY:I = 0x2

.field public static final INNER_LOAD_FACTOR:F = 1.0f

.field public static final MULTIPLE_EDGES_CONNECTING:Ljava/lang/String; = "Cannot call edgeConnecting() when parallel edges exist between %s and %s. Consider calling edgesConnecting() instead."

.field public static final NODE_NOT_IN_GRAPH:Ljava/lang/String; = "Node %s is not an element of this graph."

.field public static final NOT_AVAILABLE_ON_UNDIRECTED:Ljava/lang/String; = "Cannot call source()/target() on a EndpointPair from an undirected graph. Consider calling adjacentNode(node) if you already have a node, or nodeU()/nodeV() if you don\'t."

.field public static final PARALLEL_EDGES_NOT_ALLOWED:Ljava/lang/String; = "Nodes %s and %s are already connected by a different edge. To construct a graph that allows parallel edges, call allowsParallelEdges(true) on the Builder."

.field public static final REUSING_EDGE:Ljava/lang/String; = "Edge %s already exists between the following nodes: %s, so it cannot be reused to connect the following nodes: %s."

.field public static final SELF_LOOPS_NOT_ALLOWED:Ljava/lang/String; = "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder."


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
