.class public final Lcom/nimbusds/jose/JWSAlgorithm$Family;
.super Lcom/nimbusds/jose/AlgorithmFamily;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/JWSAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Family"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nimbusds/jose/AlgorithmFamily<",
        "Lcom/nimbusds/jose/JWSAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field public static final EC:Lcom/nimbusds/jose/JWSAlgorithm$Family;

.field public static final ED:Lcom/nimbusds/jose/JWSAlgorithm$Family;

.field public static final HMAC_SHA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

.field public static final RSA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

.field public static final SIGNATURE:Lcom/nimbusds/jose/JWSAlgorithm$Family;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/nimbusds/jose/JWSAlgorithm$Family;

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/nimbusds/jose/JWSAlgorithm;

    sget-object v3, Lcom/nimbusds/jose/JWSAlgorithm;->HS256:Lcom/nimbusds/jose/JWSAlgorithm;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/nimbusds/jose/JWSAlgorithm;->HS384:Lcom/nimbusds/jose/JWSAlgorithm;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/nimbusds/jose/JWSAlgorithm;->HS512:Lcom/nimbusds/jose/JWSAlgorithm;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-direct {v0, v2}, Lcom/nimbusds/jose/JWSAlgorithm$Family;-><init>([Lcom/nimbusds/jose/JWSAlgorithm;)V

    sput-object v0, Lcom/nimbusds/jose/JWSAlgorithm$Family;->HMAC_SHA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    new-instance v0, Lcom/nimbusds/jose/JWSAlgorithm$Family;

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/nimbusds/jose/JWSAlgorithm;

    sget-object v3, Lcom/nimbusds/jose/JWSAlgorithm;->RS256:Lcom/nimbusds/jose/JWSAlgorithm;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nimbusds/jose/JWSAlgorithm;->RS384:Lcom/nimbusds/jose/JWSAlgorithm;

    aput-object v3, v2, v5

    sget-object v3, Lcom/nimbusds/jose/JWSAlgorithm;->RS512:Lcom/nimbusds/jose/JWSAlgorithm;

    aput-object v3, v2, v6

    sget-object v3, Lcom/nimbusds/jose/JWSAlgorithm;->PS256:Lcom/nimbusds/jose/JWSAlgorithm;

    aput-object v3, v2, v1

    sget-object v3, Lcom/nimbusds/jose/JWSAlgorithm;->PS384:Lcom/nimbusds/jose/JWSAlgorithm;

    const/4 v7, 0x4

    aput-object v3, v2, v7

    sget-object v3, Lcom/nimbusds/jose/JWSAlgorithm;->PS512:Lcom/nimbusds/jose/JWSAlgorithm;

    const/4 v8, 0x5

    aput-object v3, v2, v8

    invoke-direct {v0, v2}, Lcom/nimbusds/jose/JWSAlgorithm$Family;-><init>([Lcom/nimbusds/jose/JWSAlgorithm;)V

    sput-object v0, Lcom/nimbusds/jose/JWSAlgorithm$Family;->RSA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    new-instance v2, Lcom/nimbusds/jose/JWSAlgorithm$Family;

    new-array v3, v7, [Lcom/nimbusds/jose/JWSAlgorithm;

    sget-object v7, Lcom/nimbusds/jose/JWSAlgorithm;->ES256:Lcom/nimbusds/jose/JWSAlgorithm;

    aput-object v7, v3, v4

    sget-object v7, Lcom/nimbusds/jose/JWSAlgorithm;->ES256K:Lcom/nimbusds/jose/JWSAlgorithm;

    aput-object v7, v3, v5

    sget-object v7, Lcom/nimbusds/jose/JWSAlgorithm;->ES384:Lcom/nimbusds/jose/JWSAlgorithm;

    aput-object v7, v3, v6

    sget-object v7, Lcom/nimbusds/jose/JWSAlgorithm;->ES512:Lcom/nimbusds/jose/JWSAlgorithm;

    aput-object v7, v3, v1

    invoke-direct {v2, v3}, Lcom/nimbusds/jose/JWSAlgorithm$Family;-><init>([Lcom/nimbusds/jose/JWSAlgorithm;)V

    sput-object v2, Lcom/nimbusds/jose/JWSAlgorithm$Family;->EC:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    new-instance v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;

    new-array v3, v5, [Lcom/nimbusds/jose/JWSAlgorithm;

    sget-object v7, Lcom/nimbusds/jose/JWSAlgorithm;->EdDSA:Lcom/nimbusds/jose/JWSAlgorithm;

    aput-object v7, v3, v4

    invoke-direct {v1, v3}, Lcom/nimbusds/jose/JWSAlgorithm$Family;-><init>([Lcom/nimbusds/jose/JWSAlgorithm;)V

    sput-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->ED:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    new-instance v3, Lcom/nimbusds/jose/JWSAlgorithm$Family;

    new-array v7, v4, [Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {v0, v7}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    new-array v6, v6, [[Lcom/nimbusds/jose/JWSAlgorithm;

    new-array v7, v4, [Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {v2, v7}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/nimbusds/jose/JWSAlgorithm;

    aput-object v2, v6, v4

    new-array v2, v4, [Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/nimbusds/jose/JWSAlgorithm;

    aput-object v1, v6, v5

    invoke-static {v0, v6}, Lcom/nimbusds/jose/util/ArrayUtils;->concat([Ljava/lang/Object;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-direct {v3, v0}, Lcom/nimbusds/jose/JWSAlgorithm$Family;-><init>([Lcom/nimbusds/jose/JWSAlgorithm;)V

    sput-object v3, Lcom/nimbusds/jose/JWSAlgorithm$Family;->SIGNATURE:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    return-void
.end method

.method public varargs constructor <init>([Lcom/nimbusds/jose/JWSAlgorithm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;-><init>([Lcom/nimbusds/jose/Algorithm;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
