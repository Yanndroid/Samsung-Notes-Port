.class public Lcom/nimbusds/jose/jwk/gen/OctetSequenceKeyGenerator;
.super Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
        "Lcom/nimbusds/jose/jwk/OctetSequenceKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final MIN_KEY_SIZE_BITS:I = 0x70


# instance fields
.field private secureRandom:Ljava/security/SecureRandom;

.field private final size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;-><init>()V

    const/16 v0, 0x70

    if-lt p1, v0, :cond_1

    rem-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    iput p1, p0, Lcom/nimbusds/jose/jwk/gen/OctetSequenceKeyGenerator;->size:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The key size in bits must be divisible by 8"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The key size must be at least 112 bits"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic generate()Lcom/nimbusds/jose/jwk/JWK;
    .locals 1

    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/gen/OctetSequenceKeyGenerator;->generate()Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    move-result-object v0

    return-object v0
.end method

.method public generate()Lcom/nimbusds/jose/jwk/OctetSequenceKey;
    .locals 2

    iget v0, p0, Lcom/nimbusds/jose/jwk/gen/OctetSequenceKeyGenerator;->size:I

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/OctetSequenceKeyGenerator;->secureRandom:Ljava/security/SecureRandom;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;-><init>(Lcom/nimbusds/jose/util/Base64URL;)V

    iget-object v0, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    invoke-virtual {v1, v0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->keyUse(Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->ops:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->keyOperations(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->alg:Lcom/nimbusds/jose/Algorithm;

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->algorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->keyStore(Ljava/security/KeyStore;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->x5tKid:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->keyIDFromThumbprint()Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->kid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    :goto_1
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->build()Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    move-result-object v0

    return-object v0
.end method

.method public secureRandom(Ljava/security/SecureRandom;)Lcom/nimbusds/jose/jwk/gen/OctetSequenceKeyGenerator;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/gen/OctetSequenceKeyGenerator;->secureRandom:Ljava/security/SecureRandom;

    return-object p0
.end method
