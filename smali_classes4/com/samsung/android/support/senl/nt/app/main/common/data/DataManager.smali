.class public Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DataManager"

.field private static mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;


# instance fields
.field private mCategoryTreeRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

.field private mDocumentCategoryTree:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

.field private mFolderDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mMainListRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

.field private mNotesConvertedDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;

.field private mNotesLockDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

.field private mNotesOldDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;

.field private mSDocDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

.field private mSmartFilter:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;

.field private mSyncNoteDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

.field private mTagRepository:Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addNotesCategoryTreeEntry(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
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
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    const/4 v1, 0x2

    const-string v2, "DataManager"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addNotesCategoryTreeEntry# already has "

    invoke-virtual {p8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", hasChild : "

    invoke-virtual {p8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->hasChild()Z

    move-result v6

    invoke-virtual {p8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isExpanded : "

    invoke-virtual {p8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v6

    invoke-virtual {p8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-static {v2, p8}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p8, 0x3eb

    if-ne p7, p8, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->isOldNotesFolderNeed()Z

    move-result v3

    goto :goto_0

    :cond_0
    if-ne p7, v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->hasChild()Z

    move-result p8

    if-eqz p8, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result p8

    if-eqz p8, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {v0, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setExpanded(Z)V

    :cond_2
    :goto_0
    invoke-virtual {v0, p7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setViewType(I)V

    invoke-virtual {v0, p5, p6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setId(J)V

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v3, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " remove"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    const/16 v5, 0x66

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->hasBaseLogic(I)Z

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addNotesCategoryTreeEntry# appLaunching : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", viewType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p7, v3, :cond_9

    const-string p1, "FolderInfo"

    packed-switch p7, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const-string v0, "tag:///"

    invoke-virtual {p1, v0, v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_5

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getAllWithTag(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_2

    :cond_5
    move v3, v4

    goto/16 :goto_2

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isCoeditFeatureEnabled(Landroid/content/Context;)Z

    move-result v3

    goto/16 :goto_2

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isCoeditFeatureEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getPreferenceMDESupported()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :pswitch_3
    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const-string v0, "recentlyImported:///"

    invoke-virtual {p1, v0, v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_5

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mSmartFilter:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;->getRecentlyImportedCount()I

    move-result p1

    if-lez p1, :cond_5

    goto :goto_2

    :pswitch_4
    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const-string v0, "lock:///"

    invoke-virtual {p1, v0, v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_5

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getNoteLockRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->getAllLockedDataCount(I)I

    move-result p1

    if-lez p1, :cond_5

    goto :goto_2

    :pswitch_5
    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const-string v0, "favorite:///"

    invoke-virtual {p1, v0, v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_5

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getFavoriteItemCount(I)I

    move-result p1

    if-lez p1, :cond_5

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->isOldNotesFolderNeed()Z

    move-result v3

    goto :goto_2

    :cond_9
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    :goto_2
    if-nez v3, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addNotesCategoryTreeEntry# folder isn\'t needed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_a
    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    const/4 p1, 0x0

    invoke-direct {v0, p3, p1, p4, p8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, p7, :cond_b

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->hasChild()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setExpanded(Z)V

    :cond_b
    invoke-virtual {v0, p7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setViewType(I)V

    invoke-virtual {v0, p5, p6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setId(J)V

    :cond_c
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFolderChildren(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getMaximumFolderDepth(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getDepth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getMaximumFolderDepth(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method private initFolderMap(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChildCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initFolderMap# size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mFolderDataMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mFolderDataMap:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mFolderDataMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChildrenMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->drawerOrdering(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public destroySmartFilter()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mSmartFilter:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;->inactivate()V

    return-void
.end method

.method public drawerOrdering(Ljava/util/Map;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation

    const-string v0, "DataManager"

    const-string v1, "drawerOrdering"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mSmartFilter:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mSmartFilter:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-wide/16 v6, -0xa

    const/16 v8, 0x3e9

    const/4 v9, 0x0

    const-string v4, "settings:///"

    const-string v5, "Settings"

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->addNotesCategoryTreeEntry(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    sget-object v4, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->DISPLAY_NAME:Ljava/lang/String;

    const-wide/16 v6, -0x1

    const/16 v8, 0x3ea

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->addNotesCategoryTreeEntry(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    sget-object v4, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$OldNotes;->UUID:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$OldNotes;->DISPLAY_NAME:Ljava/lang/String;

    const-wide/16 v6, -0x2

    const/16 v8, 0x3eb

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->addNotesCategoryTreeEntry(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    const-wide/16 v6, -0x3

    const/16 v8, 0x3ec

    const-string v4, "favorite:///"

    const-string v5, "Favorite"

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->addNotesCategoryTreeEntry(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    const-wide/16 v6, -0x5

    const/16 v8, 0x3ed

    const-string v4, "lock:///"

    const-string v5, "Lock"

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->addNotesCategoryTreeEntry(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    const-wide/16 v6, -0x6

    const/16 v8, 0x3ee

    const-string v4, "recentlyImported:///"

    const-string v5, "Recently Imported"

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->addNotesCategoryTreeEntry(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    sget-object v4, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$SharedNotes;->UUID:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$SharedNotes;->DISPLAY_NAME:Ljava/lang/String;

    const-wide/16 v6, -0x13

    const/16 v8, 0x3ef

    sget-object v9, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$SharedNotes;->PATH:Ljava/lang/String;

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->addNotesCategoryTreeEntry(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    sget-object v4, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$Coedit;->UUID:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$Coedit;->DISPLAY_NAME:Ljava/lang/String;

    const-wide/16 v6, -0x8

    const/16 v8, 0x3f0

    sget-object v9, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$Coedit;->PATH:Ljava/lang/String;

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->addNotesCategoryTreeEntry(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    const-wide/16 v6, -0x9

    const/16 v8, 0x3f1

    const/4 v9, 0x0

    const-string v4, "tag:///"

    const-string v5, "Tag"

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->addNotesCategoryTreeEntry(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    sget-object v4, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$RecycleBin;->UUID:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$RecycleBin;->DISPLAY_NAME:Ljava/lang/String;

    const-wide/16 v6, -0x7

    const/16 v8, 0x3f2

    sget-object v9, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$RecycleBin;->PATH:Ljava/lang/String;

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->addNotesCategoryTreeEntry(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    const-wide/16 v6, -0xb

    const/16 v8, 0x3f3

    const/4 v9, 0x0

    const-string v4, "divider:///"

    const-string v5, "Divider"

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->addNotesCategoryTreeEntry(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    sget-object v4, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    const-wide/16 v6, -0x4

    const/4 v8, 0x2

    const-string v5, "Folders"

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->addNotesCategoryTreeEntry(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    sget-object v4, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->DISPLAY_NAME:Ljava/lang/String;

    const-wide/16 v6, -0xe

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->addNotesCategoryTreeEntry(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    const-wide/16 v6, -0xc

    const/4 v8, 0x4

    const-string v4, "folderManage:///"

    const-string v5, "Folder Manage"

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->addNotesCategoryTreeEntry(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public getConvertedNoteRepository()Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mNotesConvertedDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesConvertedDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mNotesConvertedDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mNotesConvertedDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;

    return-object v0
.end method

.method public getConvertedOldNoteCount()I
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->hasBaseLogic(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "old_converted_notes"

    const-string v3, "FolderInfo"

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getConvertedNoteRepository()Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;->getAll_ConvertedCount(I)I

    move-result v0

    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    if-gtz v0, :cond_1

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    :goto_0
    return v0
.end method

.method public getDocumentCategoryTree()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mDocumentCategoryTree:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getAllDocumentCategoryTree(Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mDocumentCategoryTree:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mDocumentCategoryTree:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    return-object v0
.end method

.method public getExpandedJSONObject(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_1

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataManager"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mFolderDataMap:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getAllDocumentCategoryTree(Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->initFolderMap(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFolderDataMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mFolderDataMap:Ljava/util/Map;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mDocumentCategoryTree:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getAllDocumentCategoryTree(Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mDocumentCategoryTree:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mDocumentCategoryTree:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->initFolderMap(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mFolderDataMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mCategoryTreeRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mCategoryTreeRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mCategoryTreeRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    return-object v0
.end method

.method public getFoldersDisplayName(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFolderDataMap()Ljava/util/Map;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFolderChildren(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p2
.end method

.method public getHashTagRepository()Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mTagRepository:Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentTagRepository()Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mTagRepository:Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mTagRepository:Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    return-object v0
.end method

.method public getMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mMainListRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mMainListRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mMainListRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    return-object v0
.end method

.method public getNoteLockRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mNotesLockDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesLockDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mNotesLockDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mNotesLockDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    return-object v0
.end method

.method public getNoteRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mSDocDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mSDocDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mSDocDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    return-object v0
.end method

.method public getOldNoteCount()I
    .locals 6

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->hasBaseLogic(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "FolderInfo"

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$OldNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getOldNoteRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;->getAll_OldNotesCount(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getConvertedOldNoteCount()I

    move-result v1

    sub-int v3, v0, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOldNoteCount# oldCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", convertedCount : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", count : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$OldNotes;->UUID:Ljava/lang/String;

    if-gtz v3, :cond_1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    :goto_0
    return v3
.end method

.method public getOldNoteRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mNotesOldDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesOldDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mNotesOldDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mNotesOldDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;

    return-object v0
.end method

.method public getRecentlyImportedCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mSmartFilter:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mSmartFilter:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mSmartFilter:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;->getRecentlyImportedCount()I

    move-result v0

    return v0
.end method

.method public getRecentlyImportedEntry()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mSmartFilter:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mSmartFilter:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mSmartFilter:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;->getRecentlyImportedEntry()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSmartFilter(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 1
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mSmartFilter:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mSmartFilter:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mSmartFilter:Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/SmartFilterController;->getSmartFilter(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSyncNoteDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mSyncNoteDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mSyncNoteDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->mSyncNoteDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    return-object v0
.end method

.method public insertFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, p4, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setReorder(Ljava/lang/Integer;)V

    invoke-virtual {v1, p5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setDisplayNameColor(I)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/model/domain/folder/AddFolderUseCase;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object p3

    new-instance p4, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeClosureRepository;

    invoke-direct {p4, p1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeClosureRepository;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, p3, p4}, Lcom/samsung/android/support/senl/nt/model/domain/folder/AddFolderUseCase;-><init>(Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeClosureRepository;)V

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/senl/nt/model/domain/folder/AddFolderUseCase;->execute(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V

    return-object v0
.end method

.method public isExistFolderName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    const/16 v0, 0xa

    const/16 v1, 0x20

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-eqz p5, :cond_1

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->isReservedFolderForDataSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-nez p5, :cond_3

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->isReservedFolderForLayoutSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v0

    :cond_3
    if-nez p4, :cond_4

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFoldersDisplayName(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p4

    :cond_4
    if-nez p4, :cond_5

    return v0

    :cond_5
    invoke-interface {p4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isOldNotesFolderNeed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getOldNoteCount()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getConvertedOldNoteCount()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public restoreFolderExpandState(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "folder_expand_state"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v3, "DataManager"

    const-string v4, "restoreFolderExpandState"

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->setExpandedJSONObject(Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getExpandedJSONObject(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveCurrentFolderExpandState()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFolderDataMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->saveFolderExpandState(Ljava/util/Map;)V

    return-void
.end method

.method public saveFolderExpandState(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "DataManager"

    const-string v1, "saveFolderExpandState# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getExpandedJSONObject(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "folder_expand_state"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setExpandedJSONObject(Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;)V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result v1

    const/4 v4, 0x2

    if-gt v1, v4, :cond_2

    if-eqz v3, :cond_2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setExpanded(Z)V

    goto :goto_0

    :cond_4
    return-void
.end method
