.class public Lorg/conscrypt/OpenSSLEvpCipherDESEDE$CBC$PKCS5Padding;
.super Lorg/conscrypt/OpenSSLEvpCipherDESEDE$CBC;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLEvpCipherDESEDE$CBC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PKCS5Padding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLEvpCipherDESEDE$CBC;-><init>(Lorg/conscrypt/OpenSSLCipher$Padding;)V

    return-void
.end method
