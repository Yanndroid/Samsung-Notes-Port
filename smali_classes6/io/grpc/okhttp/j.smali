.class public final synthetic Lio/grpc/okhttp/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;

.field public final synthetic b:Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/okhttp/j;->a:Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;

    iput-object p2, p0, Lio/grpc/okhttp/j;->b:Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/okhttp/j;->a:Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;

    iget-object v1, p0, Lio/grpc/okhttp/j;->b:Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;

    invoke-static {v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->a(Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)V

    return-void
.end method
