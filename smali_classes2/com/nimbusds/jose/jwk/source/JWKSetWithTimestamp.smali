.class public final Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# instance fields
.field private final jwkSet:Lcom/nimbusds/jose/jwk/JWKSet;

.field private final timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/JWKSet;)V
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;-><init>(Lcom/nimbusds/jose/jwk/JWKSet;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/JWKSet;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;->jwkSet:Lcom/nimbusds/jose/jwk/JWKSet;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;->timestamp:Ljava/util/Date;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The timestamp must not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The JWK set must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getJWKSet()Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;->jwkSet:Lcom/nimbusds/jose/jwk/JWKSet;

    return-object v0
.end method
