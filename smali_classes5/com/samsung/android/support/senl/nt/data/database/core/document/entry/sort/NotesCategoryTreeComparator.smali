.class public Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;",
        ">;"
    }
.end annotation


# instance fields
.field private mSortParam:Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private predefinedSort(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->SCREEN_OFF_MEMO:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public compare(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;->getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;->getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->getSortType()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;->getLastModifiedAt()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;->getLastModifiedAt()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;-><init>()V

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;->predefinedSort(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;)I

    move-result v1

    if-eqz v1, :cond_2

    return v1

    :cond_2
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;->getReorder()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;->getReorder()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;-><init>()V

    new-instance v2, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->setSortType(I)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;->getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->getIsDesc()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->setIsDesc(Z)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;->getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->getLastSortTimeType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->setLastSortTimeType(I)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;->getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->getLastIsDesc()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->setLastIsDesc(Z)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->build()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;->setSortParam(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    move v0, v1

    goto/16 :goto_2

    :cond_4
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;->getRecycleBinTimeMoved()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;->getRecycleBinTimeMoved()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;->getCreatedAt()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;->getCreatedAt()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    goto :goto_2

    :cond_5
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;->getCreatedAt()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;->getCreatedAt()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;-><init>()V

    :goto_0
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;->getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->getLastSortTimeType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->setSortType(I)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;->getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->getLastIsDesc()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->setIsDesc(Z)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->build()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;->setSortParam(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;

    move-result-object v0

    :goto_1
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;->compare(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;)I

    move-result v0

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;->getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->getIsDesc()Z

    move-result p1

    if-eqz p1, :cond_8

    mul-int/lit8 v0, v0, -0x1

    :cond_8
    :goto_3
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;

    check-cast p2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;->compare(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;)I

    move-result p1

    return p1
.end method

.method public getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;->mSortParam:Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    return-object v0
.end method

.method public setSortParam(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;->mSortParam:Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    return-object p0
.end method
