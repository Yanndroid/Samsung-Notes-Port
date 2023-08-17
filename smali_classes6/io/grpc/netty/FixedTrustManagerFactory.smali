.class final Lio/grpc/netty/FixedTrustManagerFactory;
.super Ljavax/net/ssl/TrustManagerFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/FixedTrustManagerFactory$FixedTrustManagerFactorySpi;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/net/ssl/TrustManager;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/grpc/netty/FixedTrustManagerFactory$FixedTrustManagerFactorySpi;

    invoke-direct {v0, p1}, Lio/grpc/netty/FixedTrustManagerFactory$FixedTrustManagerFactorySpi;-><init>(Ljava/util/List;)V

    new-instance p1, Lio/grpc/netty/UnhelpfulSecurityProvider;

    invoke-direct {p1}, Lio/grpc/netty/UnhelpfulSecurityProvider;-><init>()V

    const-string v1, "FakeAlgorithm"

    invoke-direct {p0, v0, p1, v1}, Ljavax/net/ssl/TrustManagerFactory;-><init>(Ljavax/net/ssl/TrustManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-void
.end method
