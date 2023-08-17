.class public interface abstract Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SSL_SIGN_ECDSA_SECP256R1_SHA256:I

.field public static final SSL_SIGN_ECDSA_SECP384R1_SHA384:I

.field public static final SSL_SIGN_ECDSA_SECP521R1_SHA512:I

.field public static final SSL_SIGN_ECDSA_SHA1:I

.field public static final SSL_SIGN_ED25519:I

.field public static final SSL_SIGN_RSA_PKCS1_MD5_SHA1:I

.field public static final SSL_SIGN_RSA_PKCS1_SHA1:I

.field public static final SSL_SIGN_RSA_PKCS1_SHA256:I

.field public static final SSL_SIGN_RSA_PKCS1_SHA384:I

.field public static final SSL_SIGN_RSA_PKCS1_SHA512:I

.field public static final SSL_SIGN_RSA_PSS_RSAE_SHA256:I

.field public static final SSL_SIGN_RSA_PSS_RSAE_SHA384:I

.field public static final SSL_SIGN_RSA_PSS_RSAE_SHA512:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_RSA_PKCS1_SHA1:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_RSA_PKCS1_SHA1:I

    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_RSA_PKCS1_SHA256:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_RSA_PKCS1_SHA256:I

    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_RSA_PKCS1_SHA384:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_RSA_PKCS1_SHA384:I

    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_RSA_PKCS1_SHA512:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_RSA_PKCS1_SHA512:I

    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_ECDSA_SHA1:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_ECDSA_SHA1:I

    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_ECDSA_SECP256R1_SHA256:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_ECDSA_SECP256R1_SHA256:I

    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_ECDSA_SECP384R1_SHA384:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_ECDSA_SECP384R1_SHA384:I

    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_ECDSA_SECP521R1_SHA512:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_ECDSA_SECP521R1_SHA512:I

    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_RSA_PSS_RSAE_SHA256:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_RSA_PSS_RSAE_SHA256:I

    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_RSA_PSS_RSAE_SHA384:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_RSA_PSS_RSAE_SHA384:I

    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_RSA_PSS_RSAE_SHA512:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_RSA_PSS_RSAE_SHA512:I

    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_ED25519:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_ED25519:I

    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_RSA_PKCS1_MD5_SHA1:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_RSA_PKCS1_MD5_SHA1:I

    return-void
.end method


# virtual methods
.method public abstract decrypt(Ljavax/net/ssl/SSLEngine;[B)[B
.end method

.method public abstract sign(Ljavax/net/ssl/SSLEngine;I[B)[B
.end method
