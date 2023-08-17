.class final Lio/netty/channel/PendingWriteQueue$PendingWrite;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/PendingWriteQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingWrite"
.end annotation


# static fields
.field private static final RECYCLER:Lio/netty/util/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool<",
            "Lio/netty/channel/PendingWriteQueue$PendingWrite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final handle:Lio/netty/util/internal/ObjectPool$Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/channel/PendingWriteQueue$PendingWrite;",
            ">;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/Object;

.field private next:Lio/netty/channel/PendingWriteQueue$PendingWrite;

.field private promise:Lio/netty/channel/ChannelPromise;

.field private size:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/channel/PendingWriteQueue$PendingWrite$1;

    invoke-direct {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite$1;-><init>()V

    invoke-static {v0}, Lio/netty/util/internal/ObjectPool;->newPool(Lio/netty/util/internal/ObjectPool$ObjectCreator;)Lio/netty/util/internal/ObjectPool;

    move-result-object v0

    sput-object v0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    return-void
.end method

.method private constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/channel/PendingWriteQueue$PendingWrite;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->handle:Lio/netty/util/internal/ObjectPool$Handle;

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;Lio/netty/channel/PendingWriteQueue$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;-><init>(Lio/netty/util/internal/ObjectPool$Handle;)V

    return-void
.end method

.method public static synthetic access$000(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/PendingWriteQueue$PendingWrite;
    .locals 0

    iget-object p0, p0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->next:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    return-object p0
.end method

.method public static synthetic access$002(Lio/netty/channel/PendingWriteQueue$PendingWrite;Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/PendingWriteQueue$PendingWrite;
    .locals 0

    iput-object p1, p0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->next:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    return-object p1
.end method

.method public static synthetic access$100(Lio/netty/channel/PendingWriteQueue$PendingWrite;)J
    .locals 2

    iget-wide v0, p0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->size:J

    return-wide v0
.end method

.method public static synthetic access$200(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->msg:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;
    .locals 0

    iget-object p0, p0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->promise:Lio/netty/channel/ChannelPromise;

    return-object p0
.end method

.method public static synthetic access$400(Lio/netty/channel/PendingWriteQueue$PendingWrite;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->recycle()V

    return-void
.end method

.method public static newInstance(Ljava/lang/Object;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/PendingWriteQueue$PendingWrite;
    .locals 3

    sget-object v0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    invoke-virtual {v0}, Lio/netty/util/internal/ObjectPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/PendingWriteQueue$PendingWrite;

    int-to-long v1, p1

    iput-wide v1, v0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->size:J

    iput-object p0, v0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->msg:Ljava/lang/Object;

    iput-object p2, v0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->promise:Lio/netty/channel/ChannelPromise;

    return-object v0
.end method

.method private recycle()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->size:J

    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->next:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    iput-object v0, p0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->msg:Ljava/lang/Object;

    iput-object v0, p0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->promise:Lio/netty/channel/ChannelPromise;

    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue$PendingWrite;->handle:Lio/netty/util/internal/ObjectPool$Handle;

    invoke-interface {v0, p0}, Lio/netty/util/internal/ObjectPool$Handle;->recycle(Ljava/lang/Object;)V

    return-void
.end method
