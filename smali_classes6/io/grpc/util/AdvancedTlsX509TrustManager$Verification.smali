.class public final enum Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/AdvancedTlsX509TrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Verification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;

.field public static final enum CERTIFICATE_AND_HOST_NAME_VERIFICATION:Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;

.field public static final enum CERTIFICATE_ONLY_VERIFICATION:Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;

.field public static final enum INSECURELY_SKIP_ALL_VERIFICATION:Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;

    const-string v1, "CERTIFICATE_AND_HOST_NAME_VERIFICATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;->CERTIFICATE_AND_HOST_NAME_VERIFICATION:Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;

    new-instance v1, Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;

    const-string v3, "CERTIFICATE_ONLY_VERIFICATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;->CERTIFICATE_ONLY_VERIFICATION:Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;

    new-instance v3, Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;

    const-string v5, "INSECURELY_SKIP_ALL_VERIFICATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;->INSECURELY_SKIP_ALL_VERIFICATION:Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;->$VALUES:[Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;

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

.method public static valueOf(Ljava/lang/String;)Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;
    .locals 1

    const-class v0, Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;

    return-object p0
.end method

.method public static values()[Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;
    .locals 1

    sget-object v0, Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;->$VALUES:[Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;

    invoke-virtual {v0}, [Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/util/AdvancedTlsX509TrustManager$Verification;

    return-object v0
.end method
