.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SearchAsync;
.super Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAsync"
.end annotation


# instance fields
.field private mFolder:Ljava/lang/String;

.field private final mIsFavorite:Ljava/lang/String;

.field private final mIsLocked:Ljava/lang/String;

.field private mKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;-><init>(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SearchAsync;->mKeyword:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SearchAsync;->mFolder:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SearchAsync;->mIsFavorite:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SearchAsync;->mIsLocked:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public backgroundOperation()Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;
    .locals 14

    const-string v0, "Bixby2"

    const-string v1, "Bixby_searchThread start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;

    invoke-direct {v1}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;-><init>()V

    const-string v2, "failure"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setResult(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setDescription(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SearchAsync;->mKeyword:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SearchAsync;->mFolder:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SearchAsync;->mIsFavorite:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SearchAsync;->mIsLocked:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v2, "searching param is null"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v4, ""

    if-nez v3, :cond_1

    iput-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SearchAsync;->mKeyword:Ljava/lang/String;

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SearchAsync;->mFolder:Ljava/lang/String;

    if-nez v3, :cond_2

    iput-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SearchAsync;->mFolder:Ljava/lang/String;

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createSearchRepository()Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SearchAsync;->mKeyword:Ljava/lang/String;

    new-instance v6, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/BixbyRequestParam;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SearchAsync;->mFolder:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SearchAsync;->mIsFavorite:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SearchAsync;->mIsLocked:Ljava/lang/String;

    invoke-direct {v6, v5, v7, v8, v9}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/BixbyRequestParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;->searchBixby(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/BixbyRequestParam;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setResult(Ljava/lang/String;)V

    const-string v0, "mResult is null"

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setDescription(Ljava/lang/String;)V

    return-object v1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v5, "success"

    if-eqz v2, :cond_4

    invoke-virtual {v1, v5}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setResult(Ljava/lang/String;)V

    const-string v0, "Note count is 0"

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setDescription(Ljava/lang/String;)V

    return-object v1

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getDisplayContent()[B

    move-result-object v8

    if-eqz v8, :cond_5

    :try_start_0
    sget-object v9, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v8, v9}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayDataHelper;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;->getContent()Ljava/lang/CharSequence;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "backgroundOperation# DisplayData e : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    :goto_1
    if-nez v8, :cond_6

    :cond_5
    move-object v8, v4

    :cond_6
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v9

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getCategoryEntry(Ljava/lang/String;Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v9

    if-nez v9, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v9}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;

    invoke-direct {v10}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;-><init>()V

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->setNoteID(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->setNoteTitle(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->setNoteContent(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsFavorite()I

    move-result v8

    const/4 v12, 0x1

    if-ne v8, v12, :cond_8

    move v8, v12

    goto :goto_2

    :cond_8
    move v8, v11

    :goto_2
    invoke-virtual {v10, v8}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->setIsFavorite(Z)V

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result v8

    const/4 v13, 0x5

    if-eq v8, v13, :cond_9

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isLockedSdocType(I)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    move v11, v12

    :cond_a
    invoke-virtual {v10, v11}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->setisLocked(Z)V

    invoke-virtual {v10, v9}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->setCategory(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SearchAsync;->mFolder:Ljava/lang/String;

    if-eqz v7, :cond_c

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    :goto_3
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setNoteInfo(Ljava/util/ArrayList;)V

    goto :goto_4

    :cond_e
    invoke-virtual {v1, v6}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setNoteInfo(Ljava/util/ArrayList;)V

    :goto_4
    invoke-virtual {v1, v5}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setResult(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setDescription(Ljava/lang/String;)V

    const-string v2, "Bixby_searchThread end"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
