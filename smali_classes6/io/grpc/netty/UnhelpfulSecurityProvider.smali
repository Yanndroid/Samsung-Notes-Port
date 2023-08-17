.class final Lio/grpc/netty/UnhelpfulSecurityProvider;
.super Ljava/security/Provider;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "UnhelpfulSecurityProvider"

    const-wide/16 v1, 0x0

    const-string v3, "A Provider that provides nothing"

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    return-void
.end method
