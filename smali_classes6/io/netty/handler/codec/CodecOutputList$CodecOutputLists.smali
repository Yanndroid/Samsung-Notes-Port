.class final Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/CodecOutputList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodecOutputLists"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private count:I

.field private currentIdx:I

.field private final elements:[Lio/netty/handler/codec/CodecOutputList;

.field private final mask:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/handler/codec/CodecOutputList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/netty/util/internal/MathUtil;->safeFindNextPositivePowerOfTwo(I)I

    move-result p1

    new-array p1, p1, [Lio/netty/handler/codec/CodecOutputList;

    iput-object p1, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->elements:[Lio/netty/handler/codec/CodecOutputList;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->elements:[Lio/netty/handler/codec/CodecOutputList;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    new-instance v1, Lio/netty/handler/codec/CodecOutputList;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lio/netty/handler/codec/CodecOutputList;-><init>(Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;ILio/netty/handler/codec/CodecOutputList$1;)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    array-length p1, v0

    iput p1, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->count:I

    array-length p1, v0

    iput p1, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->currentIdx:I

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->mask:I

    return-void
.end method


# virtual methods
.method public getOrCreate()Lio/netty/handler/codec/CodecOutputList;
    .locals 4

    iget v0, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->count:I

    if-nez v0, :cond_0

    new-instance v0, Lio/netty/handler/codec/CodecOutputList;

    invoke-static {}, Lio/netty/handler/codec/CodecOutputList;->access$100()Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/CodecOutputList;-><init>(Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;ILio/netty/handler/codec/CodecOutputList$1;)V

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->count:I

    iget v0, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->currentIdx:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->mask:I

    and-int/2addr v0, v1

    iget-object v1, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->elements:[Lio/netty/handler/codec/CodecOutputList;

    aget-object v1, v1, v0

    iput v0, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->currentIdx:I

    return-object v1
.end method

.method public recycle(Lio/netty/handler/codec/CodecOutputList;)V
    .locals 2

    iget v0, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->currentIdx:I

    iget-object v1, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->elements:[Lio/netty/handler/codec/CodecOutputList;

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iget p1, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->mask:I

    and-int/2addr p1, v0

    iput p1, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->currentIdx:I

    iget p1, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->count:I

    return-void
.end method
