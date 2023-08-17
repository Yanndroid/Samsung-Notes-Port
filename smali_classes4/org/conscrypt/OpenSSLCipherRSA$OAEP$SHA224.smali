.class public final Lorg/conscrypt/OpenSSLCipherRSA$OAEP$SHA224;
.super Lorg/conscrypt/OpenSSLCipherRSA$OAEP;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLCipherRSA$OAEP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA224"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-wide v0, Lorg/conscrypt/EvpMdRef$SHA224;->EVP_MD:J

    sget v2, Lorg/conscrypt/EvpMdRef$SHA224;->SIZE_BYTES:I

    invoke-direct {p0, v0, v1, v2}, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;-><init>(JI)V

    return-void
.end method
