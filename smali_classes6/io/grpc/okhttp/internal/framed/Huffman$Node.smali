.class final Lio/grpc/okhttp/internal/framed/Huffman$Node;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/internal/framed/Huffman;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Node"
.end annotation


# instance fields
.field private final children:[Lio/grpc/okhttp/internal/framed/Huffman$Node;

.field private final symbol:I

.field private final terminalBits:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Lio/grpc/okhttp/internal/framed/Huffman$Node;

    iput-object v0, p0, Lio/grpc/okhttp/internal/framed/Huffman$Node;->children:[Lio/grpc/okhttp/internal/framed/Huffman$Node;

    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Huffman$Node;->symbol:I

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Huffman$Node;->terminalBits:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/okhttp/internal/framed/Huffman$Node;->children:[Lio/grpc/okhttp/internal/framed/Huffman$Node;

    iput p1, p0, Lio/grpc/okhttp/internal/framed/Huffman$Node;->symbol:I

    and-int/lit8 p1, p2, 0x7

    if-nez p1, :cond_0

    const/16 p1, 0x8

    :cond_0
    iput p1, p0, Lio/grpc/okhttp/internal/framed/Huffman$Node;->terminalBits:I

    return-void
.end method

.method public static synthetic access$000(Lio/grpc/okhttp/internal/framed/Huffman$Node;)[Lio/grpc/okhttp/internal/framed/Huffman$Node;
    .locals 0

    iget-object p0, p0, Lio/grpc/okhttp/internal/framed/Huffman$Node;->children:[Lio/grpc/okhttp/internal/framed/Huffman$Node;

    return-object p0
.end method

.method public static synthetic access$100(Lio/grpc/okhttp/internal/framed/Huffman$Node;)I
    .locals 0

    iget p0, p0, Lio/grpc/okhttp/internal/framed/Huffman$Node;->symbol:I

    return p0
.end method

.method public static synthetic access$200(Lio/grpc/okhttp/internal/framed/Huffman$Node;)I
    .locals 0

    iget p0, p0, Lio/grpc/okhttp/internal/framed/Huffman$Node;->terminalBits:I

    return p0
.end method
