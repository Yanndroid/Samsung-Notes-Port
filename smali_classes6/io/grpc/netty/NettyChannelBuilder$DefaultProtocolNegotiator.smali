.class final Lio/grpc/netty/NettyChannelBuilder$DefaultProtocolNegotiator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/ProtocolNegotiator$ClientFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/NettyChannelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DefaultProtocolNegotiator"
.end annotation


# instance fields
.field private negotiationType:Lio/grpc/netty/NegotiationType;

.field private sslContext:Lio/netty/handler/ssl/SslContext;

.field public final synthetic this$0:Lio/grpc/netty/NettyChannelBuilder;


# direct methods
.method private constructor <init>(Lio/grpc/netty/NettyChannelBuilder;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyChannelBuilder$DefaultProtocolNegotiator;->this$0:Lio/grpc/netty/NettyChannelBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lio/grpc/netty/NegotiationType;->TLS:Lio/grpc/netty/NegotiationType;

    iput-object p1, p0, Lio/grpc/netty/NettyChannelBuilder$DefaultProtocolNegotiator;->negotiationType:Lio/grpc/netty/NegotiationType;

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/netty/NettyChannelBuilder;Lio/grpc/netty/NettyChannelBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/NettyChannelBuilder$DefaultProtocolNegotiator;-><init>(Lio/grpc/netty/NettyChannelBuilder;)V

    return-void
.end method

.method public static synthetic access$402(Lio/grpc/netty/NettyChannelBuilder$DefaultProtocolNegotiator;Lio/grpc/netty/NegotiationType;)Lio/grpc/netty/NegotiationType;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyChannelBuilder$DefaultProtocolNegotiator;->negotiationType:Lio/grpc/netty/NegotiationType;

    return-object p1
.end method

.method public static synthetic access$502(Lio/grpc/netty/NettyChannelBuilder$DefaultProtocolNegotiator;Lio/netty/handler/ssl/SslContext;)Lio/netty/handler/ssl/SslContext;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyChannelBuilder$DefaultProtocolNegotiator;->sslContext:Lio/netty/handler/ssl/SslContext;

    return-object p1
.end method


# virtual methods
.method public getDefaultPort()I
    .locals 3

    sget-object v0, Lio/grpc/netty/NettyChannelBuilder$1;->$SwitchMap$io$grpc$netty$NegotiationType:[I

    iget-object v1, p0, Lio/grpc/netty/NettyChannelBuilder$DefaultProtocolNegotiator;->negotiationType:Lio/grpc/netty/NegotiationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1bb

    return v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/grpc/netty/NettyChannelBuilder$DefaultProtocolNegotiator;->negotiationType:Lio/grpc/netty/NegotiationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const/16 v0, 0x50

    return v0
.end method

.method public newNegotiator()Lio/grpc/netty/ProtocolNegotiator;
    .locals 3

    iget-object v0, p0, Lio/grpc/netty/NettyChannelBuilder$DefaultProtocolNegotiator;->sslContext:Lio/netty/handler/ssl/SslContext;

    iget-object v1, p0, Lio/grpc/netty/NettyChannelBuilder$DefaultProtocolNegotiator;->negotiationType:Lio/grpc/netty/NegotiationType;

    sget-object v2, Lio/grpc/netty/NegotiationType;->TLS:Lio/grpc/netty/NegotiationType;

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lio/grpc/netty/GrpcSslContexts;->forClient()Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslContextBuilder;->build()Lio/netty/handler/ssl/SslContext;

    move-result-object v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    iget-object v1, p0, Lio/grpc/netty/NettyChannelBuilder$DefaultProtocolNegotiator;->negotiationType:Lio/grpc/netty/NegotiationType;

    iget-object v2, p0, Lio/grpc/netty/NettyChannelBuilder$DefaultProtocolNegotiator;->this$0:Lio/grpc/netty/NettyChannelBuilder;

    invoke-static {v2}, Lio/grpc/netty/NettyChannelBuilder;->access$600(Lio/grpc/netty/NettyChannelBuilder;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/internal/ManagedChannelImplBuilder;->getOffloadExecutorPool()Lio/grpc/internal/ObjectPool;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lio/grpc/netty/NettyChannelBuilder;->createProtocolNegotiatorByType(Lio/grpc/netty/NegotiationType;Lio/netty/handler/ssl/SslContext;Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/ProtocolNegotiator;

    move-result-object v0

    return-object v0
.end method
