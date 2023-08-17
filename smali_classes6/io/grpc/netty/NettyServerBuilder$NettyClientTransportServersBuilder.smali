.class final Lio/grpc/netty/NettyServerBuilder$NettyClientTransportServersBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/NettyServerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NettyClientTransportServersBuilder"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyServerBuilder;


# direct methods
.method private constructor <init>(Lio/grpc/netty/NettyServerBuilder;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServerBuilder$NettyClientTransportServersBuilder;->this$0:Lio/grpc/netty/NettyServerBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/netty/NettyServerBuilder;Lio/grpc/netty/NettyServerBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/NettyServerBuilder$NettyClientTransportServersBuilder;-><init>(Lio/grpc/netty/NettyServerBuilder;)V

    return-void
.end method


# virtual methods
.method public buildClientTransportServers(Ljava/util/List;)Lio/grpc/internal/InternalServer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;)",
            "Lio/grpc/internal/InternalServer;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/NettyServerBuilder$NettyClientTransportServersBuilder;->this$0:Lio/grpc/netty/NettyServerBuilder;

    invoke-virtual {v0, p1}, Lio/grpc/netty/NettyServerBuilder;->buildTransportServers(Ljava/util/List;)Lio/grpc/netty/NettyServer;

    move-result-object p1

    return-object p1
.end method
