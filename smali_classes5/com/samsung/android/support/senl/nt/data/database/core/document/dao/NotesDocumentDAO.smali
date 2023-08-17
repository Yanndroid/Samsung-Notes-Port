.class public abstract Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;
.super Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final ORDER_BY:Ljava/lang/String; = " ORDER BY CASE WHEN :isDesc=1 THEN lastModifiedAt END DESC, CASE WHEN :isDesc=0 THEN lastModifiedAt END ASC"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NotesDocumentDAO"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;JLjava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->lambda$deleteByUuid$0(JLjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->lambda$deleteByUuidListWithTimestampIncrease$1(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/util/List;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->makeAllDocumentCountEntryMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;Z)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->makeDocumentCountEntries(Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private deleteByCategoryUuidWithServerTimestampIncrease(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getDocumentDataByCategoryUuid(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;->delete(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/util/Collection;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->printDeletedDocumentsByFolder(Ljava/util/List;I)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->deleteByCategoryUuidInternalWithServeTimestampIncrease(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$deleteByUuid$0(JLjava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p3, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->deleteInternal(Ljava/util/Collection;J)I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method private synthetic lambda$deleteByUuidListWithTimestampIncrease$1(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->deleteInternalWithServerTimestampIncrease(Ljava/util/Collection;)I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method private makeAllDocumentCountEntryMap(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->TAG:Ljava/lang/String;

    const-string v1, "makeAllDocumentCountEntryMap"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;-><init>()V

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->ALL:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->setCategoryUuid(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "old_converted_notes"

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->RECYCLE_BIN:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->SHARED_NOTE_BOOK:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->OLD_NOTES:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v3

    const-string v4, "old_recyclebin"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->getIsDeleted()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->getDocumentCount()I

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->getDocumentCount()I

    move-result v2

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->setDocumentCount(I)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->RECYCLE_BIN:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getDocumentCountEntry_NotConsideringMappingTable(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->getDocumentCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->getDocumentCount()I

    move-result p1

    sub-int/2addr v2, p1

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->setDocumentCount(I)V

    :cond_2
    sget-object p1, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->ALL:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private makeDocumentCountEntries(Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;Z)Ljava/util/List;
    .locals 5
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    sget-object v3, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->OLD_NOTES:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->getIsDeleted()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;->getAll_OldNotes_Count(I)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->setDocumentCount(I)V

    :cond_1
    if-eqz p4, :cond_2

    new-instance p2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    invoke-direct {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;-><init>()V

    const-string p4, "old_converted_notes"

    invoke-virtual {p2, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->setCategoryUuid(Ljava/lang/String;)V

    const-string p4, "Converted"

    invoke-virtual {p2, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->setDisplayName(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;->getAll_ConvertedCount(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->setDocumentCount(I)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance p2, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    invoke-direct {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;-><init>()V

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->setSortType(I)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->setIsDesc(Z)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->setLastSortTimeType(I)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->setLastIsDesc(Z)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->build()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeSortUtils;->sort(Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)V

    return-object p1
.end method

.method private printDeletedDocumentsByFolder(Ljava/util/List;I)V
    .locals 4
    .param p2    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/DeleteType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#deleteByFolder, isDeleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private printRestoreDocumentsByFolder(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getRestoredUuidsByCategory(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#restoreByFolder, uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)I
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#delete, isDeleted: 1, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", backtrace : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getCallee([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getServerTimestamp()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->deleteInternal(Ljava/util/Collection;J)I

    move-result p1

    return p1
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->delete(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)I

    move-result p1

    return p1
.end method

.method public delete(Ljava/util/Collection;)I
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->delete(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public abstract deleteAll()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM sdoc"
    .end annotation
.end method

.method public varargs deleteByCategoryEntity(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;J[Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V
    .locals 3
    .annotation build Landroidx/room/Transaction;
    .end annotation

    if-eqz p4, :cond_0

    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p4, v1

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->deleteByCategoryUuid(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;Ljava/lang/String;J)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deleteByCategoryEntity(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;Ljava/util/Collection;J)V
    .locals 1
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;J)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->deleteByCategoryUuid(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;Ljava/lang/String;J)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deleteByCategoryUuid(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;Ljava/lang/String;J)I
    .locals 1

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getDocumentDataByCategoryUuid(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;->delete(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/util/Collection;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->printDeletedDocumentsByFolder(Ljava/util/List;I)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->deleteByCategoryUuidInternal(Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public deleteByCategoryUuid(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;Ljava/util/Collection;J)I
    .locals 2
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;J)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->deleteByCategoryUuid(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;Ljava/lang/String;J)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public abstract deleteByCategoryUuidInternal(Ljava/lang/String;J)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isDeleted=1 , serverTimestamp=:serverTimestamp , isDirty=1 , categoryisDirty=1 , categoryServerTimestamp=:serverTimestamp WHERE categoryUUID=:categoryUuid"
    .end annotation
.end method

.method public abstract deleteByCategoryUuidInternalWithServeTimestampIncrease(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isDeleted=1 , serverTimestamp=serverTimestamp+1 , isDirty=1 , categoryisDirty=1 , categoryServerTimestamp=categoryServerTimestamp+1 WHERE categoryUUID=:categoryUuid"
    .end annotation
.end method

.method public deleteByCategoryUuidWithServerTimestampIncrease(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;Ljava/util/Collection;)I
    .locals 2
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->deleteByCategoryUuidWithServerTimestampIncrease(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public deleteByUuid(Ljava/lang/String;)I
    .locals 3
    .annotation build Landroidx/room/Transaction;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###deleteByUuid, isDeleted: 1, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->deleteInternal(Ljava/util/Collection;J)I

    move-result p1

    return p1
.end method

.method public deleteByUuid(Ljava/util/Collection;J)V
    .locals 2
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/d;

    invoke-direct {v1, p0, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/d;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;J)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;-><init>(Landroidx/arch/core/util/Function;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;->execute(Ljava/util/Collection;)Ljava/util/List;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v0, "#deleteByUuid, isDeleted: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", uuid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract deleteByUuidDb(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM sdoc WHERE UUID = :uuid"
    .end annotation
.end method

.method public deleteByUuidListWithTimestampIncrease(Ljava/util/Collection;)V
    .locals 3
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/c;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/c;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;-><init>(Landroidx/arch/core/util/Function;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;->execute(Ljava/util/Collection;)Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "##deleteByUuid, isDeleted: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uuid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract deleteInternal(Ljava/util/Collection;J)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isDeleted=1 , mdeSpaceId=\'\' , mdeItemId=\'\' , isDirty=1 , serverTimestamp=:serverTimestamp , categoryisDirty=1 , categoryserverTimestamp= :serverTimestamp WHERE UUID IN (:uuids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;J)I"
        }
    .end annotation
.end method

.method public abstract deleteInternalWithServerTimestampIncrease(Ljava/util/Collection;)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isDeleted=1 , mdeSpaceId=\'\' , mdeItemId=\'\' , isDirty=1 , serverTimestamp=serverTimestamp+1 , categoryisDirty=1 , categoryserverTimestamp= categoryserverTimestamp+1 WHERE UUID IN (:uuids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroidx/room/Query;
        value = "SELECT absolutePath FROM sdoc WHERE UUID=:uuid LIMIT 1"
    .end annotation
.end method

.method public abstract getAll(IZ)Ljava/util/List;
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/DeleteType;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT `sdoc`.* FROM sdoc LEFT OUTER JOIN mapped_document AS map ON sdoc.UUID = map.UUID WHERE sdoc.isDeleted=:deleteType AND sdoc.mdeSpaceId=\'\' AND map.UUID IS NULL ORDER BY CASE WHEN :isDesc=1 THEN lastModifiedAt END DESC, CASE WHEN :isDesc=0 THEN lastModifiedAt END ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation
.end method

.method public getAllDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " FROM "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " LEFT OUTER JOIN mapped_document AS map ON sdoc.UUID = map.UUID WHERE "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->rawQueryForDocument(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public abstract getAllDocumentCountEntry()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT category_tree.UUID, category_tree.displayName, category_tree.displayNameColor, category_tree.isDeleted,  category_tree.createdAt, category_tree.lastModifiedAt, category_tree.recycle_bin_time_moved, category_tree.orderBy, (SELECT COUNT(*) FROM sdoc AS doc LEFT OUTER JOIN mapped_document AS map ON doc.UUID = map.UUID WHERE doc.categoryUUID=category_tree.UUID AND doc.isDeleted IS NOT 1 AND map.UUID IS NULL) AS documentCount FROM category_tree ORDER BY category_tree.orderBy ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;"
        }
    .end annotation
.end method

.method public getAllDocumentCountEntryMap(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;Z)Ljava/util/Map;
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->TAG:Ljava/lang/String;

    const-string v1, "getAllDocumentCountEntryMap"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getAllDocumentCountEntry()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->makeDocumentCountEntries(Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;Z)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->makeAllDocumentCountEntryMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getAllDocumentCountEntryMap_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;Z)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;",
            "Z)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->TAG:Ljava/lang/String;

    const-string v1, "getAllDocumentCountEntryMap_LiveData"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getAllDocumentCountEntry_LiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO$2;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;Z)V

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public abstract getAllDocumentCountEntry_LiveData()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT category_tree.UUID, category_tree.displayName, category_tree.displayNameColor, category_tree.isDeleted, category_tree.createdAt, category_tree.lastModifiedAt, category_tree.recycle_bin_time_moved, category_tree.orderBy, (SELECT COUNT(*) FROM sdoc AS doc WHERE doc.categoryUUID=category_tree.UUID AND doc.isDeleted IS NOT 1) AS documentCount FROM category_tree ORDER BY category_tree.orderBy ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;>;"
        }
    .end annotation
.end method

.method public getAllDocumentCountEntry_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;Ljava/lang/String;Z)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;",
            "Ljava/lang/String;",
            "Z)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getAllDocumentCountEntry_LiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO$1;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO$1;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;Z)V

    invoke-static {p3, v0}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public abstract getAllDocumentCountEntry_LiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT category_tree.UUID, category_tree.displayName, category_tree.displayNameColor, category_tree.isDeleted,  category_tree.createdAt, category_tree.lastModifiedAt, category_tree.recycle_bin_time_moved, category_tree.orderBy, (SELECT COUNT(*) FROM sdoc AS doc LEFT OUTER JOIN mapped_document AS map ON doc.UUID = map.UUID WHERE doc.categoryUUID=category_tree.UUID AND doc.isDeleted IS NOT 1 AND map.UUID IS NULL) AS documentCount FROM category_tree WHERE category_tree.parentUUID=:parentUuid ORDER BY category_tree.orderBy ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllPathList()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT filePath FROM sdoc WHERE isDeleted!=1"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAll_NotConsideringMappingTable(IZ)Ljava/util/List;
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/DeleteType;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT `sdoc`.* FROM sdoc WHERE sdoc.isDeleted=:deleteType AND sdoc.mdeSpaceId=\'\' ORDER BY CASE WHEN :isDesc=1 THEN lastModifiedAt END DESC, CASE WHEN :isDesc=0 THEN lastModifiedAt END ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCategoryUuid(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroidx/room/Query;
        value = "SELECT categoryUUID FROM sdoc WHERE UUID=:uuid LIMIT 1"
    .end annotation
.end method

.method public abstract getCategoryUuidList(Ljava/util/Collection;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT categoryUUID FROM sdoc WHERE UUID IN (:docUuids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getCategoryUuids(Ljava/util/Collection;)Ljava/util/Set;
    .locals 3
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;

    new-instance v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/a;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/a;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;-><init>(Landroidx/arch/core/util/Function;)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;->execute(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public abstract getCorrupted(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM sdoc WHERE UUID=:uuid AND corrupted IS 1 LIMIT 1"
    .end annotation
.end method

.method public abstract getCorruptedUuid()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM sdoc WHERE corrupted IS NOT 0"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCorruptedUuid(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM sdoc WHERE corrupted=:corrupted"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDocumentCountEntry(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;
    .annotation build Landroidx/room/Query;
        value = "SELECT category_tree.UUID, category_tree.displayName, category_tree.displayNameColor, category_tree.isDeleted,  category_tree.createdAt, category_tree.lastModifiedAt, category_tree.recycle_bin_time_moved, category_tree.orderBy, (SELECT COUNT(*) FROM sdoc AS doc LEFT OUTER JOIN mapped_document AS map ON doc.UUID = map.UUID WHERE doc.categoryUUID=category_tree.UUID AND doc.isDeleted IS NOT 1 AND map.UUID IS NULL) AS documentCount FROM category_tree WHERE category_tree.UUID=:categoryUuid"
    .end annotation
.end method

.method public abstract getDocumentCountEntry_NotConsideringMappingTable(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;
    .annotation build Landroidx/room/Query;
        value = "SELECT category_tree.UUID, category_tree.displayName, category_tree.displayNameColor, category_tree.isDeleted,  category_tree.createdAt, category_tree.lastModifiedAt, category_tree.recycle_bin_time_moved, category_tree.orderBy, (SELECT COUNT(*) FROM sdoc WHERE sdoc.categoryUUID=category_tree.UUID AND sdoc.isDeleted IS NOT 1) AS documentCount FROM category_tree WHERE category_tree.UUID=:categoryUuid"
    .end annotation
.end method

.method public abstract getDocumentData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;
    .annotation build Landroidx/room/Query;
        value = "SELECT _id, UUID, categoryUUID, filePath, contentUUID, strokeUUID FROM sdoc WHERE UUID=:uuid LIMIT 1"
    .end annotation
.end method

.method public abstract getDocumentData(Ljava/util/Collection;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT _id, UUID, categoryUUID, filePath, contentUUID, strokeUUID FROM sdoc WHERE UUID IN (:uuids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDocumentDataByCategoryUuid(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT _id, UUID, categoryUUID, filePath FROM sdoc WHERE categoryUUID=:categoryUuid"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;",
            ">;"
        }
    .end annotation
.end method

.method public getDocumentDataList(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/b;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/b;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;-><init>(Landroidx/arch/core/util/Function;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;->execute(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
    .annotation build Landroidx/room/Query;
        value = "SELECT `sdoc`.* FROM sdoc WHERE UUID=:uuid LIMIT 1"
    .end annotation
.end method

.method public bridge synthetic getEntity(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/room/Query;
        value = "SELECT `sdoc`.* FROM sdoc WHERE UUID=:uuid LIMIT 1"
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p1

    return-object p1
.end method

.method public abstract getEntityFromPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
    .annotation build Landroidx/room/Query;
        value = "SELECT `sdoc`.* FROM sdoc WHERE filePath=:path LIMIT 1"
    .end annotation
.end method

.method public abstract getExpiredRecycleBinDataList(J)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM sdoc WHERE recycle_bin_time_moved<:expiredTime AND recycle_bin_time_moved IS NOT 0 AND isDeleted=2"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExpiredRecycleBinDataNotInFolder(J)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM sdoc WHERE recycle_bin_time_moved<:expiredTime AND recycle_bin_time_moved IS NOT 0 AND isDeleted=2 AND categoryUUID=\'trash:///\'"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFavoriteItemCount(I)I
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/DeleteType;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(sdoc.UUID) FROM sdoc LEFT OUTER JOIN mapped_document AS map ON sdoc.UUID = map.UUID WHERE sdoc.isFavorite=1 AND sdoc.mdeSpaceId=\'\' AND sdoc.isDeleted=:deleteType AND map.UUID IS NULL"
    .end annotation
.end method

.method public abstract getIsSavingByWhichPid(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "SELECT isSaving FROM sdoc WHERE UUID=:uuid LIMIT 1"
    .end annotation
.end method

.method public abstract getPath(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroidx/room/Query;
        value = "SELECT filePath FROM sdoc WHERE UUID=:uuid LIMIT 1"
    .end annotation
.end method

.method public abstract getPathList(I)Ljava/util/List;
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/DeleteType;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT filePath FROM sdoc WHERE isDeleted=:deleteType"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRestoredUuidsByCategory(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM sdoc WHERE categoryUUID=:categoryUuid AND isDeleted=2"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServerTimeStamp(Ljava/lang/String;)Ljava/lang/Long;
    .annotation build Landroidx/room/Query;
        value = "SELECT serverTimestamp FROM sdoc WHERE UUID=:uuid LIMIT 1"
    .end annotation
.end method

.method public abstract getStrippedContent(Ljava/lang/String;)[B
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT strippedContent FROM text_search WHERE sdocUUID=:uuid"
    .end annotation
.end method

.method public abstract getUuid(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM sdoc WHERE filePath=:filePath LIMIT 1"
    .end annotation
.end method

.method public abstract get_LiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT `sdoc`.* FROM sdoc WHERE UUID=:uuid LIMIT 1"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract internalRawQuery(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/RawQuery;
        observedEntities = {
            Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract internalRawQuery_LiveData(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/lifecycle/LiveData;
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/RawQuery;
        observedEntities = {
            Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract moveToByCategoryUuid(Ljava/lang/String;J)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET categoryisDirty=1 , categoryServerTimestamp=:serverTimestamp WHERE categoryUUID=:categoryUuid"
    .end annotation
.end method

.method public abstract moveToRecycleBinByCategory(Ljava/lang/String;JJLjava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isDeleted=2 , recycle_bin_time_moved= :recyclerBinTimeMoved , absolutePath=:absolutePath , categoryisDirty=1 , categoryServerTimestamp=:serverTimestamp WHERE categoryUUID=:categoryUuid"
    .end annotation
.end method

.method public moveToRecycleBinByCategoryUuid(Ljava/lang/String;JJLjava/lang/String;)V
    .locals 2
    .annotation build Landroidx/room/Transaction;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getDocumentDataByCategoryUuid(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->printDeletedDocumentsByFolder(Ljava/util/List;I)V

    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->moveToRecycleBinByCategory(Ljava/lang/String;JJLjava/lang/String;)V

    return-void
.end method

.method public moveToRecycleBinByUuid(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Ljava/lang/String;Ljava/lang/String;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;)V
    .locals 12
    .annotation build Landroidx/room/Transaction;
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p1

    move-object v1, p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#delete, isDeleted: 2, uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->UNCATEGORIZED:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v10, v0

    const-string v11, "trash:///"

    move-object v4, p0

    move-object v5, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v4 .. v11}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->moveToRecycleBinByUuid(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->TAG:Ljava/lang/String;

    const-string v1, "moveToRecycleBinByUuid, entity not exist!!!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract moveToRecycleBinByUuid(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isDeleted=2 , categoryUuid=:categoryUuid , recycle_bin_time_moved=:recycleBinTimeMoved , absolutePath=:absolutePath  , serverTimestamp=:categoryServerTimestamp , isDirty=1 , categoryisDirty=1 , categoryServerTimestamp=:categoryServerTimestamp WHERE UUID=:uuid"
    .end annotation
.end method

.method public moveToRecycleBinByUuid(Ljava/util/Collection;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)V
    .locals 11
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;",
            ">;JJ",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->getCategoryUuid()Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move-object/from16 v3, p7

    move-wide v6, p2

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-virtual/range {v2 .. v10}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->moveToRecycleBinByUuid(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Ljava/lang/String;Ljava/lang/String;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract rawQueryForDocument(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/RawQuery;
        observedEntities = {
            Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        }
    .end annotation
.end method

.method public restore(Landroid/content/Context;Landroidx/room/RoomDatabase;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/lang/String;J)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/room/RoomDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    invoke-virtual {p0, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restore, invalid absolute path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->getAllDocumentCategoryTree(Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object v0

    invoke-virtual {p3, p1, v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->findAndMakeCategory(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->restoreByUuid(Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#restore, uuid: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p4, p1, p5, p6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->updateCategoryForSync(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public abstract restoreByCategory(Ljava/lang/String;J)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isDeleted=0 , categoryserverTimestamp=:categoryserverTimestamp   , categoryisDirty=1 WHERE categoryUUID=:categoryUuid AND isDeleted=2"
    .end annotation
.end method

.method public restoreByCategoryUuid(Ljava/lang/String;J)V
    .locals 0
    .annotation build Landroidx/room/Transaction;
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->printRestoreDocumentsByFolder(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->restoreByCategory(Ljava/lang/String;J)V

    return-void
.end method

.method public restoreByUuid(Landroid/content/Context;Landroidx/room/RoomDatabase;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;JLjava/util/Collection;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/room/RoomDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/room/RoomDatabase;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;",
            "J",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p6, :cond_0

    invoke-interface {p6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->restore(Landroid/content/Context;Landroidx/room/RoomDatabase;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract restoreByUuid(Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isDeleted=0 WHERE UUID=:uuid AND isDeleted=2"
    .end annotation
.end method

.method public setOpenedTime(Ljava/lang/String;)V
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFirstOpendAt()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFirstOpendAt()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFirstOpendAt()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getSecondOpenedAt()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    move-wide v13, v1

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getSecondOpenedAt()J

    move-result-wide v7

    move-wide v13, v7

    :goto_2
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFirstOpendAt()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getSecondOpenedAt()J

    move-result-wide v7

    cmp-long v5, v7, v5

    if-nez v5, :cond_5

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastOpenedAt()J

    move-result-wide v1

    :cond_5
    move-object v7, p0

    move-object/from16 v8, p1

    move-wide v9, v3

    move-wide v11, v13

    move-wide v5, v13

    move-wide v13, v1

    invoke-virtual/range {v7 .. v14}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->updateOpenedTime(Ljava/lang/String;JJJ)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setOpenedTime, first : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", second : "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", last : "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract updateAccountGuidByUuid(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET lockAccountGuid=:accountGuid WHERE UUID=:docUuid"
    .end annotation
.end method

.method public abstract updateCategoryByCategoryUuid(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET categoryUUID=:toCategoryUuid WHERE categoryUUID=:fromCategoryUuid"
    .end annotation
.end method

.method public abstract updateCategoryForSync(Ljava/lang/String;Ljava/lang/String;J)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET categoryUUID=:categoryUuid , categoryserverTimestamp=:folderTimestamp , categoryisDirty=1 , serverTimestamp=:folderTimestamp , isDirty=1 WHERE UUID=:uuid"
    .end annotation
.end method

.method public updateCategoryForSync(Ljava/util/Collection;Ljava/lang/String;J)V
    .locals 1
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->updateCategoryForSync(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract updateContentContents(Ljava/lang/String;Ljava/lang/String;)I
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET content =:content  WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract updateCorrupted(Ljava/lang/String;I)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET corrupted=:corrupted WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract updateDisplayContents(Ljava/lang/String;[B)I
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET displayContent =:displayContent  WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract updateFavorite(Ljava/lang/String;ZJ)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isFavorite=:isFavorite , isDirty=1 , serverTimestamp=:timestamp WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract updateFavorites(Ljava/util/Collection;ZJ)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isFavorite=:isFavorite , isDirty=1 , serverTimestamp=:timestamp WHERE UUID IN (:uuids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;ZJ)V"
        }
    .end annotation
.end method

.method public abstract updateLastMappedAt(Ljava/lang/String;J)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET lastMappedAt=:mappedAt WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract updateOpenedTime(Ljava/lang/String;JJJ)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET firstOpendAt=:first , secondOpenedAt=:second , lastOpenedAt=:last WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract updateRecommendedTitle(Ljava/lang/String;Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET recommendedTitle=:recommendedTitle WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract updateRecycleBinTimeMoved(Ljava/lang/String;J)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET recycle_bin_time_moved=:movedTime WHERE UUID=:docUUID"
    .end annotation
.end method

.method public abstract updateSaving(Ljava/lang/String;I)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isSaving=:flag WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract updateStrippedContents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "INSERT OR REPLACE INTO text_search (sdocUUID, strippedContent, filePath) VALUES  (:uuid, :strippedContent, :path)"
    .end annotation
.end method

.method public abstract updateTitle(Ljava/lang/String;Ljava/lang/String;[B)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET title=:title , displayTitle=:displayTitle WHERE UUID=:uuid"
    .end annotation
.end method
