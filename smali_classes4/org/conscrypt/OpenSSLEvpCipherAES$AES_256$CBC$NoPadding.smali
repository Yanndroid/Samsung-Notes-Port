.class public Lorg/conscrypt/OpenSSLEvpCipherAES$AES_256$CBC$NoPadding;
.super Lorg/conscrypt/OpenSSLEvpCipherAES$AES_256$CBC;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLEvpCipherAES$AES_256$CBC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLEvpCipherAES$AES_256$CBC;-><init>(Lorg/conscrypt/OpenSSLCipher$Padding;)V

    return-void
.end method
