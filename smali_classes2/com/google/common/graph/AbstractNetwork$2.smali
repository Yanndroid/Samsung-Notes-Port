.class Lcom/google/common/graph/AbstractNetwork$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/AbstractNetwork;->connectedPredicate(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/base/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/common/graph/AbstractNetwork;

.field public final synthetic val$nodePresent:Ljava/lang/Object;

.field public final synthetic val$nodeToCheck:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/AbstractNetwork;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/graph/AbstractNetwork$2;->this$0:Lcom/google/common/graph/AbstractNetwork;

    iput-object p2, p0, Lcom/google/common/graph/AbstractNetwork$2;->val$nodePresent:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/graph/AbstractNetwork$2;->val$nodeToCheck:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/AbstractNetwork$2;->this$0:Lcom/google/common/graph/AbstractNetwork;

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/graph/AbstractNetwork$2;->val$nodePresent:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/common/graph/EndpointPair;->adjacentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/graph/AbstractNetwork$2;->val$nodeToCheck:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
