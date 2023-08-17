.class public final enum Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/ct/SignedCertificateTimestamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;

.field public static final enum V1:Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;

    const-string v1, "V1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;->V1:Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;

    aput-object v0, v1, v2

    sput-object v1, Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;->$VALUES:[Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;

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

.method public static valueOf(Ljava/lang/String;)Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;
    .locals 1

    const-class v0, Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;

    return-object p0
.end method

.method public static values()[Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;
    .locals 1

    sget-object v0, Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;->$VALUES:[Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;

    invoke-virtual {v0}, [Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/conscrypt/ct/SignedCertificateTimestamp$Version;

    return-object v0
.end method
