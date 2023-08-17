.class public Lcom/google/common/collect/ImmutableSet$Builder;
.super Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private hashCode:I

.field public hashTable:[Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;-><init>(I)V

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    return-void
.end method

.method private addDeduping(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v2

    :goto_0
    and-int/2addr v2, v0

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    aget-object v4, v3, v2

    if-nez v4, :cond_0

    aput-object p1, v3, v2

    iget v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashCode:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashCode:I

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;

    return-void

    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    array-length v1, v1

    if-gt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->addDeduping(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;

    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    :cond_1
    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;

    :cond_1
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/common/collect/ImmutableSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    iget-object v2, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v2}, Lcom/google/common/collect/ImmutableSet;->access$000(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    :goto_0
    move-object v3, v0

    new-instance v0, Lcom/google/common/collect/RegularImmutableSet;

    iget v4, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashCode:I

    iget-object v5, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    array-length v2, v5

    add-int/lit8 v6, v2, -0x1

    iget v7, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/common/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    iget-object v2, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/ImmutableSet;->access$100(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    iput v2, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    :goto_1
    iput-boolean v1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->forceCopy:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public combine(Lcom/google/common/collect/ImmutableSet$Builder;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSet$Builder<",
            "TE;>;)",
            "Lcom/google/common/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    iget p1, p1, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->addAll([Ljava/lang/Object;I)V

    :cond_1
    return-object p0
.end method
