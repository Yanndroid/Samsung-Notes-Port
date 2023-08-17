.class final Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReadOnlyValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private current:[Lio/netty/util/AsciiString;

.field private i:I

.field private final name:Ljava/lang/CharSequence;

.field private final nameHash:I

.field private next:Lio/netty/util/AsciiString;

.field public final synthetic this$0:Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->this$0:Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->access$100(Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;)[Lio/netty/util/AsciiString;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->access$100(Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;)[Lio/netty/util/AsciiString;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->access$200(Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;)[Lio/netty/util/AsciiString;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->current:[Lio/netty/util/AsciiString;

    invoke-static {p2}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->nameHash:I

    iput-object p2, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->name:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->calculateNext()V

    return-void
.end method

.method private calculateNext()V
    .locals 4

    :goto_0
    iget v0, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->i:I

    iget-object v1, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->current:[Lio/netty/util/AsciiString;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lio/netty/util/AsciiString;->hashCode()I

    move-result v1

    iget v2, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->nameHash:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->name:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->i:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->current:[Lio/netty/util/AsciiString;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-object v1, v2, v1

    iput-object v1, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->next:Lio/netty/util/AsciiString;

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->i:I

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->i:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->i:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->this$0:Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;

    invoke-static {v0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->access$100(Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;)[Lio/netty/util/AsciiString;

    move-result-object v0

    if-ne v1, v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->i:I

    iget-object v0, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->this$0:Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;

    invoke-static {v0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->access$200(Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;)[Lio/netty/util/AsciiString;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->current:[Lio/netty/util/AsciiString;

    invoke-direct {p0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->calculateNext()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->next:Lio/netty/util/AsciiString;

    :goto_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->next:Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->next:Lio/netty/util/AsciiString;

    invoke-direct {p0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->calculateNext()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;->next()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
