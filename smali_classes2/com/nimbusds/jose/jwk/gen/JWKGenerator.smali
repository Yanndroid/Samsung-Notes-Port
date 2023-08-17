.class public abstract Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/nimbusds/jose/jwk/JWK;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public alg:Lcom/nimbusds/jose/Algorithm;

.field public keyStore:Ljava/security/KeyStore;

.field public kid:Ljava/lang/String;

.field public ops:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;"
        }
    .end annotation
.end field

.field public use:Lcom/nimbusds/jose/jwk/KeyUse;

.field public x5tKid:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public algorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/Algorithm;",
            ")",
            "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->alg:Lcom/nimbusds/jose/Algorithm;

    return-object p0
.end method

.method public abstract generate()Lcom/nimbusds/jose/jwk/JWK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->kid:Ljava/lang/String;

    return-object p0
.end method

.method public keyIDFromThumbprint(Z)Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->x5tKid:Z

    return-object p0
.end method

.method public keyOperations(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->ops:Ljava/util/Set;

    return-object p0
.end method

.method public keyStore(Ljava/security/KeyStore;)Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyStore;",
            ")",
            "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->keyStore:Ljava/security/KeyStore;

    return-object p0
.end method

.method public keyUse(Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ")",
            "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    return-object p0
.end method
