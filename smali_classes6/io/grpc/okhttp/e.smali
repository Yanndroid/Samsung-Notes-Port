.class public final synthetic Lio/grpc/okhttp/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/grpc/okhttp/OkHttpServerTransport;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/okhttp/OkHttpServerTransport;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/okhttp/e;->a:Lio/grpc/okhttp/OkHttpServerTransport;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/e;->a:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->shutdown()V

    return-void
.end method
