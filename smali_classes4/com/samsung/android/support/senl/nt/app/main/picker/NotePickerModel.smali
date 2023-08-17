.class public Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final SDOC_MIME_TYPE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final mFolderDataMap:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NotePickerModel"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;->TAG:Ljava/lang/String;

    const-string v0, "sdoc"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;->SDOC_MIME_TYPE:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFolderDataMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;->mFolderDataMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;->mFolderRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;->mFolderRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;->mFolderRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    return-object v0
.end method

.method public hasOnlySDocShare(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "application/sdoc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "application/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "android.intent.extra.STREAM"

    if-eqz v0, :cond_2

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sdoc"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/UriFileUtils;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ".sdoc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, ".sdocx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_5
    return v2

    :cond_6
    return v1
.end method

.method public importSdocHandler(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->isBlocked()Z

    move-result v0

    const-string v1, "NotePickerModel"

    if-eqz v0, :cond_1

    const-string p1, "importSdocHandler, import is blocked"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "importSdocHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_6

    invoke-virtual {p2, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/samsung/android/support/senl/nt/base/common/util/UriFileUtils;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ".sdoc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, ".sdocx"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    new-instance v8, Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;

    const/4 v9, 0x0

    invoke-direct {v8, v7, v9}, Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object p2

    const-string v0, "IMPORT_BY_NOTEPICKER"

    invoke-virtual {p2, v0, v3}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    new-instance p2, Lt1/a;

    invoke-direct {p2, p1, v4, v1}, Lt1/a;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lt1/a;->O(Z)Lt1/a;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;)V

    invoke-virtual {p1, p2}, Lt1/a;->N(Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract$ImportTaskListener;)Lt1/a;

    move-result-object p1

    invoke-virtual {p1}, Lt1/a;->execute()V

    :cond_7
    :goto_1
    return-void
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

    const-string v1, "NotePickerModel"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;->mFolderDataMap:Ljava/util/Map;

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

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;->mFolderDataMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;->getUuid()Ljava/lang/String;

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

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;->mFolderDataMap:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;->mFolderDataMap:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->drawerOrdering(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
