.class Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/GrpcHttp2OutboundHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Itr"
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
.field private current:[Lio/netty/util/AsciiString;

.field private idx:I

.field private key:Lio/netty/util/AsciiString;

.field public final synthetic this$0:Lio/grpc/netty/GrpcHttp2OutboundHeaders;

.field private value:Lio/netty/util/AsciiString;


# direct methods
.method private constructor <init>(Lio/grpc/netty/GrpcHttp2OutboundHeaders;)V
    .locals 1

    iput-object p1, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;->this$0:Lio/grpc/netty/GrpcHttp2OutboundHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/grpc/netty/GrpcHttp2OutboundHeaders;->access$100(Lio/grpc/netty/GrpcHttp2OutboundHeaders;)[Lio/netty/util/AsciiString;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/grpc/netty/GrpcHttp2OutboundHeaders;->access$100(Lio/grpc/netty/GrpcHttp2OutboundHeaders;)[Lio/netty/util/AsciiString;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lio/grpc/netty/GrpcHttp2OutboundHeaders;->access$200(Lio/grpc/netty/GrpcHttp2OutboundHeaders;)[Lio/netty/util/AsciiString;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;->current:[Lio/netty/util/AsciiString;

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/netty/GrpcHttp2OutboundHeaders;Lio/grpc/netty/GrpcHttp2OutboundHeaders$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;-><init>(Lio/grpc/netty/GrpcHttp2OutboundHeaders;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;->key:Lio/netty/util/AsciiString;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;->getKey()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;->value:Lio/netty/util/AsciiString;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;->getValue()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;->idx:I

    iget-object v1, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;->current:[Lio/netty/util/AsciiString;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;->next()Ljava/util/Map$Entry;

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

    invoke-virtual {p0}, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;->current:[Lio/netty/util/AsciiString;

    iget v1, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;->idx:I

    aget-object v2, v0, v1

    iput-object v2, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;->key:Lio/netty/util/AsciiString;

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    iput-object v2, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;->value:Lio/netty/util/AsciiString;

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;->idx:I

    array-length v2, v0

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;->this$0:Lio/grpc/netty/GrpcHttp2OutboundHeaders;

    invoke-static {v1}, Lio/grpc/netty/GrpcHttp2OutboundHeaders;->access$100(Lio/grpc/netty/GrpcHttp2OutboundHeaders;)[Lio/netty/util/AsciiString;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;->this$0:Lio/grpc/netty/GrpcHttp2OutboundHeaders;

    invoke-static {v0}, Lio/grpc/netty/GrpcHttp2OutboundHeaders;->access$200(Lio/grpc/netty/GrpcHttp2OutboundHeaders;)[Lio/netty/util/AsciiString;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;->current:[Lio/netty/util/AsciiString;

    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;->idx:I

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValue(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;->setValue(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
