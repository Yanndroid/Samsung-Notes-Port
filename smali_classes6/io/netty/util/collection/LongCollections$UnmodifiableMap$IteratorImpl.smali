.class Lio/netty/util/collection/LongCollections$UnmodifiableMap$IteratorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/collection/LongCollections$UnmodifiableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lio/netty/util/collection/LongObjectMap$PrimitiveEntry<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lio/netty/util/collection/LongObjectMap$PrimitiveEntry<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lio/netty/util/collection/LongCollections$UnmodifiableMap;


# direct methods
.method public constructor <init>(Lio/netty/util/collection/LongCollections$UnmodifiableMap;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lio/netty/util/collection/LongObjectMap$PrimitiveEntry<",
            "TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/netty/util/collection/LongCollections$UnmodifiableMap$IteratorImpl;->this$0:Lio/netty/util/collection/LongCollections$UnmodifiableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/netty/util/collection/LongCollections$UnmodifiableMap$IteratorImpl;->iter:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lio/netty/util/collection/LongCollections$UnmodifiableMap$IteratorImpl;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lio/netty/util/collection/LongObjectMap$PrimitiveEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/collection/LongObjectMap$PrimitiveEntry<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/collection/LongCollections$UnmodifiableMap$IteratorImpl;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/util/collection/LongCollections$UnmodifiableMap$EntryImpl;

    iget-object v1, p0, Lio/netty/util/collection/LongCollections$UnmodifiableMap$IteratorImpl;->this$0:Lio/netty/util/collection/LongCollections$UnmodifiableMap;

    iget-object v2, p0, Lio/netty/util/collection/LongCollections$UnmodifiableMap$IteratorImpl;->iter:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/util/collection/LongObjectMap$PrimitiveEntry;

    invoke-direct {v0, v1, v2}, Lio/netty/util/collection/LongCollections$UnmodifiableMap$EntryImpl;-><init>(Lio/netty/util/collection/LongCollections$UnmodifiableMap;Lio/netty/util/collection/LongObjectMap$PrimitiveEntry;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/collection/LongCollections$UnmodifiableMap$IteratorImpl;->next()Lio/netty/util/collection/LongObjectMap$PrimitiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
