.class public Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController$FilterObject;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartFilterController"


# instance fields
.field private final mRecentlyImported:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController$FilterObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController$FilterObject;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/RecentlyImported;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/RecentlyImported;-><init>()V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController$FilterObject;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/AbsSmartFilter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;->mRecentlyImported:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController$FilterObject;

    return-void
.end method


# virtual methods
.method public getRecentlyImportedCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;->mRecentlyImported:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController$FilterObject;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController$FilterObject;->mFilter:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/AbsSmartFilter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/AbsSmartFilter;->getCount()I

    move-result v0

    return v0
.end method

.method public getRecentlyImportedEntry()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;->mRecentlyImported:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController$FilterObject;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController$FilterObject;->mFilter:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/AbsSmartFilter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/AbsSmartFilter;->getMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    new-instance v1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;->mRecentlyImported:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController$FilterObject;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController$FilterObject;->mFilter:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/AbsSmartFilter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/AbsSmartFilter;->getSelection()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->rawQuery(Landroidx/sqlite/db/SimpleSQLiteQuery;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSmartFilter(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;->mRecentlyImported:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController$FilterObject;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController$FilterObject;->mFilter:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/AbsSmartFilter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/AbsSmartFilter;->getCount()I

    move-result v1

    const-string v2, "recentlyImported:///"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filterDrawer RecentlyImported# "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SmartFilterController"

    invoke-static {v6, v5}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v1, :cond_0

    if-eqz v3, :cond_3

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    new-instance v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    const/4 p2, 0x0

    const-string v5, "Recently Imported"

    invoke-direct {v3, v2, p2, v5, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x3ee

    invoke-virtual {v3, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setViewType(I)V

    const-wide/16 v5, -0x6

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setId(J)V

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez v4, :cond_2

    new-instance v4, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;-><init>()V

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->setCategoryUuid(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->setDocumentCount(I)V

    invoke-interface {p3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-object v0
.end method

.method public inactivate()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;->mRecentlyImported:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController$FilterObject;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController$FilterObject;->mFilter:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/AbsSmartFilter;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;->mRecentlyImported:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController$FilterObject;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController$FilterObject;->mNotesUUIDList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/AbsSmartFilter;->setNotesUUIDPreference(Ljava/util/Set;)V

    return-void
.end method
