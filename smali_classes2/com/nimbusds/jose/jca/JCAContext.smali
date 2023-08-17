.class public Lcom/nimbusds/jose/jca/JCAContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private provider:Ljava/security/Provider;

.field private randomGen:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/nimbusds/jose/jca/JCAContext;-><init>(Ljava/security/Provider;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nimbusds/jose/jca/JCAContext;->provider:Ljava/security/Provider;

    iput-object p2, p0, Lcom/nimbusds/jose/jca/JCAContext;->randomGen:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public getProvider()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/jca/JCAContext;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/jca/JCAContext;->randomGen:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    :goto_0
    return-object v0
.end method

.method public setProvider(Ljava/security/Provider;)V
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/jca/JCAContext;->provider:Ljava/security/Provider;

    return-void
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)V
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/jca/JCAContext;->randomGen:Ljava/security/SecureRandom;

    return-void
.end method
