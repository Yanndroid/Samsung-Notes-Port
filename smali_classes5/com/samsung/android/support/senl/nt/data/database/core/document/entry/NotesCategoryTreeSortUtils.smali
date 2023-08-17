.class public Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeSortUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NotesCategoryTreeSortUtils"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeSortUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createComparator(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;
    .locals 1
    .param p0    # Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;->setSortParam(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;

    move-result-object p0

    return-object p0
.end method

.method public static sort(Ljava/util/Map;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/Map;
    .locals 2
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeSortUtils;->sort(Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static sort(Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)V
    .locals 4
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeSortUtils;->createComparator(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeSortUtils;->createComparator(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NotesCategoryTreeComparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeSortUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sort, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Comparison method violates its general contract!"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeSortUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sort, list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    throw p0

    :cond_2
    return-void
.end method
