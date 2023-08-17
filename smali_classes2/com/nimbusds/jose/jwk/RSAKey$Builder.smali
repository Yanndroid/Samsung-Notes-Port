.class public Lcom/nimbusds/jose/jwk/RSAKey$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/jwk/RSAKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private alg:Lcom/nimbusds/jose/Algorithm;

.field private d:Lcom/nimbusds/jose/util/Base64URL;

.field private dp:Lcom/nimbusds/jose/util/Base64URL;

.field private dq:Lcom/nimbusds/jose/util/Base64URL;

.field private final e:Lcom/nimbusds/jose/util/Base64URL;

.field private kid:Ljava/lang/String;

.field private ks:Ljava/security/KeyStore;

.field private final n:Lcom/nimbusds/jose/util/Base64URL;

.field private ops:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;"
        }
    .end annotation
.end field

.field private oth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/nimbusds/jose/util/Base64URL;

.field private priv:Ljava/security/PrivateKey;

.field private q:Lcom/nimbusds/jose/util/Base64URL;

.field private qi:Lcom/nimbusds/jose/util/Base64URL;

.field private use:Lcom/nimbusds/jose/jwk/KeyUse;

.field private x5c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;"
        }
    .end annotation
.end field

.field private x5t:Lcom/nimbusds/jose/util/Base64URL;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private x5t256:Lcom/nimbusds/jose/util/Base64URL;

.field private x5u:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/RSAKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/RSAKey;->access$000(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->n:Lcom/nimbusds/jose/util/Base64URL;

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/RSAKey;->access$100(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->e:Lcom/nimbusds/jose/util/Base64URL;

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/RSAKey;->access$200(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/RSAKey;->access$300(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->p:Lcom/nimbusds/jose/util/Base64URL;

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/RSAKey;->access$400(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->q:Lcom/nimbusds/jose/util/Base64URL;

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/RSAKey;->access$500(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dp:Lcom/nimbusds/jose/util/Base64URL;

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/RSAKey;->access$600(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dq:Lcom/nimbusds/jose/util/Base64URL;

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/RSAKey;->access$700(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->qi:Lcom/nimbusds/jose/util/Base64URL;

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/RSAKey;->access$800(Lcom/nimbusds/jose/jwk/RSAKey;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->oth:Ljava/util/List;

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/RSAKey;->access$900(Lcom/nimbusds/jose/jwk/RSAKey;)Ljava/security/PrivateKey;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->priv:Ljava/security/PrivateKey;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyOperations()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->ops:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getAlgorithm()Lcom/nimbusds/jose/Algorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->kid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertURL()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5u:Ljava/net/URI;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertChain()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5c:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyStore()Ljava/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->ks:Ljava/security/KeyStore;

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->n:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->e:Lcom/nimbusds/jose/util/Base64URL;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The public exponent value must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The modulus value must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->n:Lcom/nimbusds/jose/util/Base64URL;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->e:Lcom/nimbusds/jose/util/Base64URL;

    return-void
.end method


# virtual methods
.method public algorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    return-object p0
.end method

.method public build()Lcom/nimbusds/jose/jwk/RSAKey;
    .locals 23

    move-object/from16 v1, p0

    :try_start_0
    new-instance v0, Lcom/nimbusds/jose/jwk/RSAKey;

    iget-object v3, v1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->n:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v4, v1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->e:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v5, v1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v6, v1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->p:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v7, v1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->q:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v8, v1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dp:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v9, v1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dq:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v10, v1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->qi:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v11, v1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->oth:Ljava/util/List;

    iget-object v12, v1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->priv:Ljava/security/PrivateKey;

    iget-object v13, v1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    iget-object v14, v1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->ops:Ljava/util/Set;

    iget-object v15, v1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    iget-object v2, v1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->kid:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5u:Ljava/net/URI;

    move-object/from16 v17, v15

    iget-object v15, v1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    move-object/from16 v18, v15

    iget-object v15, v1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    move-object/from16 v19, v15

    iget-object v15, v1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5c:Ljava/util/List;

    move-object/from16 v20, v15

    iget-object v15, v1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->ks:Ljava/security/KeyStore;

    move-object/from16 v21, v2

    move-object v2, v0

    move-object/from16 v22, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v21

    move-object/from16 v21, v22

    invoke-direct/range {v2 .. v21}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public firstCRTCoefficient(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->qi:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public firstFactorCRTExponent(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dp:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public firstPrimeFactor(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->p:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->kid:Ljava/lang/String;

    return-object p0
.end method

.method public keyIDFromThumbprint()Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 1

    const-string v0, "SHA-256"

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->keyIDFromThumbprint(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public keyIDFromThumbprint(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->e:Lcom/nimbusds/jose/util/Base64URL;

    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "e"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->RSA:Lcom/nimbusds/jose/jwk/KeyType;

    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/KeyType;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kty"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->n:Lcom/nimbusds/jose/util/Base64URL;

    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "n"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/nimbusds/jose/jwk/ThumbprintUtils;->compute(Ljava/lang/String;Ljava/util/LinkedHashMap;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->kid:Ljava/lang/String;

    return-object p0
.end method

.method public keyOperations(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/RSAKey$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->ops:Ljava/util/Set;

    return-object p0
.end method

.method public keyStore(Ljava/security/KeyStore;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->ks:Ljava/security/KeyStore;

    return-object p0
.end method

.method public keyUse(Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    return-object p0
.end method

.method public otherPrimes(Ljava/util/List;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/RSAKey$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->oth:Ljava/util/List;

    return-object p0
.end method

.method public privateExponent(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public privateKey(Ljava/security/PrivateKey;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 2

    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->privateKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->priv:Ljava/security/PrivateKey;

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The private key algorithm must be RSA"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public privateKey(Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 1

    invoke-interface {p1}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    invoke-interface {p1}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->p:Lcom/nimbusds/jose/util/Base64URL;

    invoke-interface {p1}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->q:Lcom/nimbusds/jose/util/Base64URL;

    invoke-interface {p1}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dp:Lcom/nimbusds/jose/util/Base64URL;

    invoke-interface {p1}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dq:Lcom/nimbusds/jose/util/Base64URL;

    invoke-interface {p1}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->qi:Lcom/nimbusds/jose/util/Base64URL;

    invoke-interface {p1}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getOtherPrimeInfo()[Ljava/security/spec/RSAOtherPrimeInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;->toList([Ljava/security/spec/RSAOtherPrimeInfo;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->oth:Ljava/util/List;

    return-object p0
.end method

.method public privateKey(Ljava/security/interfaces/RSAPrivateCrtKey;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->p:Lcom/nimbusds/jose/util/Base64URL;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->q:Lcom/nimbusds/jose/util/Base64URL;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dp:Lcom/nimbusds/jose/util/Base64URL;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dq:Lcom/nimbusds/jose/util/Base64URL;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->qi:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public privateKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 1

    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->privateKey(Ljava/security/interfaces/RSAPrivateCrtKey;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;

    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->privateKey(Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public secondFactorCRTExponent(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dq:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public secondPrimeFactor(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->q:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public x509CertChain(Ljava/util/List;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/RSAKey$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5c:Ljava/util/List;

    return-object p0
.end method

.method public x509CertSHA256Thumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public x509CertThumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public x509CertURL(Ljava/net/URI;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5u:Ljava/net/URI;

    return-object p0
.end method
