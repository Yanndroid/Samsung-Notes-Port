.class final Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReadOnlyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/CharSequence;",
        ">;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/CharSequence;",
        ">;>;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/CharSequence;

.field private nextNameIndex:I

.field public final synthetic this$0:Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;

.field private value:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;->this$0:Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;-><init>(Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;->key:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;->getKey()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;->value:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;->getValue()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;->nextNameIndex:I

    iget-object v1, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;->this$0:Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;

    invoke-static {v1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->access$200(Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;)[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;->this$0:Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;

    invoke-static {v0}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->access$200(Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;)[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;->nextNameIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;->key:Ljava/lang/CharSequence;

    iget-object v0, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;->this$0:Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;

    invoke-static {v0}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->access$200(Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;)[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;->nextNameIndex:I

    add-int/lit8 v2, v1, 0x1

    aget-object v0, v0, v2

    iput-object v0, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;->value:Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;->nextNameIndex:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "read only"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;->setValue(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;->key:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;->value:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
