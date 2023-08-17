.class Lio/grpc/okhttp/OkHttpClientStream;
.super Lio/grpc/internal/AbstractClientStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OkHttpClientStream$TransportState;,
        Lio/grpc/okhttp/OkHttpClientStream$Sink;
    }
.end annotation


# static fields
.field public static final ABSENT_ID:I = -0x1

.field private static final EMPTY_BUFFER:Lokio/Buffer;


# instance fields
.field private final attributes:Lio/grpc/Attributes;

.field private authority:Ljava/lang/String;

.field private final method:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "**>;"
        }
    .end annotation
.end field

.field private final sink:Lio/grpc/okhttp/OkHttpClientStream$Sink;

.field private final state:Lio/grpc/okhttp/OkHttpClientStream$TransportState;

.field private final statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

.field private useGet:Z

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    sput-object v0, Lio/grpc/okhttp/OkHttpClientStream;->EMPTY_BUFFER:Lokio/Buffer;

    return-void
.end method

.method public constructor <init>(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/okhttp/ExceptionHandlingFrameWriter;Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/OutboundFlowController;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;Lio/grpc/CallOptions;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/okhttp/ExceptionHandlingFrameWriter;",
            "Lio/grpc/okhttp/OkHttpClientTransport;",
            "Lio/grpc/okhttp/OutboundFlowController;",
            "Ljava/lang/Object;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/grpc/internal/StatsTraceContext;",
            "Lio/grpc/internal/TransportTracer;",
            "Lio/grpc/CallOptions;",
            "Z)V"
        }
    .end annotation

    move-object v10, p0

    new-instance v1, Lio/grpc/okhttp/OkHttpWritableBufferAllocator;

    invoke-direct {v1}, Lio/grpc/okhttp/OkHttpWritableBufferAllocator;-><init>()V

    const/4 v7, 0x0

    if-eqz p14, :cond_0

    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->isSafe()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    move-object v0, p0

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object v4, p2

    move-object/from16 v5, p13

    invoke-direct/range {v0 .. v6}, Lio/grpc/internal/AbstractClientStream;-><init>(Lio/grpc/internal/WritableBufferAllocator;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;Lio/grpc/Metadata;Lio/grpc/CallOptions;Z)V

    new-instance v0, Lio/grpc/okhttp/OkHttpClientStream$Sink;

    invoke-direct {v0, p0}, Lio/grpc/okhttp/OkHttpClientStream$Sink;-><init>(Lio/grpc/okhttp/OkHttpClientStream;)V

    iput-object v0, v10, Lio/grpc/okhttp/OkHttpClientStream;->sink:Lio/grpc/okhttp/OkHttpClientStream$Sink;

    iput-boolean v7, v10, Lio/grpc/okhttp/OkHttpClientStream;->useGet:Z

    const-string v0, "statsTraceCtx"

    move-object/from16 v3, p11

    invoke-static {v3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/StatsTraceContext;

    iput-object v0, v10, Lio/grpc/okhttp/OkHttpClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    move-object v0, p1

    iput-object v0, v10, Lio/grpc/okhttp/OkHttpClientStream;->method:Lio/grpc/MethodDescriptor;

    move-object/from16 v1, p9

    iput-object v1, v10, Lio/grpc/okhttp/OkHttpClientStream;->authority:Ljava/lang/String;

    move-object/from16 v1, p10

    iput-object v1, v10, Lio/grpc/okhttp/OkHttpClientStream;->userAgent:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Lio/grpc/okhttp/OkHttpClientTransport;->getAttributes()Lio/grpc/Attributes;

    move-result-object v1

    iput-object v1, v10, Lio/grpc/okhttp/OkHttpClientStream;->attributes:Lio/grpc/Attributes;

    new-instance v11, Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v9

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p7

    move-object/from16 v4, p6

    move-object v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;-><init>(Lio/grpc/okhttp/OkHttpClientStream;ILio/grpc/internal/StatsTraceContext;Ljava/lang/Object;Lio/grpc/okhttp/ExceptionHandlingFrameWriter;Lio/grpc/okhttp/OutboundFlowController;Lio/grpc/okhttp/OkHttpClientTransport;ILjava/lang/String;)V

    iput-object v11, v10, Lio/grpc/okhttp/OkHttpClientStream;->state:Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    return-void
.end method

.method public static synthetic access$000(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/MethodDescriptor;
    .locals 0

    iget-object p0, p0, Lio/grpc/okhttp/OkHttpClientStream;->method:Lio/grpc/MethodDescriptor;

    return-object p0
.end method

.method public static synthetic access$100(Lio/grpc/okhttp/OkHttpClientStream;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/okhttp/OkHttpClientStream;->useGet:Z

    return p0
.end method

.method public static synthetic access$1000(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/internal/TransportTracer;
    .locals 0

    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->getTransportTracer()Lio/grpc/internal/TransportTracer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$102(Lio/grpc/okhttp/OkHttpClientStream;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/okhttp/OkHttpClientStream;->useGet:Z

    return p1
.end method

.method public static synthetic access$1100(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/internal/StatsTraceContext;
    .locals 0

    iget-object p0, p0, Lio/grpc/okhttp/OkHttpClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    return-object p0
.end method

.method public static synthetic access$1200(Lio/grpc/okhttp/OkHttpClientStream;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/grpc/okhttp/OkHttpClientStream;->authority:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1300(Lio/grpc/okhttp/OkHttpClientStream;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/grpc/okhttp/OkHttpClientStream;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;
    .locals 0

    iget-object p0, p0, Lio/grpc/okhttp/OkHttpClientStream;->state:Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    return-object p0
.end method

.method public static synthetic access$500()Lokio/Buffer;
    .locals 1

    sget-object v0, Lio/grpc/okhttp/OkHttpClientStream;->EMPTY_BUFFER:Lokio/Buffer;

    return-object v0
.end method

.method public static synthetic access$600(Lio/grpc/okhttp/OkHttpClientStream;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractStream;->onSendingBytes(I)V

    return-void
.end method

.method public static synthetic access$800(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/internal/TransportTracer;
    .locals 0

    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->getTransportTracer()Lio/grpc/internal/TransportTracer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic abstractClientStreamSink()Lio/grpc/internal/AbstractClientStream$Sink;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->abstractClientStreamSink()Lio/grpc/okhttp/OkHttpClientStream$Sink;

    move-result-object v0

    return-object v0
.end method

.method public abstractClientStreamSink()Lio/grpc/okhttp/OkHttpClientStream$Sink;
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->sink:Lio/grpc/okhttp/OkHttpClientStream$Sink;

    return-object v0
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->attributes:Lio/grpc/Attributes;

    return-object v0
.end method

.method public getType()Lio/grpc/MethodDescriptor$MethodType;
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    return-object v0
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 1

    const-string v0, "authority"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream;->authority:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic transportState()Lio/grpc/internal/AbstractClientStream$TransportState;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic transportState()Lio/grpc/internal/AbstractStream$TransportState;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v0

    return-object v0
.end method

.method public transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->state:Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    return-object v0
.end method

.method public useGet()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->useGet:Z

    return v0
.end method
