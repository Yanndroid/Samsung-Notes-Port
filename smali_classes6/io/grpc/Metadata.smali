.class public final Lio/grpc/Metadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/Metadata$TrustedAsciiMarshaller;,
        Lio/grpc/Metadata$TrustedAsciiKey;,
        Lio/grpc/Metadata$AsciiKey;,
        Lio/grpc/Metadata$LazyValue;,
        Lio/grpc/Metadata$LazyStreamBinaryKey;,
        Lio/grpc/Metadata$BinaryKey;,
        Lio/grpc/Metadata$Key;,
        Lio/grpc/Metadata$BinaryStreamMarshaller;,
        Lio/grpc/Metadata$AsciiMarshaller;,
        Lio/grpc/Metadata$BinaryMarshaller;,
        Lio/grpc/Metadata$IterableAt;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$AsciiMarshaller<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BASE64_ENCODING_OMIT_PADDING:Lcom/google/common/io/BaseEncoding;

.field public static final BINARY_BYTE_MARSHALLER:Lio/grpc/Metadata$BinaryMarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$BinaryMarshaller<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final BINARY_HEADER_SUFFIX:Ljava/lang/String; = "-bin"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private namesAndValues:[Ljava/lang/Object;

.field private size:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/Metadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/Metadata;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lio/grpc/Metadata$1;

    invoke-direct {v0}, Lio/grpc/Metadata$1;-><init>()V

    sput-object v0, Lio/grpc/Metadata;->BINARY_BYTE_MARSHALLER:Lio/grpc/Metadata$BinaryMarshaller;

    new-instance v0, Lio/grpc/Metadata$2;

    invoke-direct {v0}, Lio/grpc/Metadata$2;-><init>()V

    sput-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->omitPadding()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    sput-object v0, Lio/grpc/Metadata;->BASE64_ENCODING_OMIT_PADDING:Lcom/google/common/io/BaseEncoding;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/grpc/Metadata;->size:I

    iput-object p2, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    return-void
.end method

.method public varargs constructor <init>(I[[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/Metadata;-><init>(I[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>([[B)V
    .locals 1

    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0, p1}, Lio/grpc/Metadata;-><init>(I[[B)V

    return-void
.end method

.method public static synthetic access$100(Lio/grpc/Metadata;)I
    .locals 0

    iget p0, p0, Lio/grpc/Metadata;->size:I

    return p0
.end method

.method public static synthetic access$1100()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lio/grpc/Metadata;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static synthetic access$1300(Ljava/io/InputStream;)[B
    .locals 0

    invoke-static {p0}, Lio/grpc/Metadata;->streamToBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lio/grpc/Metadata;I)[B
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lio/grpc/Metadata;[B[B)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/Metadata;->bytesEqual([B[B)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lio/grpc/Metadata;ILio/grpc/Metadata$Key;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/Metadata;->valueAsT(ILio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private bytesEqual([B[B)Z
    .locals 0

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method private cap()I
    .locals 1

    iget-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private expand(I)V
    .locals 3

    new-array p1, p1, [Ljava/lang/Object;

    invoke-direct {p0}, Lio/grpc/Metadata;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iput-object p1, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    return-void
.end method

.method private isEmpty()Z
    .locals 1

    iget v0, p0, Lio/grpc/Metadata;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private len()I
    .locals 1

    iget v0, p0, Lio/grpc/Metadata;->size:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private maybeExpand()V
    .locals 2

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v0

    invoke-direct {p0}, Lio/grpc/Metadata;->cap()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lio/grpc/Metadata;->expand(I)V

    :cond_1
    return-void
.end method

.method private name(I[B)V
    .locals 1

    iget-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    aput-object p2, v0, p1

    return-void
.end method

.method private name(I)[B
    .locals 1

    iget-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    aget-object p1, v0, p1

    check-cast p1, [B

    return-object p1
.end method

.method private static streamToBytes(Ljava/io/InputStream;)[B
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failure reading serialized stream"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private value(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private value(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    instance-of v0, v0, [[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/grpc/Metadata;->cap()I

    move-result v0

    invoke-direct {p0, v0}, Lio/grpc/Metadata;->expand(I)V

    :cond_0
    iget-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aput-object p2, v0, p1

    return-void
.end method

.method private value(I[B)V
    .locals 1

    iget-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aput-object p2, v0, p1

    return-void
.end method

.method private valueAsBytes(I)[B
    .locals 1

    invoke-direct {p0, p1}, Lio/grpc/Metadata;->value(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    check-cast p1, [B

    return-object p1

    :cond_0
    check-cast p1, Lio/grpc/Metadata$LazyValue;

    invoke-virtual {p1}, Lio/grpc/Metadata$LazyValue;->toBytes()[B

    move-result-object p1

    return-object p1
.end method

.method private valueAsBytesOrStream(I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lio/grpc/Metadata;->value(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Lio/grpc/Metadata$LazyValue;

    invoke-virtual {p1}, Lio/grpc/Metadata$LazyValue;->toStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method private valueAsT(ILio/grpc/Metadata$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lio/grpc/Metadata$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/grpc/Metadata;->value(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    check-cast p1, [B

    invoke-virtual {p2, p1}, Lio/grpc/Metadata$Key;->parseBytes([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p1, Lio/grpc/Metadata$LazyValue;

    invoke-virtual {p1, p2}, Lio/grpc/Metadata$LazyValue;->toObject(Lio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public containsKey(Lio/grpc/Metadata$Key;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Metadata$Key<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lio/grpc/Metadata;->size:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v2

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lio/grpc/Metadata;->bytesEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public discardAll(Lio/grpc/Metadata$Key;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT;>;)V"
        }
    .end annotation

    .annotation build Lio/grpc/ExperimentalApi;
        value = "https://github.com/grpc/grpc-java/issues/4691"
    .end annotation

    invoke-direct {p0}, Lio/grpc/Metadata;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lio/grpc/Metadata;->size:I

    if-ge v0, v2, :cond_2

    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v2

    invoke-direct {p0, v0}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lio/grpc/Metadata;->bytesEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lio/grpc/Metadata;->name(I[B)V

    invoke-direct {p0, v0}, Lio/grpc/Metadata;->value(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lio/grpc/Metadata;->value(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    mul-int/lit8 v0, v1, 0x2

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v1, p0, Lio/grpc/Metadata;->size:I

    return-void
.end method

.method public get(Lio/grpc/Metadata$Key;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget v0, p0, Lio/grpc/Metadata;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v1

    invoke-direct {p0, v0}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lio/grpc/Metadata;->bytesEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1}, Lio/grpc/Metadata;->valueAsT(ILio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAll(Lio/grpc/Metadata$Key;)Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lio/grpc/Metadata;->size:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v1

    invoke-direct {p0, v0}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lio/grpc/Metadata;->bytesEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lio/grpc/Metadata$IterableAt;

    invoke-direct {v1, p0, p1, v0, v2}, Lio/grpc/Metadata$IterableAt;-><init>(Lio/grpc/Metadata;Lio/grpc/Metadata$Key;ILio/grpc/Metadata$1;)V

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public headerCount()I
    .locals 1

    iget v0, p0, Lio/grpc/Metadata;->size:I

    return v0
.end method

.method public keys()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lio/grpc/Metadata;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget v1, p0, Lio/grpc/Metadata;->size:I

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lio/grpc/Metadata;->size:I

    if-ge v2, v3, :cond_1

    new-instance v3, Ljava/lang/String;

    invoke-direct {p0, v2}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/String;-><init>([BI)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public merge(Lio/grpc/Metadata;)V
    .locals 5

    invoke-direct {p1}, Lio/grpc/Metadata;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lio/grpc/Metadata;->cap()I

    move-result v0

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lio/grpc/Metadata;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p1}, Lio/grpc/Metadata;->len()I

    move-result v1

    if-ge v0, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v0

    invoke-direct {p1}, Lio/grpc/Metadata;->len()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lio/grpc/Metadata;->expand(I)V

    :cond_2
    iget-object v0, p1, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v3

    invoke-direct {p1}, Lio/grpc/Metadata;->len()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lio/grpc/Metadata;->size:I

    iget p1, p1, Lio/grpc/Metadata;->size:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/grpc/Metadata;->size:I

    return-void
.end method

.method public merge(Lio/grpc/Metadata;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Metadata;",
            "Ljava/util/Set<",
            "Lio/grpc/Metadata$Key<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/Metadata$Key;

    invoke-virtual {v1}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_1
    iget v1, p1, Lio/grpc/Metadata;->size:I

    if-ge p2, v1, :cond_2

    invoke-direct {p1, p2}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lio/grpc/Metadata;->maybeExpand()V

    iget v1, p0, Lio/grpc/Metadata;->size:I

    invoke-direct {p1, p2}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lio/grpc/Metadata;->name(I[B)V

    iget v1, p0, Lio/grpc/Metadata;->size:I

    invoke-direct {p1, p2}, Lio/grpc/Metadata;->value(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lio/grpc/Metadata;->value(ILjava/lang/Object;)V

    iget v1, p0, Lio/grpc/Metadata;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/grpc/Metadata;->size:I

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lio/grpc/Metadata;->maybeExpand()V

    iget v0, p0, Lio/grpc/Metadata;->size:I

    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/grpc/Metadata;->name(I[B)V

    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->serializesToStreams()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lio/grpc/Metadata;->size:I

    invoke-static {p1, p2}, Lio/grpc/Metadata$LazyValue;->create(Lio/grpc/Metadata$Key;Ljava/lang/Object;)Lio/grpc/Metadata$LazyValue;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/grpc/Metadata;->value(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lio/grpc/Metadata;->size:I

    invoke-virtual {p1, p2}, Lio/grpc/Metadata$Key;->toBytes(Ljava/lang/Object;)[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/grpc/Metadata;->value(I[B)V

    :goto_0
    iget p1, p0, Lio/grpc/Metadata;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/grpc/Metadata;->size:I

    return-void
.end method

.method public remove(Lio/grpc/Metadata$Key;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT;>;TT;)Z"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lio/grpc/Metadata;->size:I

    if-ge v1, v2, :cond_2

    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v2

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lio/grpc/Metadata;->bytesEqual([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v1, p1}, Lio/grpc/Metadata;->valueAsT(ILio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 p1, v1, 0x2

    const/4 p2, 0x1

    add-int/2addr v1, p2

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v0

    sub-int/2addr v0, v1

    iget-object v2, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    invoke-static {v2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lio/grpc/Metadata;->size:I

    sub-int/2addr p1, p2

    iput p1, p0, Lio/grpc/Metadata;->size:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/Metadata;->name(I[B)V

    iget p1, p0, Lio/grpc/Metadata;->size:I

    invoke-direct {p0, p1, v0}, Lio/grpc/Metadata;->value(I[B)V

    return p2

    :cond_2
    return v0
.end method

.method public removeAll(Lio/grpc/Metadata$Key;)Ljava/lang/Iterable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    invoke-direct {p0}, Lio/grpc/Metadata;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    :goto_0
    iget v4, p0, Lio/grpc/Metadata;->size:I

    if-ge v0, v4, :cond_3

    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v4

    invoke-direct {p0, v0}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lio/grpc/Metadata;->bytesEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-direct {p0, v0, p1}, Lio/grpc/Metadata;->valueAsT(ILio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-direct {p0, v0}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lio/grpc/Metadata;->name(I[B)V

    invoke-direct {p0, v0}, Lio/grpc/Metadata;->value(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lio/grpc/Metadata;->value(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    mul-int/lit8 v0, v2, 0x2

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v4

    invoke-static {p1, v0, v4, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v2, p0, Lio/grpc/Metadata;->size:I

    return-object v3
.end method

.method public serialize()[[B
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v0

    new-array v0, v0, [[B

    iget-object v1, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    instance-of v2, v1, [[B

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_0
    :goto_0
    iget v1, p0, Lio/grpc/Metadata;->size:I

    if-ge v3, v1, :cond_1

    mul-int/lit8 v1, v3, 0x2

    invoke-direct {p0, v3}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v3}, Lio/grpc/Metadata;->valueAsBytes(I)[B

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public serializePartial()[Ljava/lang/Object;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lio/grpc/Metadata;->size:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->valueAsBytesOrStream(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Metadata("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lio/grpc/Metadata;->size:I

    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v3

    sget-object v4, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "-bin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lio/grpc/Metadata;->BASE64_ENCODING_OMIT_PADDING:Lcom/google/common/io/BaseEncoding;

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->valueAsBytes(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->valueAsBytes(I)[B

    move-result-object v3

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
