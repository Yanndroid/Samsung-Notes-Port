.class public final enum Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlgorithmMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

.field public static final enum Both:Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

.field public static final enum Compress:Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

.field public static final enum Decompress:Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    const-string v1, "Compress"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;->Compress:Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    new-instance v1, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    const-string v3, "Decompress"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;->Decompress:Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    new-instance v3, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    const-string v5, "Both"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;->Both:Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;->$VALUES:[Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;
    .locals 1

    const-class v0, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;
    .locals 1

    sget-object v0, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;->$VALUES:[Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    invoke-virtual {v0}, [Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    return-object v0
.end method
