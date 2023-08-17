.class public abstract Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "MaxMessageHandle"
.end annotation


# instance fields
.field private attemptedBytesRead:I

.field private config:Lio/netty/channel/ChannelConfig;

.field private final defaultMaybeMoreSupplier:Lio/netty/util/UncheckedBooleanSupplier;

.field private lastBytesRead:I

.field private maxMessagePerRead:I

.field private final respectMaybeMoreData:Z

.field public final synthetic this$0:Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;

.field private totalBytesRead:I

.field private totalMessages:I


# direct methods
.method public constructor <init>(Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->this$0:Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->access$000(Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;)Z

    move-result p1

    iput-boolean p1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->respectMaybeMoreData:Z

    new-instance p1, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle$1;

    invoke-direct {p1, p0}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle$1;-><init>(Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;)V

    iput-object p1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->defaultMaybeMoreSupplier:Lio/netty/util/UncheckedBooleanSupplier;

    return-void
.end method

.method public static synthetic access$100(Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;)I
    .locals 0

    iget p0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->attemptedBytesRead:I

    return p0
.end method

.method public static synthetic access$200(Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;)I
    .locals 0

    iget p0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->lastBytesRead:I

    return p0
.end method


# virtual methods
.method public allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;
    .locals 1

    invoke-interface {p0}, Lio/netty/channel/RecvByteBufAllocator$Handle;->guess()I

    move-result v0

    invoke-interface {p1, v0}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public attemptedBytesRead()I
    .locals 1

    iget v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->attemptedBytesRead:I

    return v0
.end method

.method public attemptedBytesRead(I)V
    .locals 0

    iput p1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->attemptedBytesRead:I

    return-void
.end method

.method public continueReading()Z
    .locals 1

    iget-object v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->defaultMaybeMoreSupplier:Lio/netty/util/UncheckedBooleanSupplier;

    invoke-virtual {p0, v0}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->continueReading(Lio/netty/util/UncheckedBooleanSupplier;)Z

    move-result v0

    return v0
.end method

.method public continueReading(Lio/netty/util/UncheckedBooleanSupplier;)Z
    .locals 1

    iget-object v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->config:Lio/netty/channel/ChannelConfig;

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->respectMaybeMoreData:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/netty/util/UncheckedBooleanSupplier;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget p1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->totalMessages:I

    iget v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->maxMessagePerRead:I

    if-ge p1, v0, :cond_2

    iget-object p1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->this$0:Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;

    invoke-static {p1}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->access$300(Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->totalBytesRead:I

    if-lez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final incMessagesRead(I)V
    .locals 1

    iget v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->totalMessages:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->totalMessages:I

    return-void
.end method

.method public final lastBytesRead()I
    .locals 1

    iget v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->lastBytesRead:I

    return v0
.end method

.method public lastBytesRead(I)V
    .locals 1

    iput p1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->lastBytesRead:I

    if-lez p1, :cond_0

    iget v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->totalBytesRead:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->totalBytesRead:I

    :cond_0
    return-void
.end method

.method public readComplete()V
    .locals 0

    return-void
.end method

.method public reset(Lio/netty/channel/ChannelConfig;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->config:Lio/netty/channel/ChannelConfig;

    iget-object p1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->this$0:Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;

    invoke-virtual {p1}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->maxMessagesPerRead()I

    move-result p1

    iput p1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->maxMessagePerRead:I

    const/4 p1, 0x0

    iput p1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->totalBytesRead:I

    iput p1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->totalMessages:I

    return-void
.end method

.method public final totalBytesRead()I
    .locals 1

    iget v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->totalBytesRead:I

    if-gez v0, :cond_0

    const v0, 0x7fffffff

    :cond_0
    return v0
.end method
