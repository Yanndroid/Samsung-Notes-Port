.class public final Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final algorithmList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$Builder;->algorithmList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$1;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAlgorithm(Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;)Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$Builder;
    .locals 3

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$Builder;->algorithmList:Ljava/util/List;

    new-instance v1, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;-><init>(Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;
    .locals 3

    new-instance v0, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;

    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$Builder;->algorithmList:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;-><init>([Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$1;)V

    return-object v0
.end method
