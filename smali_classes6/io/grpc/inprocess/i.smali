.class public final synthetic Lio/grpc/inprocess/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

.field public final synthetic b:Lio/grpc/Status;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;Lio/grpc/Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/inprocess/i;->a:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    iput-object p2, p0, Lio/grpc/inprocess/i;->b:Lio/grpc/Status;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/inprocess/i;->a:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    iget-object v1, p0, Lio/grpc/inprocess/i;->b:Lio/grpc/Status;

    invoke-static {v0, v1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->g(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;Lio/grpc/Status;)V

    return-void
.end method
