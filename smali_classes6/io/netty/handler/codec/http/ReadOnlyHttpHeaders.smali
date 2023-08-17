.class public final Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;
.super Lio/netty/handler/codec/http/HttpHeaders;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyValueIterator;,
        Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;,
        Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringIterator;,
        Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;
    }
.end annotation


# instance fields
.field private final nameValuePairs:[Ljava/lang/CharSequence;


# direct methods
.method public varargs constructor <init>(Z[Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpHeaders;-><init>()V

    array-length v0, p2

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->validateHeaders([Ljava/lang/CharSequence;)V

    :cond_0
    iput-object p2, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    return-void

    :cond_1
    invoke-static {}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->newInvalidArraySizeException()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method public static synthetic access$200(Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;)[Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method private get0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    invoke-static {p1}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-static {v2}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result v3

    if-ne v3, v0, :cond_0

    invoke-static {v2, p1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, 0x1

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static newInvalidArraySizeException()Ljava/lang/IllegalArgumentException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nameValuePairs must be arrays of [name, value] pairs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static varargs validateHeaders([Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    sget-object v1, Lio/netty/handler/codec/http/DefaultHttpHeaders;->HttpNameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    aget-object v2, p0, v0

    invoke-interface {v1, v2}, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->validateName(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "read only"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "read only"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "read only"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addShort(Ljava/lang/CharSequence;S)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "read only"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()Lio/netty/handler/codec/http/HttpHeaders;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->get0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->containsValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    move p3, v0

    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    array-length v3, v2

    if-ge p3, v3, :cond_3

    aget-object v2, v2, p3

    invoke-static {v2, p1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2, p2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_1
    iget-object v2, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    array-length v3, v2

    if-ge p3, v3, :cond_3

    aget-object v2, v2, p3

    invoke-static {v2, p1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2, p2}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 p3, p3, 0x2

    goto :goto_1

    :cond_3
    return v0
.end method

.method public entries()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v3, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->get0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v3, v3, v2

    invoke-static {v3}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result v4

    if-ne v4, v0, :cond_1

    invoke-static {v3, p1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getInt(Ljava/lang/CharSequence;I)I
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->get0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    invoke-virtual {p2, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToInt(Ljava/lang/CharSequence;)I

    move-result p2

    :goto_0
    return p2
.end method

.method public getInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;
    .locals 1

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->get0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToInt(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getShort(Ljava/lang/CharSequence;)Ljava/lang/Short;
    .locals 1

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->get0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToShort(Ljava/lang/CharSequence;)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getShort(Ljava/lang/CharSequence;S)S
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->get0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    invoke-virtual {p2, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToShort(Ljava/lang/CharSequence;)S

    move-result p2

    :goto_0
    return p2
.end method

.method public getTimeMillis(Ljava/lang/CharSequence;J)J
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->get0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    invoke-virtual {p2, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToTimeMillis(Ljava/lang/CharSequence;)J

    move-result-wide p2

    :goto_0
    return-wide p2
.end method

.method public getTimeMillis(Ljava/lang/CharSequence;)Ljava/lang/Long;
    .locals 2

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->get0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToTimeMillis(Ljava/lang/CharSequence;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringIterator;-><init>(Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$1;)V

    return-object v0
.end method

.method public iteratorCharSequence()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;-><init>(Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$1;)V

    return-object v0
.end method

.method public names()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "read only"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "read only"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "read only"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "read only"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShort(Ljava/lang/CharSequence;S)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "read only"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    array-length v0, v0

    ushr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public valueCharSequenceIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyValueIterator;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyValueIterator;-><init>(Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public valueStringIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;-><init>(Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;Ljava/lang/CharSequence;)V

    return-object v0
.end method
