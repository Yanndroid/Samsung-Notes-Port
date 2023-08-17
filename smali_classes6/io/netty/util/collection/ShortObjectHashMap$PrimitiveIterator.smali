.class final Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lio/netty/util/collection/ShortObjectMap$PrimitiveEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/collection/ShortObjectHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PrimitiveIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lio/netty/util/collection/ShortObjectMap$PrimitiveEntry<",
        "TV;>;>;",
        "Lio/netty/util/collection/ShortObjectMap$PrimitiveEntry<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private entryIndex:I

.field private nextIndex:I

.field private prevIndex:I

.field public final synthetic this$0:Lio/netty/util/collection/ShortObjectHashMap;


# direct methods
.method private constructor <init>(Lio/netty/util/collection/ShortObjectHashMap;)V
    .locals 0

    iput-object p1, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->this$0:Lio/netty/util/collection/ShortObjectHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->prevIndex:I

    iput p1, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->nextIndex:I

    iput p1, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->entryIndex:I

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/util/collection/ShortObjectHashMap;Lio/netty/util/collection/ShortObjectHashMap$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;-><init>(Lio/netty/util/collection/ShortObjectHashMap;)V

    return-void
.end method

.method public static synthetic access$1100(Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;)I
    .locals 0

    iget p0, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->entryIndex:I

    return p0
.end method

.method private scanNext()V
    .locals 2

    :goto_0
    iget v0, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->nextIndex:I

    iget-object v1, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->this$0:Lio/netty/util/collection/ShortObjectHashMap;

    invoke-static {v1}, Lio/netty/util/collection/ShortObjectHashMap;->access$600(Lio/netty/util/collection/ShortObjectHashMap;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->this$0:Lio/netty/util/collection/ShortObjectHashMap;

    invoke-static {v0}, Lio/netty/util/collection/ShortObjectHashMap;->access$600(Lio/netty/util/collection/ShortObjectHashMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->nextIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->nextIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->scanNext()V

    :cond_0
    iget v0, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->nextIndex:I

    iget-object v1, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->this$0:Lio/netty/util/collection/ShortObjectHashMap;

    invoke-static {v1}, Lio/netty/util/collection/ShortObjectHashMap;->access$600(Lio/netty/util/collection/ShortObjectHashMap;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public key()S
    .locals 2

    iget-object v0, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->this$0:Lio/netty/util/collection/ShortObjectHashMap;

    invoke-static {v0}, Lio/netty/util/collection/ShortObjectHashMap;->access$800(Lio/netty/util/collection/ShortObjectHashMap;)[S

    move-result-object v0

    iget v1, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->entryIndex:I

    aget-short v0, v0, v1

    return v0
.end method

.method public next()Lio/netty/util/collection/ShortObjectMap$PrimitiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/collection/ShortObjectMap$PrimitiveEntry<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->nextIndex:I

    iput v0, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->prevIndex:I

    invoke-direct {p0}, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->scanNext()V

    iget v0, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->prevIndex:I

    iput v0, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->entryIndex:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->next()Lio/netty/util/collection/ShortObjectMap$PrimitiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    iget v0, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->prevIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->this$0:Lio/netty/util/collection/ShortObjectHashMap;

    invoke-static {v2, v0}, Lio/netty/util/collection/ShortObjectHashMap;->access$700(Lio/netty/util/collection/ShortObjectHashMap;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->prevIndex:I

    iput v0, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->nextIndex:I

    :cond_0
    iput v1, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->prevIndex:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before each remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->this$0:Lio/netty/util/collection/ShortObjectHashMap;

    invoke-static {v0}, Lio/netty/util/collection/ShortObjectHashMap;->access$600(Lio/netty/util/collection/ShortObjectHashMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->entryIndex:I

    invoke-static {p1}, Lio/netty/util/collection/ShortObjectHashMap;->access$1000(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v1

    return-void
.end method

.method public value()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->this$0:Lio/netty/util/collection/ShortObjectHashMap;

    invoke-static {v0}, Lio/netty/util/collection/ShortObjectHashMap;->access$600(Lio/netty/util/collection/ShortObjectHashMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/netty/util/collection/ShortObjectHashMap$PrimitiveIterator;->entryIndex:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lio/netty/util/collection/ShortObjectHashMap;->access$900(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
