.class public final synthetic Lio/grpc/inprocess/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/inprocess/g;->a:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/grpc/inprocess/g;->a:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->f(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;)V

    return-void
.end method
