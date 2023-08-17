.class public Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/jwk/JWKMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private algs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;"
        }
    .end annotation
.end field

.field private curves:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
        }
    .end annotation
.end field

.field private hasID:Z

.field private hasUse:Z

.field private ids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxSizeBits:I

.field private minSizeBits:I

.field private ops:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;"
        }
    .end annotation
.end field

.field private privateOnly:Z

.field private publicOnly:Z

.field private sizesBits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private types:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;"
        }
    .end annotation
.end field

.field private uses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;"
        }
    .end annotation
.end field

.field private x5tS256s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->hasUse:Z

    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->hasID:Z

    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->privateOnly:Z

    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->publicOnly:Z

    iput v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->minSizeBits:I

    iput v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->maxSizeBits:I

    return-void
.end method


# virtual methods
.method public algorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algs:Ljava/util/Set;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algs:Ljava/util/Set;

    :goto_0
    return-object p0
.end method

.method public algorithms(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algs:Ljava/util/Set;

    return-object p0
.end method

.method public varargs algorithms([Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algorithms(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    return-object p0
.end method

.method public build()Lcom/nimbusds/jose/jwk/JWKMatcher;
    .locals 17

    move-object/from16 v0, p0

    new-instance v16, Lcom/nimbusds/jose/jwk/JWKMatcher;

    iget-object v2, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->types:Ljava/util/Set;

    iget-object v3, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->uses:Ljava/util/Set;

    iget-object v4, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->ops:Ljava/util/Set;

    iget-object v5, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algs:Ljava/util/Set;

    iget-object v6, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->ids:Ljava/util/Set;

    iget-boolean v7, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->hasUse:Z

    iget-boolean v8, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->hasID:Z

    iget-boolean v9, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->privateOnly:Z

    iget-boolean v10, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->publicOnly:Z

    iget v11, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->minSizeBits:I

    iget v12, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->maxSizeBits:I

    iget-object v13, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->sizesBits:Ljava/util/Set;

    iget-object v14, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->curves:Ljava/util/Set;

    iget-object v15, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->x5tS256s:Ljava/util/Set;

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZZZIILjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object v16
.end method

.method public curve(Lcom/nimbusds/jose/jwk/Curve;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->curves:Ljava/util/Set;

    return-object p0
.end method

.method public curves(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->curves:Ljava/util/Set;

    return-object p0
.end method

.method public varargs curves([Lcom/nimbusds/jose/jwk/Curve;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->curves(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    return-object p0
.end method

.method public hasKeyID(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->hasID:Z

    return-object p0
.end method

.method public hasKeyUse(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->hasUse:Z

    return-object p0
.end method

.method public keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->ids:Ljava/util/Set;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->ids:Ljava/util/Set;

    :goto_0
    return-object p0
.end method

.method public keyIDs(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->ids:Ljava/util/Set;

    return-object p0
.end method

.method public varargs keyIDs([Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyIDs(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    return-object p0
.end method

.method public keyOperation(Lcom/nimbusds/jose/jwk/KeyOperation;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->ops:Ljava/util/Set;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->ops:Ljava/util/Set;

    :goto_0
    return-object p0
.end method

.method public keyOperations(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->ops:Ljava/util/Set;

    return-object p0
.end method

.method public varargs keyOperations([Lcom/nimbusds/jose/jwk/KeyOperation;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyOperations(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    return-object p0
.end method

.method public keySize(I)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->sizesBits:Ljava/util/Set;

    return-object p0
.end method

.method public keySizes(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->sizesBits:Ljava/util/Set;

    return-object p0
.end method

.method public varargs keySizes([I)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 4

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keySizes(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    return-object p0
.end method

.method public keyType(Lcom/nimbusds/jose/jwk/KeyType;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->types:Ljava/util/Set;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->types:Ljava/util/Set;

    :goto_0
    return-object p0
.end method

.method public keyTypes(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->types:Ljava/util/Set;

    return-object p0
.end method

.method public varargs keyTypes([Lcom/nimbusds/jose/jwk/KeyType;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyTypes(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    return-object p0
.end method

.method public keyUse(Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->uses:Ljava/util/Set;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->uses:Ljava/util/Set;

    :goto_0
    return-object p0
.end method

.method public keyUses(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->uses:Ljava/util/Set;

    return-object p0
.end method

.method public varargs keyUses([Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyUses(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    return-object p0
.end method

.method public maxKeySize(I)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0

    iput p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->maxSizeBits:I

    return-object p0
.end method

.method public minKeySize(I)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0

    iput p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->minSizeBits:I

    return-object p0
.end method

.method public privateOnly(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->privateOnly:Z

    return-object p0
.end method

.method public publicOnly(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->publicOnly:Z

    return-object p0
.end method

.method public x509CertSHA256Thumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->x5tS256s:Ljava/util/Set;

    return-object p0
.end method

.method public x509CertSHA256Thumbprints(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->x5tS256s:Ljava/util/Set;

    return-object p0
.end method

.method public varargs x509CertSHA256Thumbprints([Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->x509CertSHA256Thumbprints(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object p1

    return-object p1
.end method
