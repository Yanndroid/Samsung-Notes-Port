.class public final synthetic Lio/grpc/inprocess/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

.field public final synthetic b:Lio/grpc/internal/StreamListener$MessageProducer;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/inprocess/f;->a:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    iput-object p2, p0, Lio/grpc/inprocess/f;->b:Lio/grpc/internal/StreamListener$MessageProducer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/inprocess/f;->a:Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    iget-object v1, p0, Lio/grpc/inprocess/f;->b:Lio/grpc/internal/StreamListener$MessageProducer;

    invoke-static {v0, v1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->d(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;Lio/grpc/internal/StreamListener$MessageProducer;)V

    return-void
.end method
