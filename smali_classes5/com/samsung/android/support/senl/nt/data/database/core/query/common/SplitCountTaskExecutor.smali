.class public Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitCountTaskExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitCountTaskExecutor$CountFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mFunction:Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitCountTaskExecutor$CountFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitCountTaskExecutor$CountFunction<",
            "Ljava/util/Collection<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitCountTaskExecutor$CountFunction;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitCountTaskExecutor$CountFunction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitCountTaskExecutor$CountFunction<",
            "Ljava/util/Collection<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitCountTaskExecutor;->mFunction:Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitCountTaskExecutor$CountFunction;

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/Collection;)I
    .locals 5
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)I"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x1f4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitCountTaskExecutor;->mFunction:Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitCountTaskExecutor$CountFunction;

    invoke-interface {v0, p1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitCountTaskExecutor$CountFunction;->apply(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method
