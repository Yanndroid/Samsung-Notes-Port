.class public final Lio/grpc/InternalServerProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lio/grpc/Internal;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builderForPort(Lio/grpc/ServerProvider;I)Lio/grpc/ServerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerProvider;",
            "I)",
            "Lio/grpc/ServerBuilder<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/grpc/ServerProvider;->builderForPort(I)Lio/grpc/ServerBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static newServerBuilderForPort(Lio/grpc/ServerProvider;ILio/grpc/ServerCredentials;)Lio/grpc/ServerProvider$NewServerBuilderResult;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/ServerProvider;->newServerBuilderForPort(ILio/grpc/ServerCredentials;)Lio/grpc/ServerProvider$NewServerBuilderResult;

    move-result-object p0

    return-object p0
.end method
