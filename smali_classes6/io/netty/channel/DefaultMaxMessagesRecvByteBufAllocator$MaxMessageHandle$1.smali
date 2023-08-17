.class Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/UncheckedBooleanSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;


# direct methods
.method public constructor <init>(Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle$1;->this$1:Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Z
    .locals 2

    iget-object v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle$1;->this$1:Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;

    invoke-static {v0}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->access$100(Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;)I

    move-result v0

    iget-object v1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle$1;->this$1:Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;

    invoke-static {v1}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->access$200(Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
