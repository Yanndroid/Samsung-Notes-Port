.class final Lio/grpc/netty/NettyChannelBuilder$NettyChannelDefaultPortProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/NettyChannelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NettyChannelDefaultPortProvider"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyChannelBuilder;


# direct methods
.method private constructor <init>(Lio/grpc/netty/NettyChannelBuilder;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyChannelBuilder$NettyChannelDefaultPortProvider;->this$0:Lio/grpc/netty/NettyChannelBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/netty/NettyChannelBuilder;Lio/grpc/netty/NettyChannelBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/NettyChannelBuilder$NettyChannelDefaultPortProvider;-><init>(Lio/grpc/netty/NettyChannelBuilder;)V

    return-void
.end method


# virtual methods
.method public getDefaultPort()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyChannelBuilder$NettyChannelDefaultPortProvider;->this$0:Lio/grpc/netty/NettyChannelBuilder;

    invoke-static {v0}, Lio/grpc/netty/NettyChannelBuilder;->access$100(Lio/grpc/netty/NettyChannelBuilder;)Lio/grpc/netty/ProtocolNegotiator$ClientFactory;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/ProtocolNegotiator$ClientFactory;->getDefaultPort()I

    move-result v0

    return v0
.end method
