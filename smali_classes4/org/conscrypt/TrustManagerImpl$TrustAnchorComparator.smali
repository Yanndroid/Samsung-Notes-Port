.class Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/TrustManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrustAnchorComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/security/cert/TrustAnchor;",
        ">;"
    }
.end annotation


# static fields
.field private static final CERT_COMPARATOR:Lorg/conscrypt/CertificatePriorityComparator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/conscrypt/CertificatePriorityComparator;

    invoke-direct {v0}, Lorg/conscrypt/CertificatePriorityComparator;-><init>()V

    sput-object v0, Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;->CERT_COMPARATOR:Lorg/conscrypt/CertificatePriorityComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/conscrypt/TrustManagerImpl$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/security/cert/TrustAnchor;

    check-cast p2, Ljava/security/cert/TrustAnchor;

    invoke-virtual {p0, p1, p2}, Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;->compare(Ljava/security/cert/TrustAnchor;Ljava/security/cert/TrustAnchor;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/security/cert/TrustAnchor;Ljava/security/cert/TrustAnchor;)I
    .locals 1

    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-virtual {p2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object p2

    sget-object v0, Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;->CERT_COMPARATOR:Lorg/conscrypt/CertificatePriorityComparator;

    invoke-virtual {v0, p1, p2}, Lorg/conscrypt/CertificatePriorityComparator;->compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I

    move-result p1

    return p1
.end method
