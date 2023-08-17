.class public final Lcom/nimbusds/jose/crypto/bc/BouncyCastleFIPSProviderSingleton;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bouncyCastleFIPSProvider:Lorg/bouncycastle/jcajce/provider/BouncyCastleFipsProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/bouncycastle/jcajce/provider/BouncyCastleFipsProvider;
    .locals 1

    sget-object v0, Lcom/nimbusds/jose/crypto/bc/BouncyCastleFIPSProviderSingleton;->bouncyCastleFIPSProvider:Lorg/bouncycastle/jcajce/provider/BouncyCastleFipsProvider;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jcajce/provider/BouncyCastleFipsProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/BouncyCastleFipsProvider;-><init>()V

    sput-object v0, Lcom/nimbusds/jose/crypto/bc/BouncyCastleFIPSProviderSingleton;->bouncyCastleFIPSProvider:Lorg/bouncycastle/jcajce/provider/BouncyCastleFipsProvider;

    :cond_0
    sget-object v0, Lcom/nimbusds/jose/crypto/bc/BouncyCastleFIPSProviderSingleton;->bouncyCastleFIPSProvider:Lorg/bouncycastle/jcajce/provider/BouncyCastleFipsProvider;

    return-object v0
.end method
