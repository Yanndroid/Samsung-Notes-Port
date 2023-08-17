.class public final Lio/grpc/InternalGlobalInterceptors;
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

.method public static getClientInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/grpc/GlobalInterceptors;->getClientInterceptors()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getServerInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ServerInterceptor;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/grpc/GlobalInterceptors;->getServerInterceptors()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getServerStreamTracerFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/grpc/GlobalInterceptors;->getServerStreamTracerFactories()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setInterceptorsTracers(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/grpc/ServerInterceptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/grpc/GlobalInterceptors;->setInterceptorsTracers(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
