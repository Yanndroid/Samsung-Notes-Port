.class public abstract Lio/grpc/ProxiedSocketAddress;
.super Ljava/net/SocketAddress;
.source "SourceFile"


# annotations
.annotation build Lio/grpc/ExperimentalApi;
    value = "https://github.com/grpc/grpc-java/issues/5279"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    return-void
.end method
