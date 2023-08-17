.class public final Lio/grpc/CompressorRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lio/grpc/ExperimentalApi;
    value = "https://github.com/grpc/grpc-java/issues/1704"
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/CompressorRegistry;


# instance fields
.field private final compressors:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lio/grpc/Compressor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/grpc/CompressorRegistry;

    const/4 v1, 0x2

    new-array v1, v1, [Lio/grpc/Compressor;

    new-instance v2, Lio/grpc/Codec$Gzip;

    invoke-direct {v2}, Lio/grpc/Codec$Gzip;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lio/grpc/CompressorRegistry;-><init>([Lio/grpc/Compressor;)V

    sput-object v0, Lio/grpc/CompressorRegistry;->DEFAULT_INSTANCE:Lio/grpc/CompressorRegistry;

    return-void
.end method

.method public varargs constructor <init>([Lio/grpc/Compressor;)V
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/CompressorRegistry;->compressors:Ljava/util/concurrent/ConcurrentMap;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lio/grpc/CompressorRegistry;->compressors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Lio/grpc/Compressor;->getMessageEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lio/grpc/CompressorRegistry;
    .locals 1

    sget-object v0, Lio/grpc/CompressorRegistry;->DEFAULT_INSTANCE:Lio/grpc/CompressorRegistry;

    return-object v0
.end method

.method public static newEmptyInstance()Lio/grpc/CompressorRegistry;
    .locals 2

    new-instance v0, Lio/grpc/CompressorRegistry;

    const/4 v1, 0x0

    new-array v1, v1, [Lio/grpc/Compressor;

    invoke-direct {v0, v1}, Lio/grpc/CompressorRegistry;-><init>([Lio/grpc/Compressor;)V

    return-object v0
.end method


# virtual methods
.method public lookupCompressor(Ljava/lang/String;)Lio/grpc/Compressor;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/grpc/CompressorRegistry;->compressors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/Compressor;

    return-object p1
.end method

.method public register(Lio/grpc/Compressor;)V
    .locals 3

    invoke-interface {p1}, Lio/grpc/Compressor;->getMessageEncoding()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Comma is currently not allowed in message encoding"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v1, p0, Lio/grpc/CompressorRegistry;->compressors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
