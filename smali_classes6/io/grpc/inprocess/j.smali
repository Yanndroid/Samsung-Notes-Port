.class public final synthetic Lio/grpc/inprocess/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

.field public final synthetic b:Lio/grpc/Status;

.field public final synthetic c:Lio/grpc/Metadata;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/inprocess/j;->a:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    iput-object p2, p0, Lio/grpc/inprocess/j;->b:Lio/grpc/Status;

    iput-object p3, p0, Lio/grpc/inprocess/j;->c:Lio/grpc/Metadata;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lio/grpc/inprocess/j;->a:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    iget-object v1, p0, Lio/grpc/inprocess/j;->b:Lio/grpc/Status;

    iget-object v2, p0, Lio/grpc/inprocess/j;->c:Lio/grpc/Metadata;

    invoke-static {v0, v1, v2}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->c(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;Lio/grpc/Status;Lio/grpc/Metadata;)V

    return-void
.end method
