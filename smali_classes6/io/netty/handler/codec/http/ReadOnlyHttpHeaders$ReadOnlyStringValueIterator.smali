.class final Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReadOnlyStringValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/CharSequence;

.field private final nameHash:I

.field private nextNameIndex:I

.field public final synthetic this$0:Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;->this$0:Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;->name:Ljava/lang/CharSequence;

    invoke-static {p2}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;->nameHash:I

    invoke-direct {p0}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;->findNextValue()I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;->nextNameIndex:I

    return-void
.end method

.method private findNextValue()I
    .locals 4

    iget v0, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;->nextNameIndex:I

    :goto_0
    iget-object v1, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;->this$0:Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;

    invoke-static {v1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->access$200(Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;)[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;->this$0:Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;

    invoke-static {v1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->access$200(Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v0

    iget v2, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;->nameHash:I

    invoke-static {v1}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;->name:Ljava/lang/CharSequence;

    invoke-static {v2, v1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;->nextNameIndex:I

    const/4 v1, -0x1

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

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;->this$0:Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;

    invoke-static {v0}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->access$200(Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;)[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;->nextNameIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;->findNextValue()I

    move-result v1

    iput v1, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;->nextNameIndex:I

    return-object v0

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
