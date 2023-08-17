.class final Lio/netty/channel/ChannelOutboundBuffer$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/ChannelOutboundBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# static fields
.field private static final RECYCLER:Lio/netty/util/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool<",
            "Lio/netty/channel/ChannelOutboundBuffer$Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public buf:Ljava/nio/ByteBuffer;

.field public bufs:[Ljava/nio/ByteBuffer;

.field public cancelled:Z

.field public count:I

.field private final handle:Lio/netty/util/internal/ObjectPool$Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/channel/ChannelOutboundBuffer$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public msg:Ljava/lang/Object;

.field public next:Lio/netty/channel/ChannelOutboundBuffer$Entry;

.field public pendingSize:I

.field public progress:J

.field public promise:Lio/netty/channel/ChannelPromise;

.field public total:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/channel/ChannelOutboundBuffer$Entry$1;

    invoke-direct {v0}, Lio/netty/channel/ChannelOutboundBuffer$Entry$1;-><init>()V

    invoke-static {v0}, Lio/netty/util/internal/ObjectPool;->newPool(Lio/netty/util/internal/ObjectPool$ObjectCreator;)Lio/netty/util/internal/ObjectPool;

    move-result-object v0

    sput-object v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    return-void
.end method

.method private constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/channel/ChannelOutboundBuffer$Entry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->count:I

    iput-object p1, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->handle:Lio/netty/util/internal/ObjectPool$Handle;

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;Lio/netty/channel/ChannelOutboundBuffer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/channel/ChannelOutboundBuffer$Entry;-><init>(Lio/netty/util/internal/ObjectPool$Handle;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/Object;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelOutboundBuffer$Entry;
    .locals 1

    sget-object v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    invoke-virtual {v0}, Lio/netty/util/internal/ObjectPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;

    iput-object p0, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->msg:Ljava/lang/Object;

    sget p0, Lio/netty/channel/ChannelOutboundBuffer;->CHANNEL_OUTBOUND_BUFFER_ENTRY_OVERHEAD:I

    add-int/2addr p1, p0

    iput p1, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->pendingSize:I

    iput-wide p2, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->total:J

    iput-object p4, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->promise:Lio/netty/channel/ChannelPromise;

    return-object v0
.end method


# virtual methods
.method public cancel()I
    .locals 3

    iget-boolean v0, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->cancelled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->cancelled:Z

    iget v0, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->pendingSize:I

    iget-object v2, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->msg:Ljava/lang/Object;

    invoke-static {v2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    sget-object v2, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    iput-object v2, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->msg:Ljava/lang/Object;

    iput v1, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->pendingSize:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->total:J

    iput-wide v1, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->progress:J

    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->bufs:[Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->buf:Ljava/nio/ByteBuffer;

    return v0

    :cond_0
    return v1
.end method

.method public recycle()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->next:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    iput-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->bufs:[Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->buf:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->msg:Ljava/lang/Object;

    iput-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->promise:Lio/netty/channel/ChannelPromise;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->progress:J

    iput-wide v0, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->total:J

    const/4 v0, 0x0

    iput v0, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->pendingSize:I

    const/4 v1, -0x1

    iput v1, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->count:I

    iput-boolean v0, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->cancelled:Z

    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->handle:Lio/netty/util/internal/ObjectPool$Handle;

    invoke-interface {v0, p0}, Lio/netty/util/internal/ObjectPool$Handle;->recycle(Ljava/lang/Object;)V

    return-void
.end method

.method public recycleAndGetNext()Lio/netty/channel/ChannelOutboundBuffer$Entry;
    .locals 1

    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->next:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    invoke-virtual {p0}, Lio/netty/channel/ChannelOutboundBuffer$Entry;->recycle()V

    return-object v0
.end method
