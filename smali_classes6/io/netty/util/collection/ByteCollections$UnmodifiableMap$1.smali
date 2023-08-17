.class Lio/netty/util/collection/ByteCollections$UnmodifiableMap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->entries()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lio/netty/util/collection/ByteObjectMap$PrimitiveEntry<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/util/collection/ByteCollections$UnmodifiableMap;


# direct methods
.method public constructor <init>(Lio/netty/util/collection/ByteCollections$UnmodifiableMap;)V
    .locals 0

    iput-object p1, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap$1;->this$0:Lio/netty/util/collection/ByteCollections$UnmodifiableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/util/collection/ByteObjectMap$PrimitiveEntry<",
            "TV;>;>;"
        }
    .end annotation

    new-instance v0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap$IteratorImpl;

    iget-object v1, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap$1;->this$0:Lio/netty/util/collection/ByteCollections$UnmodifiableMap;

    invoke-static {v1}, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->access$100(Lio/netty/util/collection/ByteCollections$UnmodifiableMap;)Lio/netty/util/collection/ByteObjectMap;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/util/collection/ByteObjectMap;->entries()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/netty/util/collection/ByteCollections$UnmodifiableMap$IteratorImpl;-><init>(Lio/netty/util/collection/ByteCollections$UnmodifiableMap;Ljava/util/Iterator;)V

    return-object v0
.end method
