.class Lio/grpc/Metadata$IterableAt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/Metadata$IterableAt;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private hasNext:Z

.field private idx:I

.field public final synthetic this$1:Lio/grpc/Metadata$IterableAt;


# direct methods
.method public constructor <init>(Lio/grpc/Metadata$IterableAt;)V
    .locals 1

    iput-object p1, p0, Lio/grpc/Metadata$IterableAt$1;->this$1:Lio/grpc/Metadata$IterableAt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/Metadata$IterableAt$1;->hasNext:Z

    invoke-static {p1}, Lio/grpc/Metadata$IterableAt;->access$000(Lio/grpc/Metadata$IterableAt;)I

    move-result p1

    iput p1, p0, Lio/grpc/Metadata$IterableAt$1;->idx:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    iget-boolean v0, p0, Lio/grpc/Metadata$IterableAt$1;->hasNext:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :goto_0
    iget v0, p0, Lio/grpc/Metadata$IterableAt$1;->idx:I

    iget-object v2, p0, Lio/grpc/Metadata$IterableAt$1;->this$1:Lio/grpc/Metadata$IterableAt;

    iget-object v2, v2, Lio/grpc/Metadata$IterableAt;->this$0:Lio/grpc/Metadata;

    invoke-static {v2}, Lio/grpc/Metadata;->access$100(Lio/grpc/Metadata;)I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lio/grpc/Metadata$IterableAt$1;->this$1:Lio/grpc/Metadata$IterableAt;

    iget-object v2, v0, Lio/grpc/Metadata$IterableAt;->this$0:Lio/grpc/Metadata;

    invoke-static {v0}, Lio/grpc/Metadata$IterableAt;->access$200(Lio/grpc/Metadata$IterableAt;)Lio/grpc/Metadata$Key;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v0

    iget-object v3, p0, Lio/grpc/Metadata$IterableAt$1;->this$1:Lio/grpc/Metadata$IterableAt;

    iget-object v3, v3, Lio/grpc/Metadata$IterableAt;->this$0:Lio/grpc/Metadata;

    iget v4, p0, Lio/grpc/Metadata$IterableAt$1;->idx:I

    invoke-static {v3, v4}, Lio/grpc/Metadata;->access$300(Lio/grpc/Metadata;I)[B

    move-result-object v3

    invoke-static {v2, v0, v3}, Lio/grpc/Metadata;->access$400(Lio/grpc/Metadata;[B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lio/grpc/Metadata$IterableAt$1;->hasNext:Z

    return v1

    :cond_1
    iget v0, p0, Lio/grpc/Metadata$IterableAt$1;->idx:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/grpc/Metadata$IterableAt$1;->idx:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/Metadata$IterableAt$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/Metadata$IterableAt$1;->hasNext:Z

    iget-object v0, p0, Lio/grpc/Metadata$IterableAt$1;->this$1:Lio/grpc/Metadata$IterableAt;

    iget-object v1, v0, Lio/grpc/Metadata$IterableAt;->this$0:Lio/grpc/Metadata;

    iget v2, p0, Lio/grpc/Metadata$IterableAt$1;->idx:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lio/grpc/Metadata$IterableAt$1;->idx:I

    invoke-static {v0}, Lio/grpc/Metadata$IterableAt;->access$200(Lio/grpc/Metadata$IterableAt;)Lio/grpc/Metadata$Key;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lio/grpc/Metadata;->access$500(Lio/grpc/Metadata;ILio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
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
