.class abstract Lorg/conscrypt/OpenSSLSignature$RSAPKCS1Padding;
.super Lorg/conscrypt/OpenSSLSignature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RSAPKCS1Padding"
.end annotation


# direct methods
.method public constructor <init>(J)V
    .locals 2

    sget-object v0, Lorg/conscrypt/OpenSSLSignature$EngineType;->RSA:Lorg/conscrypt/OpenSSLSignature$EngineType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/conscrypt/OpenSSLSignature;-><init>(JLorg/conscrypt/OpenSSLSignature$EngineType;Lorg/conscrypt/OpenSSLSignature$1;)V

    return-void
.end method


# virtual methods
.method public final configureEVP_PKEY_CTX(J)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_padding(JI)V

    return-void
.end method
