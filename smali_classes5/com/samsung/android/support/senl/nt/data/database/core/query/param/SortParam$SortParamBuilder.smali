.class public Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortParamBuilder"
.end annotation


# instance fields
.field private final mSortParam:Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;-><init>(Lg4/a;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->mSortParam:Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->mSortParam:Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    return-object v0
.end method

.method public setIsDesc(Z)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->mSortParam:Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->setIsDesc(Z)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    return-object p0
.end method

.method public setIsPinFavorite(Z)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->mSortParam:Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->setIsPinFavorite(Z)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    return-object p0
.end method

.method public setLastIsDesc(Z)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->mSortParam:Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->setLastIsDesc(Z)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    return-object p0
.end method

.method public setLastSortTimeType(I)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;
    .locals 1
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/SortType;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->mSortParam:Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->setLastSortTimeType(I)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    return-object p0
.end method

.method public setSortType(I)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;
    .locals 1
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/SortType;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->mSortParam:Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->setSortType(I)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    return-object p0
.end method
