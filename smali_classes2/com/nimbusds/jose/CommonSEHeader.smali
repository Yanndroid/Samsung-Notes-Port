.class abstract Lcom/nimbusds/jose/CommonSEHeader;
.super Lcom/nimbusds/jose/Header;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final jku:Ljava/net/URI;

.field private final jwk:Lcom/nimbusds/jose/jwk/JWK;

.field private final kid:Ljava/lang/String;

.field private final x5c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;"
        }
    .end annotation
.end field

.field private final x5t:Lcom/nimbusds/jose/util/Base64URL;

.field private final x5t256:Lcom/nimbusds/jose/util/Base64URL;

.field private final x5u:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Lcom/nimbusds/jose/jwk/JWK;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/Algorithm;",
            "Lcom/nimbusds/jose/JOSEObjectType;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/jwk/JWK;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    invoke-direct/range {v0 .. v6}, Lcom/nimbusds/jose/Header;-><init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V

    move-object v0, p5

    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->jku:Ljava/net/URI;

    move-object v0, p6

    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    move-object/from16 v0, p7

    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->x5u:Ljava/net/URI;

    move-object/from16 v0, p8

    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    move-object/from16 v0, p9

    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v8, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    move-object/from16 v0, p11

    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->kid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIncludedParams()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/nimbusds/jose/Header;->getIncludedParams()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->jku:Ljava/net/URI;

    if-eqz v1, :cond_0

    const-string v1, "jku"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    if-eqz v1, :cond_1

    const-string v1, "jwk"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5u:Ljava/net/URI;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "x5u"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "x5t"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "x5t#S256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "x5c"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->kid:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, "kid"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method public getJWK()Lcom/nimbusds/jose/jwk/JWK;
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/CommonSEHeader;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    return-object v0
.end method

.method public getJWKURL()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/CommonSEHeader;->jku:Ljava/net/URI;

    return-object v0
.end method

.method public getKeyID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/CommonSEHeader;->kid:Ljava/lang/String;

    return-object v0
.end method

.method public getX509CertChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    return-object v0
.end method

.method public getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    return-object v0
.end method

.method public getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    return-object v0
.end method

.method public getX509CertURL()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5u:Ljava/net/URI;

    return-object v0
.end method

.method public toJSONObject()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/nimbusds/jose/Header;->toJSONObject()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->jku:Ljava/net/URI;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jku"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/JWK;->toJSONObject()Ljava/util/Map;

    move-result-object v1

    const-string v2, "jwk"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5u:Ljava/net/URI;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x5u"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x5t"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x5t#S256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nimbusds/jose/util/Base64;

    invoke-virtual {v3}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "x5c"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->kid:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v2, "kid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v0
.end method
