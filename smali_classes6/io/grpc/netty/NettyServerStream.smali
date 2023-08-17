.class Lio/grpc/netty/NettyServerStream;
.super Lio/grpc/internal/AbstractServerStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/NettyServerStream$TransportState;,
        Lio/grpc/netty/NettyServerStream$Sink;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final attributes:Lio/grpc/Attributes;

.field private final authority:Ljava/lang/String;

.field private final sink:Lio/grpc/netty/NettyServerStream$Sink;

.field private final state:Lio/grpc/netty/NettyServerStream$TransportState;

.field private final streamId:I

.field private final transportTracer:Lio/grpc/internal/TransportTracer;

.field private final writeQueue:Lio/grpc/netty/WriteQueue;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/netty/NettyServerStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/NettyServerStream;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/Channel;Lio/grpc/netty/NettyServerStream$TransportState;Lio/grpc/Attributes;Ljava/lang/String;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;)V
    .locals 1

    new-instance v0, Lio/grpc/netty/NettyWritableBufferAllocator;

    invoke-interface {p1}, Lio/netty/channel/Channel;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/grpc/netty/NettyWritableBufferAllocator;-><init>(Lio/netty/buffer/ByteBufAllocator;)V

    invoke-direct {p0, v0, p5}, Lio/grpc/internal/AbstractServerStream;-><init>(Lio/grpc/internal/WritableBufferAllocator;Lio/grpc/internal/StatsTraceContext;)V

    new-instance p1, Lio/grpc/netty/NettyServerStream$Sink;

    const/4 p5, 0x0

    invoke-direct {p1, p0, p5}, Lio/grpc/netty/NettyServerStream$Sink;-><init>(Lio/grpc/netty/NettyServerStream;Lio/grpc/netty/NettyServerStream$1;)V

    iput-object p1, p0, Lio/grpc/netty/NettyServerStream;->sink:Lio/grpc/netty/NettyServerStream$Sink;

    const-string p1, "transportState"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/NettyServerStream$TransportState;

    iput-object p1, p0, Lio/grpc/netty/NettyServerStream;->state:Lio/grpc/netty/NettyServerStream$TransportState;

    invoke-static {p2}, Lio/grpc/netty/NettyServerStream$TransportState;->access$100(Lio/grpc/netty/NettyServerStream$TransportState;)Lio/grpc/netty/NettyServerHandler;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/netty/NettyServerHandler;->getWriteQueue()Lio/grpc/netty/WriteQueue;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/NettyServerStream;->writeQueue:Lio/grpc/netty/WriteQueue;

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/Attributes;

    iput-object p1, p0, Lio/grpc/netty/NettyServerStream;->attributes:Lio/grpc/Attributes;

    iput-object p4, p0, Lio/grpc/netty/NettyServerStream;->authority:Ljava/lang/String;

    const-string p1, "transportTracer"

    invoke-static {p6, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/TransportTracer;

    iput-object p1, p0, Lio/grpc/netty/NettyServerStream;->transportTracer:Lio/grpc/internal/TransportTracer;

    invoke-virtual {p0}, Lio/grpc/netty/NettyServerStream;->transportState()Lio/grpc/netty/NettyServerStream$TransportState;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/netty/NettyServerStream$TransportState;->id()I

    move-result p1

    iput p1, p0, Lio/grpc/netty/NettyServerStream;->streamId:I

    return-void
.end method

.method public static synthetic access$200(Lio/grpc/netty/NettyServerStream;)Lio/grpc/netty/WriteQueue;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServerStream;->writeQueue:Lio/grpc/netty/WriteQueue;

    return-object p0
.end method

.method public static synthetic access$300(Lio/grpc/netty/NettyServerStream;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractStream;->onSendingBytes(I)V

    return-void
.end method

.method public static synthetic access$400(Lio/grpc/netty/NettyServerStream;)Lio/grpc/internal/TransportTracer;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServerStream;->transportTracer:Lio/grpc/internal/TransportTracer;

    return-object p0
.end method

.method public static synthetic access$600()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lio/grpc/netty/NettyServerStream;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic abstractServerStreamSink()Lio/grpc/internal/AbstractServerStream$Sink;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/NettyServerStream;->abstractServerStreamSink()Lio/grpc/netty/NettyServerStream$Sink;

    move-result-object v0

    return-object v0
.end method

.method public abstractServerStreamSink()Lio/grpc/netty/NettyServerStream$Sink;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyServerStream;->sink:Lio/grpc/netty/NettyServerStream$Sink;

    return-object v0
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyServerStream;->attributes:Lio/grpc/Attributes;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyServerStream;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public streamId()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/NettyServerStream;->streamId:I

    return v0
.end method

.method public bridge synthetic transportState()Lio/grpc/internal/AbstractServerStream$TransportState;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/NettyServerStream;->transportState()Lio/grpc/netty/NettyServerStream$TransportState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic transportState()Lio/grpc/internal/AbstractStream$TransportState;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/NettyServerStream;->transportState()Lio/grpc/netty/NettyServerStream$TransportState;

    move-result-object v0

    return-object v0
.end method

.method public transportState()Lio/grpc/netty/NettyServerStream$TransportState;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyServerStream;->state:Lio/grpc/netty/NettyServerStream$TransportState;

    return-object v0
.end method
