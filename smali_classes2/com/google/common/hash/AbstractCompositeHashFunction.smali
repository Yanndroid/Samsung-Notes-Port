.class abstract Lcom/google/common/hash/AbstractCompositeHashFunction;
.super Lcom/google/common/hash/AbstractHashFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/hash/ElementTypesAreNonnullByDefault;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public final functions:[Lcom/google/common/hash/HashFunction;


# direct methods
.method public varargs constructor <init>([Lcom/google/common/hash/HashFunction;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/common/hash/AbstractHashFunction;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/common/hash/AbstractCompositeHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method private fromHashers([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/Hasher;
    .locals 1

    new-instance v0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;-><init>(Lcom/google/common/hash/AbstractCompositeHashFunction;[Lcom/google/common/hash/Hasher;)V

    return-object v0
.end method


# virtual methods
.method public abstract makeHash([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 4

    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v0, v0

    new-array v1, v0, [Lcom/google/common/hash/Hasher;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/google/common/hash/AbstractCompositeHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/google/common/hash/HashFunction;->newHasher()Lcom/google/common/hash/Hasher;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/common/hash/AbstractCompositeHashFunction;->fromHashers([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public newHasher(I)Lcom/google/common/hash/Hasher;
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iget-object v1, p0, Lcom/google/common/hash/AbstractCompositeHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v1, v1

    new-array v2, v1, [Lcom/google/common/hash/Hasher;

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/google/common/hash/AbstractCompositeHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v3, v3, v0

    invoke-interface {v3, p1}, Lcom/google/common/hash/HashFunction;->newHasher(I)Lcom/google/common/hash/Hasher;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2}, Lcom/google/common/hash/AbstractCompositeHashFunction;->fromHashers([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method
