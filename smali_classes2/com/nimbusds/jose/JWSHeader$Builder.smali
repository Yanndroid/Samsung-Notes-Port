.class public Lcom/nimbusds/jose/JWSHeader$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/JWSHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final alg:Lcom/nimbusds/jose/JWSAlgorithm;

.field private b64:Z

.field private crit:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cty:Ljava/lang/String;

.field private customParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private jku:Ljava/net/URI;

.field private jwk:Lcom/nimbusds/jose/jwk/JWK;

.field private kid:Ljava/lang/String;

.field private parsedBase64URL:Lcom/nimbusds/jose/util/Base64URL;

.field private typ:Lcom/nimbusds/jose/JOSEObjectType;

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
.method public constructor <init>(Lcom/nimbusds/jose/JWSAlgorithm;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->b64:Z

    invoke-virtual {p1}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nimbusds/jose/Algorithm;->NONE:Lcom/nimbusds/jose/Algorithm;

    invoke-virtual {v1}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->alg:Lcom/nimbusds/jose/JWSAlgorithm;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The JWS algorithm \"alg\" cannot be \"none\""

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/nimbusds/jose/JWSHeader;)V
    .locals 1

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/JWSHeader$Builder;-><init>(Lcom/nimbusds/jose/JWSAlgorithm;)V

    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getType()Lcom/nimbusds/jose/JOSEObjectType;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->typ:Lcom/nimbusds/jose/JOSEObjectType;

    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->cty:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getCriticalParams()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->crit:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getJWKURL()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->jku:Ljava/net/URI;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getJWK()Lcom/nimbusds/jose/jwk/JWK;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getX509CertURL()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5u:Ljava/net/URI;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getX509CertChain()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5c:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getKeyID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->kid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->isBase64URLEncodePayload()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->b64:Z

    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getCustomParams()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->customParams:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public base64URLEncodePayload(Z)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->b64:Z

    return-object p0
.end method

.method public build()Lcom/nimbusds/jose/JWSHeader;
    .locals 17

    move-object/from16 v0, p0

    new-instance v16, Lcom/nimbusds/jose/JWSHeader;

    iget-object v2, v0, Lcom/nimbusds/jose/JWSHeader$Builder;->alg:Lcom/nimbusds/jose/JWSAlgorithm;

    iget-object v3, v0, Lcom/nimbusds/jose/JWSHeader$Builder;->typ:Lcom/nimbusds/jose/JOSEObjectType;

    iget-object v4, v0, Lcom/nimbusds/jose/JWSHeader$Builder;->cty:Ljava/lang/String;

    iget-object v5, v0, Lcom/nimbusds/jose/JWSHeader$Builder;->crit:Ljava/util/Set;

    iget-object v6, v0, Lcom/nimbusds/jose/JWSHeader$Builder;->jku:Ljava/net/URI;

    iget-object v7, v0, Lcom/nimbusds/jose/JWSHeader$Builder;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    iget-object v8, v0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5u:Ljava/net/URI;

    iget-object v9, v0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v10, v0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v11, v0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5c:Ljava/util/List;

    iget-object v12, v0, Lcom/nimbusds/jose/JWSHeader$Builder;->kid:Ljava/lang/String;

    iget-boolean v13, v0, Lcom/nimbusds/jose/JWSHeader$Builder;->b64:Z

    iget-object v14, v0, Lcom/nimbusds/jose/JWSHeader$Builder;->customParams:Ljava/util/Map;

    iget-object v15, v0, Lcom/nimbusds/jose/JWSHeader$Builder;->parsedBase64URL:Lcom/nimbusds/jose/util/Base64URL;

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lcom/nimbusds/jose/JWSHeader;-><init>(Lcom/nimbusds/jose/JWSAlgorithm;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Lcom/nimbusds/jose/jwk/JWK;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/lang/String;ZLjava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V

    return-object v16
.end method

.method public contentType(Ljava/lang/String;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->cty:Ljava/lang/String;

    return-object p0
.end method

.method public criticalParams(Ljava/util/Set;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nimbusds/jose/JWSHeader$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->crit:Ljava/util/Set;

    return-object p0
.end method

.method public customParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 2

    invoke-static {}, Lcom/nimbusds/jose/JWSHeader;->getRegisteredParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->customParams:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->customParams:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->customParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The parameter name \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" matches a registered name"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public customParams(Ljava/util/Map;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nimbusds/jose/JWSHeader$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->customParams:Ljava/util/Map;

    return-object p0
.end method

.method public jwk(Lcom/nimbusds/jose/jwk/JWK;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    return-object p0
.end method

.method public jwkURL(Ljava/net/URI;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->jku:Ljava/net/URI;

    return-object p0
.end method

.method public keyID(Ljava/lang/String;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->kid:Ljava/lang/String;

    return-object p0
.end method

.method public parsedBase64URL(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->parsedBase64URL:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public type(Lcom/nimbusds/jose/JOSEObjectType;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->typ:Lcom/nimbusds/jose/JOSEObjectType;

    return-object p0
.end method

.method public x509CertChain(Ljava/util/List;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;)",
            "Lcom/nimbusds/jose/JWSHeader$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5c:Ljava/util/List;

    return-object p0
.end method

.method public x509CertSHA256Thumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public x509CertThumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public x509CertURL(Ljava/net/URI;)Lcom/nimbusds/jose/JWSHeader$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/JWSHeader$Builder;->x5u:Ljava/net/URI;

    return-object p0
.end method
