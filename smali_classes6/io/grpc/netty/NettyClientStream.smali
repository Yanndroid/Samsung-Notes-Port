.class Lio/grpc/netty/NettyClientStream;
.super Lio/grpc/internal/AbstractClientStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/NettyClientStream$TransportState;,
        Lio/grpc/netty/NettyClientStream$Sink;
    }
.end annotation


# static fields
.field private static final methodDescriptorAccessor:Lio/grpc/InternalMethodDescriptor;


# instance fields
.field private authority:Lio/netty/util/AsciiString;

.field private final method:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "**>;"
        }
    .end annotation
.end field

.field private final scheme:Lio/netty/util/AsciiString;

.field private final sink:Lio/grpc/netty/NettyClientStream$Sink;

.field private final state:Lio/grpc/netty/NettyClientStream$TransportState;

.field private final userAgent:Lio/netty/util/AsciiString;

.field private final writeQueue:Lio/grpc/netty/WriteQueue;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/grpc/InternalMethodDescriptor;

    const-class v1, Lio/grpc/netty/NettyClientTransport;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "grpc.netty.shaded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lio/grpc/InternalKnownTransport;->NETTY_SHADED:Lio/grpc/InternalKnownTransport;

    goto :goto_0

    :cond_0
    sget-object v1, Lio/grpc/InternalKnownTransport;->NETTY:Lio/grpc/InternalKnownTransport;

    :goto_0
    invoke-direct {v0, v1}, Lio/grpc/InternalMethodDescriptor;-><init>(Lio/grpc/InternalKnownTransport;)V

    sput-object v0, Lio/grpc/netty/NettyClientStream;->methodDescriptorAccessor:Lio/grpc/InternalMethodDescriptor;

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/NettyClientStream$TransportState;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/netty/channel/Channel;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;Lio/grpc/CallOptions;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/NettyClientStream$TransportState;",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/Metadata;",
            "Lio/netty/channel/Channel;",
            "Lio/netty/util/AsciiString;",
            "Lio/netty/util/AsciiString;",
            "Lio/netty/util/AsciiString;",
            "Lio/grpc/internal/StatsTraceContext;",
            "Lio/grpc/internal/TransportTracer;",
            "Lio/grpc/CallOptions;",
            "Z)V"
        }
    .end annotation

    move-object v7, p0

    new-instance v1, Lio/grpc/netty/NettyWritableBufferAllocator;

    invoke-interface {p4}, Lio/netty/channel/Channel;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/grpc/netty/NettyWritableBufferAllocator;-><init>(Lio/netty/buffer/ByteBufAllocator;)V

    if-eqz p11, :cond_0

    invoke-virtual {p2}, Lio/grpc/MethodDescriptor;->isSafe()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    move-object v0, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object v4, p3

    move-object/from16 v5, p10

    invoke-direct/range {v0 .. v6}, Lio/grpc/internal/AbstractClientStream;-><init>(Lio/grpc/internal/WritableBufferAllocator;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;Lio/grpc/Metadata;Lio/grpc/CallOptions;Z)V

    new-instance v0, Lio/grpc/netty/NettyClientStream$Sink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/netty/NettyClientStream$Sink;-><init>(Lio/grpc/netty/NettyClientStream;Lio/grpc/netty/NettyClientStream$1;)V

    iput-object v0, v7, Lio/grpc/netty/NettyClientStream;->sink:Lio/grpc/netty/NettyClientStream$Sink;

    const-string v0, "transportState"

    move-object v1, p1

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/NettyClientStream$TransportState;

    iput-object v0, v7, Lio/grpc/netty/NettyClientStream;->state:Lio/grpc/netty/NettyClientStream$TransportState;

    invoke-static {p1}, Lio/grpc/netty/NettyClientStream$TransportState;->access$100(Lio/grpc/netty/NettyClientStream$TransportState;)Lio/grpc/netty/NettyClientHandler;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/NettyClientHandler;->getWriteQueue()Lio/grpc/netty/WriteQueue;

    move-result-object v0

    iput-object v0, v7, Lio/grpc/netty/NettyClientStream;->writeQueue:Lio/grpc/netty/WriteQueue;

    const-string v0, "method"

    move-object v1, p2

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/MethodDescriptor;

    iput-object v0, v7, Lio/grpc/netty/NettyClientStream;->method:Lio/grpc/MethodDescriptor;

    const-string v0, "authority"

    move-object v1, p5

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/AsciiString;

    iput-object v0, v7, Lio/grpc/netty/NettyClientStream;->authority:Lio/netty/util/AsciiString;

    const-string v0, "scheme"

    move-object v1, p6

    invoke-static {p6, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/AsciiString;

    iput-object v0, v7, Lio/grpc/netty/NettyClientStream;->scheme:Lio/netty/util/AsciiString;

    move-object v0, p7

    iput-object v0, v7, Lio/grpc/netty/NettyClientStream;->userAgent:Lio/netty/util/AsciiString;

    return-void
.end method

.method public static synthetic access$200(Lio/grpc/netty/NettyClientStream;)Lio/grpc/MethodDescriptor;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyClientStream;->method:Lio/grpc/MethodDescriptor;

    return-object p0
.end method

.method public static synthetic access$300()Lio/grpc/InternalMethodDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/netty/NettyClientStream;->methodDescriptorAccessor:Lio/grpc/InternalMethodDescriptor;

    return-object v0
.end method

.method public static synthetic access$400(Lio/grpc/netty/NettyClientStream;)Lio/netty/util/AsciiString;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyClientStream;->scheme:Lio/netty/util/AsciiString;

    return-object p0
.end method

.method public static synthetic access$500(Lio/grpc/netty/NettyClientStream;)Lio/netty/util/AsciiString;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyClientStream;->authority:Lio/netty/util/AsciiString;

    return-object p0
.end method

.method public static synthetic access$600(Lio/grpc/netty/NettyClientStream;)Lio/netty/util/AsciiString;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyClientStream;->userAgent:Lio/netty/util/AsciiString;

    return-object p0
.end method

.method public static synthetic access$700(Lio/grpc/netty/NettyClientStream;)Lio/grpc/netty/WriteQueue;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyClientStream;->writeQueue:Lio/grpc/netty/WriteQueue;

    return-object p0
.end method

.method public static synthetic access$800(Lio/grpc/netty/NettyClientStream;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractStream;->onSendingBytes(I)V

    return-void
.end method

.method public static synthetic access$900(Lio/grpc/netty/NettyClientStream;)Lio/grpc/internal/TransportTracer;
    .locals 0

    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->getTransportTracer()Lio/grpc/internal/TransportTracer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic abstractClientStreamSink()Lio/grpc/internal/AbstractClientStream$Sink;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/NettyClientStream;->abstractClientStreamSink()Lio/grpc/netty/NettyClientStream$Sink;

    move-result-object v0

    return-object v0
.end method

.method public abstractClientStreamSink()Lio/grpc/netty/NettyClientStream$Sink;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyClientStream;->sink:Lio/grpc/netty/NettyClientStream$Sink;

    return-object v0
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyClientStream;->state:Lio/grpc/netty/NettyClientStream$TransportState;

    invoke-static {v0}, Lio/grpc/netty/NettyClientStream$TransportState;->access$100(Lio/grpc/netty/NettyClientStream$TransportState;)Lio/grpc/netty/NettyClientHandler;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/NettyClientHandler;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 1

    const-string v0, "authority"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/NettyClientStream;->authority:Lio/netty/util/AsciiString;

    return-void
.end method

.method public bridge synthetic transportState()Lio/grpc/internal/AbstractClientStream$TransportState;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/NettyClientStream;->transportState()Lio/grpc/netty/NettyClientStream$TransportState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic transportState()Lio/grpc/internal/AbstractStream$TransportState;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/NettyClientStream;->transportState()Lio/grpc/netty/NettyClientStream$TransportState;

    move-result-object v0

    return-object v0
.end method

.method public transportState()Lio/grpc/netty/NettyClientStream$TransportState;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyClientStream;->state:Lio/grpc/netty/NettyClientStream$TransportState;

    return-object v0
.end method
