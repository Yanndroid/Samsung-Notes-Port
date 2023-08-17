.class public final Lio/grpc/util/AdvancedTlsX509TrustManager$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/AdvancedTlsX509TrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private socketAndEnginePeerVerifier:Lio/grpc/util/AdvancedTlsX509TrustManager$SslSocketAndEnginePeerVerifier;

.field private verification:Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;->CERTIFICATE_AND_HOST_NAME_VERIFICATION:Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;

    iput-object v0, p0, Lio/grpc/util/AdvancedTlsX509TrustManager$Builder;->verification:Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/util/AdvancedTlsX509TrustManager$1;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/util/AdvancedTlsX509TrustManager$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/grpc/util/AdvancedTlsX509TrustManager;
    .locals 4

    new-instance v0, Lio/grpc/util/AdvancedTlsX509TrustManager;

    iget-object v1, p0, Lio/grpc/util/AdvancedTlsX509TrustManager$Builder;->verification:Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;

    iget-object v2, p0, Lio/grpc/util/AdvancedTlsX509TrustManager$Builder;->socketAndEnginePeerVerifier:Lio/grpc/util/AdvancedTlsX509TrustManager$SslSocketAndEnginePeerVerifier;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/util/AdvancedTlsX509TrustManager;-><init>(Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;Lio/grpc/util/AdvancedTlsX509TrustManager$SslSocketAndEnginePeerVerifier;Lio/grpc/util/AdvancedTlsX509TrustManager$1;)V

    return-object v0
.end method

.method public setSslSocketAndEnginePeerVerifier(Lio/grpc/util/AdvancedTlsX509TrustManager$SslSocketAndEnginePeerVerifier;)Lio/grpc/util/AdvancedTlsX509TrustManager$Builder;
    .locals 0

    iput-object p1, p0, Lio/grpc/util/AdvancedTlsX509TrustManager$Builder;->socketAndEnginePeerVerifier:Lio/grpc/util/AdvancedTlsX509TrustManager$SslSocketAndEnginePeerVerifier;

    return-object p0
.end method

.method public setVerification(Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;)Lio/grpc/util/AdvancedTlsX509TrustManager$Builder;
    .locals 0

    iput-object p1, p0, Lio/grpc/util/AdvancedTlsX509TrustManager$Builder;->verification:Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;

    return-object p0
.end method
