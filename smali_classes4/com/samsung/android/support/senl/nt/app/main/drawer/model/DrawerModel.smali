.class public Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;
    }
.end annotation


# static fields
.field private static final NOT_FOUND_INDEX:I = -0x1

.field private static final TAG:Ljava/lang/String; = "DrawerModel"


# instance fields
.field private final mCoeditCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mDocumentCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;"
        }
    .end annotation
.end field

.field public mDrawerDisplayDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final mFolderDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

.field private mFolderUuid:Ljava/lang/String;

.field private mNotesLockDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

.field private mPrevFolderUuid:Ljava/lang/String;

.field private mSDocDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDocumentCountMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mCoeditCountMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mPrevFolderUuid:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFolderDataMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->restoreFolderExpandState(Ljava/util/Map;)V

    return-void
.end method

.method private addDrawerDisplayList(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getChildFolderListWithoutIgnoreFolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FolderUtils;->isIgnoreFolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private setPrevFolderUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mPrevFolderUuid:Ljava/lang/String;

    return-void
.end method

.method private updateFilter(Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ)V"
        }
    .end annotation

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->updateFilter(Ljava/util/Map;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method private updateFilter(Ljava/util/Map;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;ZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDocumentCountMap:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFilter name# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " count# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DrawerModel"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-direct {v0, p4, v2, p5, p6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setViewType(I)V

    invoke-virtual {v0, p8, p9}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setId(J)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {p2, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-nez v1, :cond_1

    new-instance p2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    invoke-direct {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;-><init>()V

    invoke-virtual {p2, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->setCategoryUuid(Ljava/lang/String;)V

    move-object v1, p2

    :cond_1
    invoke-virtual {v1, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->setDocumentCount(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {p2, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDocumentCountMap:Ljava/util/Map;

    invoke-interface {p2, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {p1, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private updateOldNoteFilter(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->isOldNotesFolderNeed()Z

    move-result v3

    sget-object v5, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$OldNotes;->UUID:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getDocumentCount(Ljava/lang/String;)I

    move-result v4

    sget-object v6, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$OldNotes;->DISPLAY_NAME:Ljava/lang/String;

    sget-object v7, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$OldNotes;->PATH:Ljava/lang/String;

    const/16 v8, 0x3eb

    const-wide/16 v9, -0x2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->updateFilter(Ljava/util/Map;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method


# virtual methods
.method public collapseDrawerDisplayData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)I
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->initDrawerDisplayDataList()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collapseDrawerDisplayData# name : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DrawerModel"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getChildFolderListWithoutIgnoreFolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->hasChild()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->collapseDrawerDisplayData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setExpanded(Z)V

    goto :goto_0

    :cond_5
    return v0
.end method

.method public collectingDrawerData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FolderUtils;->isIgnoreFolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->setSortType(I)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->build()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeSortUtils;->sort(Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->collectingDrawerData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public expandedDrawerDisplayData(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getChildFolderListWithoutIgnoreFolder(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expandedDrawerDisplayData# children : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DrawerModel"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getChildFolderListWithoutIgnoreFolder(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getChildFolderListWithoutIgnoreFolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDocumentCount(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$OldNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getOldNoteCount()I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDocumentCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    if-nez v0, :cond_1

    const-string v0, "FolderInfo"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->getDocumentCount()I

    move-result p1

    :goto_0
    return p1
.end method

.method public getDrawerDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getDrawerDisplayDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDrawerDisplayDataByItemId(J)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getDrawerDisplayDataList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getDrawerDisplayDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->initDrawerDisplayDataList()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    return-object v0
.end method

.method public getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    return-object p1
.end method

.method public getFolderDataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getFolderDocumentCount(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getChildFolderListWithoutIgnoreFolder(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    return p1
.end method

.method public getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    return-object v0
.end method

.method public getFolderUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderUuid:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getLastSelectedFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderUuid:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getNoteLockRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mNotesLockDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesLockDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mNotesLockDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mNotesLockDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    return-object v0
.end method

.method public getNoteRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mSDocDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mSDocDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mSDocDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    return-object v0
.end method

.method public getPrevFolderUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mPrevFolderUuid:Ljava/lang/String;

    return-object v0
.end method

.method public indexOfDrawerDisplayData(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public initDrawerDisplayDataList()V
    .locals 5

    const-string v0, "DrawerModel"

    const-string v1, "initDrawerDisplayDataList"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    sget-object v3, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->DISPLAY_NAME:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->string_screen_off_memo:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setDisplayName(Ljava/lang/String;)V

    :cond_3
    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;-><init>()V

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->setSortType(I)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->build()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeSortUtils;->sort(Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->hasParent()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->collectingDrawerData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public initFilterDrawerDisplayList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result v3

    const/16 v4, 0x3f1

    if-le v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method public move(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->move(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "move# "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DrawerModel"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setFolderUuid(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFolderUuid# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DrawerModel"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->setPrevFolderUuid(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderUuid:Ljava/lang/String;

    return-void
.end method

.method public updateAllDocumentCountMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAllDocumentCountMap# countMap : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DrawerModel"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->updateFilterDrawer(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDocumentCountMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDocumentCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDocumentCountMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mCoeditCountMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public updateCoeditCountMap(I)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDocumentCountMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$Coedit;->UUID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->setCategoryUuid(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->getDocumentCount()I

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->setDocumentCount(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mCoeditCountMap:Ljava/util/Map;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDocumentCountMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mCoeditCountMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateDrawerData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDrawerData# size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DrawerModel"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChildrenMap()Ljava/util/Map;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;->values()[Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;->a(Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;->a(Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setExpanded(Z)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setViewType(I)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setId(J)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->drawerOrdering(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->initDrawerDisplayDataList()V

    return-void
.end method

.method public updateFilterDrawer(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DrawerModel"

    const-string v1, "updateFilterDrawer"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->initFilterDrawerDisplayList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    const-string v2, "settings:///"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->addDrawerDisplayList(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->updateFilterPreDefineDrawerDisplayList(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->updateFolderInfoPreference(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateFilterPreDefineDrawerDisplayList(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->addDrawerDisplayList(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->updateOldNoteFilter(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getNoteRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getFavoriteItemCount(I)I

    move-result v4

    const-string v5, "favorite:///"

    const-string v6, "Favorite"

    const-string v7, "favorite:///"

    const/16 v8, 0x3ec

    const-wide/16 v9, -0x3

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->updateFilter(Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getNoteLockRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->getAllLockedDataCount(I)I

    move-result v4

    const-string v5, "lock:///"

    const-string v6, "Lock"

    const-string v7, "lock:///"

    const/16 v8, 0x3ed

    const-wide/16 v9, -0x5

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->updateFilter(Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDocumentCountMap:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getSmartFilter(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$SharedNotes;->UUID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->addDrawerDisplayList(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$Coedit;->UUID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->addDrawerDisplayList(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getNoteRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getAllWithTag(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "tag:///"

    const-string v5, "Tag"

    const-string v6, "tag:///"

    const/16 v7, 0x3f1

    const-wide/16 v8, -0x9

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->updateFilter(Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public updateFolderData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFolderData# folderName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DrawerModel"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->indexOfDrawerDisplayData(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public updateFolderInfoPreference(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$OldNotes;->UUID:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "favorite:///"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v5, "lock:///"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-string v5, "recentlyImported:///"

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string v5, "tag:///"

    aput-object v5, v1, v2

    move v2, v3

    :goto_0
    const-string v5, "FolderInfo"

    if-ge v2, v0, :cond_1

    aget-object v6, v1, v2

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v5}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->remove(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getChildFolderListWithoutIgnoreFolder(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    invoke-static {v5}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "myfolders_has_child"

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result v2

    const/16 v4, 0x3e9

    if-ge v4, v2, :cond_3

    const/16 v4, 0x3f3

    if-ge v2, v4, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    if-nez v4, :cond_5

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getDocumentCount()I

    move-result v4

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->getDocumentCount()I

    move-result v4

    :goto_3
    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isNeedFolderCount(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    add-int/2addr v4, v2

    invoke-static {v5}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    if-gtz v4, :cond_7

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->remove(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v1, v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_8
    return-void
.end method

.method public updateGcsDoucumentMap()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getPreferenceMDESupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$SharedNotes;->UUID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDocumentCountMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updateTagDocumentCountMap(I[I)I
    .locals 7
    .param p2    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTagDocumentCountMap# tagCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tagIndex : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DrawerModel"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FolderInfo"

    const-string v2, "tag:///"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    if-gtz p1, :cond_0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    const/4 v3, -0x1

    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    if-nez v4, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDocumentCountMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->indexOfDrawerDisplayData(Ljava/lang/String;)I

    move-result v5

    aput v5, p2, v1

    if-lez p1, :cond_5

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    const/4 v5, 0x0

    const-string v6, "Tag"

    invoke-direct {v0, v2, v5, v6, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x3f1

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setViewType(I)V

    const-wide/16 v5, -0x9

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setId(J)V

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v4, :cond_3

    new-instance v4, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;-><init>()V

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->setCategoryUuid(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v4, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->setDocumentCount(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDocumentCountMap:Ljava/util/Map;

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget p1, p2, v1

    if-ne p1, v3, :cond_4

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$RecycleBin;->UUID:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->indexOfDrawerDisplayData(Ljava/lang/String;)I

    move-result p1

    aput p1, p2, v1

    aget p1, p2, v1

    if-le p1, v3, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    aget p2, p2, v1

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    aget p2, p2, v1

    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDocumentCountMap:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    goto :goto_1

    :cond_6
    move v1, v3

    :goto_1
    return v1

    :cond_7
    :goto_2
    return v3
.end method
