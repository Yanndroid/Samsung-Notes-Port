.class public final enum Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/ct/SignedCertificateTimestamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Origin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;

.field public static final enum EMBEDDED:Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;

.field public static final enum OCSP_RESPONSE:Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;

.field public static final enum TLS_EXTENSION:Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;

    const-string v1, "EMBEDDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;->EMBEDDED:Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;

    new-instance v1, Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;

    const-string v3, "TLS_EXTENSION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;->TLS_EXTENSION:Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;

    new-instance v3, Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;

    const-string v5, "OCSP_RESPONSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;->OCSP_RESPONSE:Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;->$VALUES:[Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;

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

.method public static valueOf(Ljava/lang/String;)Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .locals 1

    const-class v0, Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;

    return-object p0
.end method

.method public static values()[Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .locals 1

    sget-object v0, Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;->$VALUES:[Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;

    invoke-virtual {v0}, [Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;

    return-object v0
.end method
