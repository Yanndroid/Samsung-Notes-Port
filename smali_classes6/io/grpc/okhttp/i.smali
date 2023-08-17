.class public final synthetic Lio/grpc/okhttp/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/grpc/okhttp/OkHttpServerTransport;

.field public final synthetic b:Lio/grpc/internal/SerializingExecutor;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/internal/SerializingExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/okhttp/i;->a:Lio/grpc/okhttp/OkHttpServerTransport;

    iput-object p2, p0, Lio/grpc/okhttp/i;->b:Lio/grpc/internal/SerializingExecutor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/okhttp/i;->a:Lio/grpc/okhttp/OkHttpServerTransport;

    iget-object v1, p0, Lio/grpc/okhttp/i;->b:Lio/grpc/internal/SerializingExecutor;

    invoke-static {v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport;->e(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/internal/SerializingExecutor;)V

    return-void
.end method
