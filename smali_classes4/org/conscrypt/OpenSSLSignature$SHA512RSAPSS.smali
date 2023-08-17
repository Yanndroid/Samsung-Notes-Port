.class public final Lorg/conscrypt/OpenSSLSignature$SHA512RSAPSS;
.super Lorg/conscrypt/OpenSSLSignature$RSAPSSPadding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA512RSAPSS"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    sget-wide v0, Lorg/conscrypt/EvpMdRef$SHA512;->EVP_MD:J

    sget v2, Lorg/conscrypt/EvpMdRef$SHA512;->SIZE_BYTES:I

    const-string v3, "SHA-512"

    invoke-direct {p0, v0, v1, v3, v2}, Lorg/conscrypt/OpenSSLSignature$RSAPSSPadding;-><init>(JLjava/lang/String;I)V

    return-void
.end method
