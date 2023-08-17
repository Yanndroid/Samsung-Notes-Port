.class public final synthetic Lio/grpc/okhttp/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;


# instance fields
.field public final synthetic a:Lio/grpc/okhttp/OkHttpServerBuilder;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/okhttp/OkHttpServerBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/okhttp/b;->a:Lio/grpc/okhttp/OkHttpServerBuilder;

    return-void
.end method


# virtual methods
.method public final buildClientTransportServers(Ljava/util/List;)Lio/grpc/internal/InternalServer;
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/b;->a:Lio/grpc/okhttp/OkHttpServerBuilder;

    invoke-virtual {v0, p1}, Lio/grpc/okhttp/OkHttpServerBuilder;->buildTransportServers(Ljava/util/List;)Lio/grpc/internal/InternalServer;

    move-result-object p1

    return-object p1
.end method
