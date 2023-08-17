.class final Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HandleImpl"
.end annotation


# instance fields
.field private attemptBytesRead:I

.field private bytesToRead:I

.field private final defaultMaybeMoreSupplier:Lio/netty/util/UncheckedBooleanSupplier;

.field private individualReadMax:I

.field private lastBytesRead:I

.field public final synthetic this$0:Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;


# direct methods
.method private constructor <init>(Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;->this$0:Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl$1;

    invoke-direct {p1, p0}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl$1;-><init>(Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;)V

    iput-object p1, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;->defaultMaybeMoreSupplier:Lio/netty/util/UncheckedBooleanSupplier;

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;-><init>(Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;)V

    return-void
.end method

.method public static synthetic access$000(Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;)I
    .locals 0

    iget p0, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;->attemptBytesRead:I

    return p0
.end method

.method public static synthetic access$100(Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;)I
    .locals 0

    iget p0, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;->lastBytesRead:I

    return p0
.end method


# virtual methods
.method public allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;->guess()I

    move-result v0

    invoke-interface {p1, v0}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public attemptedBytesRead()I
    .locals 1

    iget v0, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;->attemptBytesRead:I

    return v0
.end method

.method public attemptedBytesRead(I)V
    .locals 0

    iput p1, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;->attemptBytesRead:I

    return-void
.end method

.method public continueReading()Z
    .locals 1

    iget-object v0, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;->defaultMaybeMoreSupplier:Lio/netty/util/UncheckedBooleanSupplier;

    invoke-virtual {p0, v0}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;->continueReading(Lio/netty/util/UncheckedBooleanSupplier;)Z

    move-result v0

    return v0
.end method

.method public continueReading(Lio/netty/util/UncheckedBooleanSupplier;)Z
    .locals 1

    iget v0, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;->bytesToRead:I

    if-lez v0, :cond_0

    invoke-interface {p1}, Lio/netty/util/UncheckedBooleanSupplier;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public guess()I
    .locals 2

    iget v0, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;->individualReadMax:I

    iget v1, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;->bytesToRead:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public incMessagesRead(I)V
    .locals 0

    return-void
.end method

.method public lastBytesRead()I
    .locals 1

    iget v0, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;->lastBytesRead:I

    return v0
.end method

.method public lastBytesRead(I)V
    .locals 1

    iput p1, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;->lastBytesRead:I

    iget v0, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;->bytesToRead:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;->bytesToRead:I

    return-void
.end method

.method public readComplete()V
    .locals 0

    return-void
.end method

.method public reset(Lio/netty/channel/ChannelConfig;)V
    .locals 0

    iget-object p1, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;->this$0:Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;

    invoke-virtual {p1}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerRead()I

    move-result p1

    iput p1, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;->bytesToRead:I

    iget-object p1, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;->this$0:Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;

    invoke-virtual {p1}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerIndividualRead()I

    move-result p1

    iput p1, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;->individualReadMax:I

    return-void
.end method
