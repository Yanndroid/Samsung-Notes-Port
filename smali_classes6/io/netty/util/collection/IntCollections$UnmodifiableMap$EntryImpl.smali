.class Lio/netty/util/collection/IntCollections$UnmodifiableMap$EntryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/collection/IntObjectMap$PrimitiveEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/collection/IntCollections$UnmodifiableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntryImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/collection/IntObjectMap$PrimitiveEntry<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final entry:Lio/netty/util/collection/IntObjectMap$PrimitiveEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/collection/IntObjectMap$PrimitiveEntry<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lio/netty/util/collection/IntCollections$UnmodifiableMap;


# direct methods
.method public constructor <init>(Lio/netty/util/collection/IntCollections$UnmodifiableMap;Lio/netty/util/collection/IntObjectMap$PrimitiveEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/collection/IntObjectMap$PrimitiveEntry<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/netty/util/collection/IntCollections$UnmodifiableMap$EntryImpl;->this$0:Lio/netty/util/collection/IntCollections$UnmodifiableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/netty/util/collection/IntCollections$UnmodifiableMap$EntryImpl;->entry:Lio/netty/util/collection/IntObjectMap$PrimitiveEntry;

    return-void
.end method


# virtual methods
.method public key()I
    .locals 1

    iget-object v0, p0, Lio/netty/util/collection/IntCollections$UnmodifiableMap$EntryImpl;->entry:Lio/netty/util/collection/IntObjectMap$PrimitiveEntry;

    invoke-interface {v0}, Lio/netty/util/collection/IntObjectMap$PrimitiveEntry;->key()I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setValue"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/collection/IntCollections$UnmodifiableMap$EntryImpl;->entry:Lio/netty/util/collection/IntObjectMap$PrimitiveEntry;

    invoke-interface {v0}, Lio/netty/util/collection/IntObjectMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
