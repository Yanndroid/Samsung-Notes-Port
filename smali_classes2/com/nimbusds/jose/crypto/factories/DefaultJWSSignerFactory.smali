.class public Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nimbusds/jose/produce/JWSSignerFactory;


# static fields
.field public static final SUPPORTED_ALGORITHMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWSAlgorithm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final jcaContext:Lcom/nimbusds/jose/jca/JCAContext;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sget-object v1, Lcom/nimbusds/jose/crypto/impl/MACProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/nimbusds/jose/crypto/impl/RSASSAProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ECDSAProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/nimbusds/jose/crypto/impl/EdDSAProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nimbusds/jose/jca/JCAContext;

    invoke-direct {v0}, Lcom/nimbusds/jose/jca/JCAContext;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    return-void
.end method


# virtual methods
.method public createJWSSigner(Lcom/nimbusds/jose/jwk/JWK;)Lcom/nimbusds/jose/JWSSigner;
    .locals 3

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/KeyUse;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/nimbusds/jose/jwk/JWKException;

    const-string v0, "The JWK use must be sig (signature) or unspecified"

    invoke-direct {p1, v0}, Lcom/nimbusds/jose/jwk/JWKException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    instance-of v0, p1, Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/nimbusds/jose/crypto/MACSigner;

    check-cast p1, Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/crypto/MACSigner;-><init>(Lcom/nimbusds/jose/jwk/OctetSequenceKey;)V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lcom/nimbusds/jose/jwk/RSAKey;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/nimbusds/jose/crypto/RSASSASigner;

    check-cast p1, Lcom/nimbusds/jose/jwk/RSAKey;

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/crypto/RSASSASigner;-><init>(Lcom/nimbusds/jose/jwk/RSAKey;)V

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lcom/nimbusds/jose/jwk/ECKey;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/nimbusds/jose/crypto/ECDSASigner;

    check-cast p1, Lcom/nimbusds/jose/jwk/ECKey;

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/crypto/ECDSASigner;-><init>(Lcom/nimbusds/jose/jwk/ECKey;)V

    goto :goto_1

    :cond_4
    instance-of v0, p1, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/nimbusds/jose/crypto/Ed25519Signer;

    check-cast p1, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/crypto/Ed25519Signer;-><init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;)V

    :goto_1
    invoke-interface {v0}, Lcom/nimbusds/jose/jca/JCAAware;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p1

    iget-object v1, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    invoke-virtual {v1}, Lcom/nimbusds/jose/jca/JCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/jca/JCAContext;->setSecureRandom(Ljava/security/SecureRandom;)V

    invoke-interface {v0}, Lcom/nimbusds/jose/jca/JCAAware;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p1

    iget-object v1, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    invoke-virtual {v1}, Lcom/nimbusds/jose/jca/JCAContext;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/jca/JCAContext;->setProvider(Ljava/security/Provider;)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported JWK type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {}, Lcom/nimbusds/jose/jwk/JWKException;->expectedPrivate()Lcom/nimbusds/jose/jwk/JWKException;

    move-result-object p1

    throw p1
.end method

.method public createJWSSigner(Lcom/nimbusds/jose/jwk/JWK;Lcom/nimbusds/jose/JWSAlgorithm;)Lcom/nimbusds/jose/JWSSigner;
    .locals 2

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/KeyUse;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/nimbusds/jose/jwk/JWKException;

    const-string p2, "The JWK use must be sig (signature) or unspecified"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/jwk/JWKException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/MACProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of p2, p1, Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    if-eqz p2, :cond_2

    new-instance p2, Lcom/nimbusds/jose/crypto/MACSigner;

    check-cast p1, Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    invoke-direct {p2, p1}, Lcom/nimbusds/jose/crypto/MACSigner;-><init>(Lcom/nimbusds/jose/jwk/OctetSequenceKey;)V

    goto :goto_1

    :cond_2
    const-class p1, Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/JWKException;->expectedClass(Ljava/lang/Class;)Lcom/nimbusds/jose/jwk/JWKException;

    move-result-object p1

    throw p1

    :cond_3
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/RSASSAProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of p2, p1, Lcom/nimbusds/jose/jwk/RSAKey;

    if-eqz p2, :cond_4

    new-instance p2, Lcom/nimbusds/jose/crypto/RSASSASigner;

    check-cast p1, Lcom/nimbusds/jose/jwk/RSAKey;

    invoke-direct {p2, p1}, Lcom/nimbusds/jose/crypto/RSASSASigner;-><init>(Lcom/nimbusds/jose/jwk/RSAKey;)V

    goto :goto_1

    :cond_4
    const-class p1, Lcom/nimbusds/jose/jwk/RSAKey;

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/JWKException;->expectedClass(Ljava/lang/Class;)Lcom/nimbusds/jose/jwk/JWKException;

    move-result-object p1

    throw p1

    :cond_5
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/ECDSAProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of p2, p1, Lcom/nimbusds/jose/jwk/ECKey;

    if-eqz p2, :cond_6

    new-instance p2, Lcom/nimbusds/jose/crypto/ECDSASigner;

    check-cast p1, Lcom/nimbusds/jose/jwk/ECKey;

    invoke-direct {p2, p1}, Lcom/nimbusds/jose/crypto/ECDSASigner;-><init>(Lcom/nimbusds/jose/jwk/ECKey;)V

    goto :goto_1

    :cond_6
    const-class p1, Lcom/nimbusds/jose/jwk/ECKey;

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/JWKException;->expectedClass(Ljava/lang/Class;)Lcom/nimbusds/jose/jwk/JWKException;

    move-result-object p1

    throw p1

    :cond_7
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/EdDSAProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    instance-of p2, p1, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    if-eqz p2, :cond_8

    new-instance p2, Lcom/nimbusds/jose/crypto/Ed25519Signer;

    check-cast p1, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    invoke-direct {p2, p1}, Lcom/nimbusds/jose/crypto/Ed25519Signer;-><init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;)V

    :goto_1
    invoke-interface {p2}, Lcom/nimbusds/jose/jca/JCAAware;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p1

    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/jca/JCAContext;->setSecureRandom(Ljava/security/SecureRandom;)V

    invoke-interface {p2}, Lcom/nimbusds/jose/jca/JCAAware;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p1

    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JCAContext;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/jca/JCAContext;->setProvider(Ljava/security/Provider;)V

    return-object p2

    :cond_8
    const-class p1, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/JWKException;->expectedClass(Ljava/lang/Class;)Lcom/nimbusds/jose/jwk/JWKException;

    move-result-object p1

    throw p1

    :cond_9
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported JWS algorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-static {}, Lcom/nimbusds/jose/jwk/JWKException;->expectedPrivate()Lcom/nimbusds/jose/jwk/JWKException;

    move-result-object p1

    throw p1
.end method

.method public getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    return-object v0
.end method

.method public supportedJWSAlgorithms()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWSAlgorithm;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    return-object v0
.end method
