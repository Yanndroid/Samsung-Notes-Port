.class public final Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlgorithmConfig"
.end annotation


# instance fields
.field private final algorithm:Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;

.field private final mode:Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;


# direct methods
.method private constructor <init>(Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;

    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;->algorithm:Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;

    const-string p1, "mode"

    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;->mode:Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;-><init>(Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;)V

    return-void
.end method


# virtual methods
.method public algorithm()Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;->algorithm:Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;

    return-object v0
.end method

.method public mode()Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;->mode:Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    return-object v0
.end method
