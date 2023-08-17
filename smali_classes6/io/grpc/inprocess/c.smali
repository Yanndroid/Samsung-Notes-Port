.class public final synthetic Lio/grpc/inprocess/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/inprocess/c;->a:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/grpc/inprocess/c;->a:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->f(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;)V

    return-void
.end method
