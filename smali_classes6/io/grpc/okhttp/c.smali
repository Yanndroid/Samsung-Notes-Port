.class public final synthetic Lio/grpc/okhttp/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/grpc/okhttp/OkHttpServerStream$TransportState;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/okhttp/c;->a:Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    iput-object p2, p0, Lio/grpc/okhttp/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/okhttp/c;->a:Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    iget-object v1, p0, Lio/grpc/okhttp/c;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->a(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Ljava/util/List;)V

    return-void
.end method
