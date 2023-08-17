.class public final Lcom/nimbusds/jose/jwk/JWKSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# instance fields
.field private final matcher:Lcom/nimbusds/jose/jwk/JWKMatcher;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/JWKMatcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKSelector;->matcher:Lcom/nimbusds/jose/jwk/JWKMatcher;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The JWK matcher must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getMatcher()Lcom/nimbusds/jose/jwk/JWKMatcher;
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKSelector;->matcher:Lcom/nimbusds/jose/jwk/JWKMatcher;

    return-object v0
.end method

.method public select(Lcom/nimbusds/jose/jwk/JWKSet;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/JWKSet;",
            ")",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nimbusds/jose/jwk/JWK;

    iget-object v2, p0, Lcom/nimbusds/jose/jwk/JWKSelector;->matcher:Lcom/nimbusds/jose/jwk/JWKMatcher;

    invoke-virtual {v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->matches(Lcom/nimbusds/jose/jwk/JWK;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
