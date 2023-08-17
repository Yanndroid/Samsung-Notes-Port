.class public final Lcom/nimbusds/jose/crypto/bc/BouncyCastleProviderSingleton;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bouncyCastleProvider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/bouncycastle/jce/provider/BouncyCastleProvider;
    .locals 1

    sget-object v0, Lcom/nimbusds/jose/crypto/bc/BouncyCastleProviderSingleton;->bouncyCastleProvider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    sput-object v0, Lcom/nimbusds/jose/crypto/bc/BouncyCastleProviderSingleton;->bouncyCastleProvider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    :cond_0
    sget-object v0, Lcom/nimbusds/jose/crypto/bc/BouncyCastleProviderSingleton;->bouncyCastleProvider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    return-object v0
.end method
