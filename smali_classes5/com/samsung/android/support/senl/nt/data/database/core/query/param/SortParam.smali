.class public Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;
    }
.end annotation


# instance fields
.field private mIsDesc:Z

.field private mIsPinFavorite:Z

.field private mLastIsDesc:Z

.field private mLastSortTimeType:I
    .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/SortType;
    .end annotation
.end field

.field private mSortType:I
    .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/SortType;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->mSortType:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->mLastSortTimeType:I

    return-void
.end method

.method public synthetic constructor <init>(Lg4/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsDesc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->mIsDesc:Z

    return v0
.end method

.method public getIsPinFavorite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->mIsPinFavorite:Z

    return v0
.end method

.method public getLastIsDesc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->mLastIsDesc:Z

    return v0
.end method

.method public getLastSortTimeType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->mLastSortTimeType:I

    return v0
.end method

.method public getSortType()I
    .locals 1
    .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/SortType;
    .end annotation

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->mSortType:I

    return v0
.end method

.method public setIsDesc(Z)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->mIsDesc:Z

    return-object p0
.end method

.method public setIsPinFavorite(Z)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->mIsPinFavorite:Z

    return-object p0
.end method

.method public setLastIsDesc(Z)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->mLastIsDesc:Z

    return-object p0
.end method

.method public setLastSortTimeType(I)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->mLastSortTimeType:I

    return-object p0
.end method

.method public setSortType(I)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/SortType;
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->mSortType:I

    return-object p0
.end method
