.class abstract Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueueConsumerNodeRef;
.super Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueuePad1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueuePad1<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final C_NODE_OFFSET:J


# instance fields
.field private consumerNode:Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueueConsumerNodeRef;

    const-string v1, "consumerNode"

    invoke-static {v0, v1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueueConsumerNodeRef;->C_NODE_OFFSET:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueuePad1;-><init>()V

    return-void
.end method


# virtual methods
.method public final lpConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueueConsumerNodeRef;->consumerNode:Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    return-object v0
.end method

.method public final lvConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueueConsumerNodeRef;->C_NODE_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    return-object v0
.end method

.method public final spConsumerNode(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueueConsumerNodeRef;->consumerNode:Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    return-void
.end method
