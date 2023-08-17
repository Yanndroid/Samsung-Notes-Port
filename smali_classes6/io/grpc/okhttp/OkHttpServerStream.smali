.class Lio/grpc/okhttp/OkHttpServerStream;
.super Lio/grpc/internal/AbstractServerStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OkHttpServerStream$TransportState;,
        Lio/grpc/okhttp/OkHttpServerStream$Sink;
    }
.end annotation


# instance fields
.field private final attributes:Lio/grpc/Attributes;

.field private final authority:Ljava/lang/String;

.field private final sink:Lio/grpc/okhttp/OkHttpServerStream$Sink;

.field private final state:Lio/grpc/okhttp/OkHttpServerStream$TransportState;

.field private final transportTracer:Lio/grpc/internal/TransportTracer;


# direct methods
.method public constructor <init>(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Lio/grpc/Attributes;Ljava/lang/String;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;)V
    .locals 1

    new-instance v0, Lio/grpc/okhttp/OkHttpWritableBufferAllocator;

    invoke-direct {v0}, Lio/grpc/okhttp/OkHttpWritableBufferAllocator;-><init>()V

    invoke-direct {p0, v0, p4}, Lio/grpc/internal/AbstractServerStream;-><init>(Lio/grpc/internal/WritableBufferAllocator;Lio/grpc/internal/StatsTraceContext;)V

    new-instance p4, Lio/grpc/okhttp/OkHttpServerStream$Sink;

    invoke-direct {p4, p0}, Lio/grpc/okhttp/OkHttpServerStream$Sink;-><init>(Lio/grpc/okhttp/OkHttpServerStream;)V

    iput-object p4, p0, Lio/grpc/okhttp/OkHttpServerStream;->sink:Lio/grpc/okhttp/OkHttpServerStream$Sink;

    const-string p4, "state"

    invoke-static {p1, p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerStream;->state:Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    const-string p1, "transportAttrs"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/Attributes;

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerStream;->attributes:Lio/grpc/Attributes;

    iput-object p3, p0, Lio/grpc/okhttp/OkHttpServerStream;->authority:Ljava/lang/String;

    const-string p1, "transportTracer"

    invoke-static {p5, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/TransportTracer;

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerStream;->transportTracer:Lio/grpc/internal/TransportTracer;

    return-void
.end method

.method public static synthetic access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;
    .locals 0

    iget-object p0, p0, Lio/grpc/okhttp/OkHttpServerStream;->state:Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    return-object p0
.end method

.method public static synthetic access$400(Lio/grpc/okhttp/OkHttpServerStream;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractStream;->onSendingBytes(I)V

    return-void
.end method

.method public static synthetic access$600(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/internal/TransportTracer;
    .locals 0

    iget-object p0, p0, Lio/grpc/okhttp/OkHttpServerStream;->transportTracer:Lio/grpc/internal/TransportTracer;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic abstractServerStreamSink()Lio/grpc/internal/AbstractServerStream$Sink;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpServerStream;->abstractServerStreamSink()Lio/grpc/okhttp/OkHttpServerStream$Sink;

    move-result-object v0

    return-object v0
.end method

.method public abstractServerStreamSink()Lio/grpc/okhttp/OkHttpServerStream$Sink;
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream;->sink:Lio/grpc/okhttp/OkHttpServerStream$Sink;

    return-object v0
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream;->attributes:Lio/grpc/Attributes;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public streamId()I
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream;->state:Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$000(Lio/grpc/okhttp/OkHttpServerStream$TransportState;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic transportState()Lio/grpc/internal/AbstractServerStream$TransportState;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpServerStream;->transportState()Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic transportState()Lio/grpc/internal/AbstractStream$TransportState;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpServerStream;->transportState()Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v0

    return-object v0
.end method

.method public transportState()Lio/grpc/okhttp/OkHttpServerStream$TransportState;
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream;->state:Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    return-object v0
.end method
