.class public final Lio/netty/handler/ssl/OpenSslCertificateException;
.super Ljava/security/cert/CertificateException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x4ceb89c6e7ed0e46L


# instance fields
.field private final errorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/netty/handler/ssl/OpenSslCertificateException;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lio/netty/handler/ssl/OpenSslCertificateException;->checkErrorCode(I)I

    move-result p1

    iput p1, p0, Lio/netty/handler/ssl/OpenSslCertificateException;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p3}, Lio/netty/handler/ssl/OpenSslCertificateException;->checkErrorCode(I)I

    move-result p1

    iput p1, p0, Lio/netty/handler/ssl/OpenSslCertificateException;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lio/netty/handler/ssl/OpenSslCertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method private static checkErrorCode(I)I
    .locals 3

    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lio/netty/internal/tcnative/CertificateVerifier;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\' invalid, see https://www.openssl.org/docs/man1.0.2/apps/verify.html."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public errorCode()I
    .locals 1

    iget v0, p0, Lio/netty/handler/ssl/OpenSslCertificateException;->errorCode:I

    return v0
.end method
