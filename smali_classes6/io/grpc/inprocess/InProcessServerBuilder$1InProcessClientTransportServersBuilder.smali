.class final Lio/grpc/inprocess/InProcessServerBuilder$1InProcessClientTransportServersBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/inprocess/InProcessServerBuilder;-><init>(Ljava/net/SocketAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InProcessClientTransportServersBuilder"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/inprocess/InProcessServerBuilder;


# direct methods
.method public constructor <init>(Lio/grpc/inprocess/InProcessServerBuilder;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/inprocess/InProcessServerBuilder$1InProcessClientTransportServersBuilder;->this$0:Lio/grpc/inprocess/InProcessServerBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object v0, p0, Lio/grpc/inprocess/InProcessServerBuilder$1InProcessClientTransportServersBuilder;->this$0:Lio/grpc/inprocess/InProcessServerBuilder;

    invoke-virtual {v0, p1}, Lio/grpc/inprocess/InProcessServerBuilder;->buildTransportServers(Ljava/util/List;)Lio/grpc/inprocess/InProcessServer;

    move-result-object p1

    return-object p1
.end method
