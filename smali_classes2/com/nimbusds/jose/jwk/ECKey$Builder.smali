.class public Lcom/nimbusds/jose/jwk/ECKey$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/jwk/ECKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private alg:Lcom/nimbusds/jose/Algorithm;

.field private final crv:Lcom/nimbusds/jose/jwk/Curve;

.field private d:Lcom/nimbusds/jose/util/Base64URL;

.field private kid:Ljava/lang/String;

.field private ks:Ljava/security/KeyStore;

.field private ops:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;"
        }
    .end annotation
.end field

.field private priv:Ljava/security/PrivateKey;

.field private use:Lcom/nimbusds/jose/jwk/KeyUse;

.field private final x:Lcom/nimbusds/jose/util/Base64URL;

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

.field private final y:Lcom/nimbusds/jose/util/Base64URL;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->crv:Lcom/nimbusds/jose/jwk/Curve;

    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->y:Lcom/nimbusds/jose/util/Base64URL;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The \'y\' coordinate must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The \'x\' coordinate must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The curve must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/Curve;Ljava/security/interfaces/ECPublicKey;)V
    .locals 2

    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v0

    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nimbusds/jose/jwk/ECKey;->encodeCoordinate(ILjava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v1

    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p2

    invoke-virtual {p2}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/nimbusds/jose/jwk/ECKey;->encodeCoordinate(ILjava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/nimbusds/jose/jwk/ECKey$Builder;-><init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/ECKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/ECKey;->access$000(Lcom/nimbusds/jose/jwk/ECKey;)Lcom/nimbusds/jose/jwk/Curve;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->crv:Lcom/nimbusds/jose/jwk/Curve;

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/ECKey;->access$100(Lcom/nimbusds/jose/jwk/ECKey;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x:Lcom/nimbusds/jose/util/Base64URL;

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/ECKey;->access$200(Lcom/nimbusds/jose/jwk/ECKey;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->y:Lcom/nimbusds/jose/util/Base64URL;

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/ECKey;->access$300(Lcom/nimbusds/jose/jwk/ECKey;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/ECKey;->access$400(Lcom/nimbusds/jose/jwk/ECKey;)Ljava/security/PrivateKey;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->priv:Ljava/security/PrivateKey;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyOperations()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->ops:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getAlgorithm()Lcom/nimbusds/jose/Algorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->kid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertURL()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5u:Ljava/net/URI;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertChain()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5c:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyStore()Ljava/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->ks:Ljava/security/KeyStore;

    return-void
.end method


# virtual methods
.method public algorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    return-object p0
.end method

.method public build()Lcom/nimbusds/jose/jwk/ECKey;
    .locals 15

    :try_start_0
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->priv:Ljava/security/PrivateKey;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nimbusds/jose/jwk/ECKey;

    iget-object v2, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->crv:Lcom/nimbusds/jose/jwk/Curve;

    iget-object v3, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v4, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->y:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v5, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    iget-object v6, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->ops:Ljava/util/Set;

    iget-object v7, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    iget-object v8, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->kid:Ljava/lang/String;

    iget-object v9, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5u:Ljava/net/URI;

    iget-object v10, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v11, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v12, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5c:Ljava/util/List;

    iget-object v13, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->ks:Ljava/security/KeyStore;

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/nimbusds/jose/jwk/ECKey;-><init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->priv:Ljava/security/PrivateKey;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/nimbusds/jose/jwk/ECKey;

    iget-object v2, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->crv:Lcom/nimbusds/jose/jwk/Curve;

    iget-object v3, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v4, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->y:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v5, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->priv:Ljava/security/PrivateKey;

    iget-object v6, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    iget-object v7, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->ops:Ljava/util/Set;

    iget-object v8, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    iget-object v9, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->kid:Ljava/lang/String;

    iget-object v10, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5u:Ljava/net/URI;

    iget-object v11, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v12, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v13, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5c:Ljava/util/List;

    iget-object v14, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->ks:Ljava/security/KeyStore;

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lcom/nimbusds/jose/jwk/ECKey;-><init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/nimbusds/jose/jwk/ECKey;

    iget-object v2, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->crv:Lcom/nimbusds/jose/jwk/Curve;

    iget-object v3, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v4, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->y:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v5, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v6, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    iget-object v7, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->ops:Ljava/util/Set;

    iget-object v8, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    iget-object v9, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->kid:Ljava/lang/String;

    iget-object v10, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5u:Ljava/net/URI;

    iget-object v11, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v12, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v13, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5c:Ljava/util/List;

    iget-object v14, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->ks:Ljava/security/KeyStore;

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lcom/nimbusds/jose/jwk/ECKey;-><init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->kid:Ljava/lang/String;

    return-object p0
.end method

.method public keyIDFromThumbprint()Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 1

    const-string v0, "SHA-256"

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->keyIDFromThumbprint(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/ECKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public keyIDFromThumbprint(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->crv:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/Curve;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "crv"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->EC:Lcom/nimbusds/jose/jwk/KeyType;

    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/KeyType;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kty"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x:Lcom/nimbusds/jose/util/Base64URL;

    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->y:Lcom/nimbusds/jose/util/Base64URL;

    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "y"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/nimbusds/jose/jwk/ThumbprintUtils;->compute(Ljava/lang/String;Ljava/util/LinkedHashMap;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->kid:Ljava/lang/String;

    return-object p0
.end method

.method public keyOperations(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/ECKey$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->ops:Ljava/util/Set;

    return-object p0
.end method

.method public keyStore(Ljava/security/KeyStore;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->ks:Ljava/security/KeyStore;

    return-object p0
.end method

.method public keyUse(Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    return-object p0
.end method

.method public privateKey(Ljava/security/PrivateKey;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 2

    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->privateKey(Ljava/security/interfaces/ECPrivateKey;)Lcom/nimbusds/jose/jwk/ECKey$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->priv:Ljava/security/PrivateKey;

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The private key algorithm must be EC"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public privateKey(Ljava/security/interfaces/ECPrivateKey;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v0

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/nimbusds/jose/jwk/ECKey;->encodeCoordinate(ILjava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    :cond_0
    return-object p0
.end method

.method public x509CertChain(Ljava/util/List;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/ECKey$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5c:Ljava/util/List;

    return-object p0
.end method

.method public x509CertSHA256Thumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public x509CertThumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public x509CertURL(Ljava/net/URI;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5u:Ljava/net/URI;

    return-object p0
.end method
