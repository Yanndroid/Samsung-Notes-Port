.class public final synthetic Lio/grpc/okhttp/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/grpc/okhttp/OkHttpServer;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/okhttp/OkHttpServer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/okhttp/a;->a:Lio/grpc/okhttp/OkHttpServer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/a;->a:Lio/grpc/okhttp/OkHttpServer;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServer;->a(Lio/grpc/okhttp/OkHttpServer;)V

    return-void
.end method
