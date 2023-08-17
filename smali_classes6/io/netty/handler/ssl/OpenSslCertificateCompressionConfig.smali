.class public final Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;,
        Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;,
        Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final pairList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>([Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;->pairList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>([Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;-><init>([Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;)V

    return-void
.end method

.method public static newBuilder()Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$Builder;
    .locals 2

    new-instance v0, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$Builder;-><init>(Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$1;)V

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;->pairList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
