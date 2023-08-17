.class public final Lorg/conscrypt/OpenSSLSignature$SHA384RSA;
.super Lorg/conscrypt/OpenSSLSignature$RSAPKCS1Padding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA384RSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-wide v0, Lorg/conscrypt/EvpMdRef$SHA384;->EVP_MD:J

    invoke-direct {p0, v0, v1}, Lorg/conscrypt/OpenSSLSignature$RSAPKCS1Padding;-><init>(J)V

    return-void
.end method
