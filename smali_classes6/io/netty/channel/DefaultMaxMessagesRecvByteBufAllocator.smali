.class public abstract Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/MaxMessagesRecvByteBufAllocator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;
    }
.end annotation


# instance fields
.field private final ignoreBytesRead:Z

.field private volatile maxMessagesPerRead:I

.field private volatile respectMaybeMoreData:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->respectMaybeMoreData:Z

    iput-boolean p2, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->ignoreBytesRead:Z

    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->maxMessagesPerRead(I)Lio/netty/channel/MaxMessagesRecvByteBufAllocator;

    return-void
.end method

.method public static synthetic access$000(Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;)Z
    .locals 0

    iget-boolean p0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->respectMaybeMoreData:Z

    return p0
.end method

.method public static synthetic access$300(Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;)Z
    .locals 0

    iget-boolean p0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->ignoreBytesRead:Z

    return p0
.end method


# virtual methods
.method public maxMessagesPerRead()I
    .locals 1

    iget v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->maxMessagesPerRead:I

    return v0
.end method

.method public maxMessagesPerRead(I)Lio/netty/channel/MaxMessagesRecvByteBufAllocator;
    .locals 1

    const-string v0, "maxMessagesPerRead"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    iput p1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->maxMessagesPerRead:I

    return-object p0
.end method

.method public respectMaybeMoreData(Z)Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;
    .locals 0

    iput-boolean p1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->respectMaybeMoreData:Z

    return-object p0
.end method

.method public final respectMaybeMoreData()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->respectMaybeMoreData:Z

    return v0
.end method
