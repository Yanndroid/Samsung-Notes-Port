.class public final enum Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/ct/SignedCertificateTimestamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignatureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

.field public static final enum CERTIFICATE_TIMESTAMP:Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

.field public static final enum TREE_HASH:Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    const-string v1, "CERTIFICATE_TIMESTAMP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->CERTIFICATE_TIMESTAMP:Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    new-instance v1, Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    const-string v3, "TREE_HASH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->TREE_HASH:Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->$VALUES:[Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;
    .locals 1

    const-class v0, Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    return-object p0
.end method

.method public static values()[Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;
    .locals 1

    sget-object v0, Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->$VALUES:[Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    invoke-virtual {v0}, [Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    return-object v0
.end method
