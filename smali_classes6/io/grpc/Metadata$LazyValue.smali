.class final Lio/grpc/Metadata$LazyValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final marshaller:Lio/grpc/Metadata$BinaryStreamMarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$BinaryStreamMarshaller<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile serialized:[B

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/grpc/Metadata$BinaryStreamMarshaller;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Metadata$BinaryStreamMarshaller<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/Metadata$LazyValue;->marshaller:Lio/grpc/Metadata$BinaryStreamMarshaller;

    iput-object p2, p0, Lio/grpc/Metadata$LazyValue;->value:Ljava/lang/Object;

    return-void
.end method

.method public static create(Lio/grpc/Metadata$Key;Ljava/lang/Object;)Lio/grpc/Metadata$LazyValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT;>;TT;)",
            "Lio/grpc/Metadata$LazyValue<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/grpc/Metadata$LazyValue;

    invoke-static {p0}, Lio/grpc/Metadata$LazyValue;->getBinaryStreamMarshaller(Lio/grpc/Metadata$Key;)Lio/grpc/Metadata$BinaryStreamMarshaller;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/Metadata$BinaryStreamMarshaller;

    invoke-direct {v0, p0, p1}, Lio/grpc/Metadata$LazyValue;-><init>(Lio/grpc/Metadata$BinaryStreamMarshaller;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static getBinaryStreamMarshaller(Lio/grpc/Metadata$Key;)Lio/grpc/Metadata$BinaryStreamMarshaller;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT;>;)",
            "Lio/grpc/Metadata$BinaryStreamMarshaller<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-class v0, Lio/grpc/Metadata$BinaryStreamMarshaller;

    invoke-virtual {p0, v0}, Lio/grpc/Metadata$Key;->getMarshaller(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/Metadata$BinaryStreamMarshaller;

    return-object p0
.end method


# virtual methods
.method public toBytes()[B
    .locals 1

    iget-object v0, p0, Lio/grpc/Metadata$LazyValue;->serialized:[B

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/Metadata$LazyValue;->serialized:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/grpc/Metadata$LazyValue;->toStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/Metadata;->access$1300(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lio/grpc/Metadata$LazyValue;->serialized:[B

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/Metadata$LazyValue;->serialized:[B

    return-object v0
.end method

.method public toObject(Lio/grpc/Metadata$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT2;>;)TT2;"
        }
    .end annotation

    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->serializesToStreams()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/grpc/Metadata$LazyValue;->getBinaryStreamMarshaller(Lio/grpc/Metadata$Key;)Lio/grpc/Metadata$BinaryStreamMarshaller;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/grpc/Metadata$LazyValue;->toStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/grpc/Metadata$BinaryStreamMarshaller;->parseStream(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lio/grpc/Metadata$LazyValue;->toBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/grpc/Metadata$Key;->parseBytes([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toStream()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lio/grpc/Metadata$LazyValue;->marshaller:Lio/grpc/Metadata$BinaryStreamMarshaller;

    iget-object v1, p0, Lio/grpc/Metadata$LazyValue;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/grpc/Metadata$BinaryStreamMarshaller;->toStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
