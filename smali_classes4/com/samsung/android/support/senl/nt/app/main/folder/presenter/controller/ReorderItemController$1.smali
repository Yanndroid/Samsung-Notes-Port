.class Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final EFFECT:I

.field private final NORMAL:I

.field private final SELECTED:I

.field private mActionState:I

.field private final mHandler:Landroid/os/Handler;

.field private mInsertColored:Z

.field private mInsertedColor:I

.field private mInsertedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field private mPrvSelectedFolderUuid:Ljava/lang/String;

.field private mSetPostExpand:Ljava/lang/Runnable;

.field private mStartViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->NORMAL:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->SELECTED:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->EFFECT:I

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->getChildOrderList(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->moveFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getChildOrderList(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$FolderOrder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->d(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$FolderOrder;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$FolderOrder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->d(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$FolderOrder;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Ljava/lang/Integer;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$FolderOrder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$FolderOrder;->getEntry()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setParentUuid(Ljava/lang/String;)V

    add-int/lit8 v2, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setReorder(Ljava/lang/Integer;)V

    move p1, v2

    goto :goto_2

    :cond_4
    return-object p2
.end method

.method private hasEntry(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->d(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private moveAndReorder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->d(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->d(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v6

    if-eqz v5, :cond_3

    if-nez v6, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->d(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDataMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFoldersDisplayName(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v11

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->b(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    move-object v10, p2

    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->isExistFolderName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->b(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->folder_already_in_use:I

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->d(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->initFolderDisplayDataList()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;->attachAddFolderItem()V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->moveFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getMaximumFolderDepth(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)I

    move-result v0

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getDepth()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getDepth()I

    move-result v2

    sub-int/2addr v0, v2

    const/16 v2, 0x32

    if-lt v0, v2, :cond_2

    const-string v0, "ReorderItemController"

    const-string v2, "moveAndReorder#, fail to move folders"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->b(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->add_subfolder_max_toast:I

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->moveFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v0

    new-instance v7, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    invoke-virtual {v0, v7}, Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;->runInTransaction(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->moveFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private moveFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "move fail# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReorderItemController"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;->setSelectedUuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;->setToScrollUuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;

    move-result-object p1

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;->setDataUpdateType(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onItemMove(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mSetPostExpand:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mPrvSelectedFolderUuid:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->a(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->onItemMove(II)V

    return-void
.end method

.method private onItemMoveFinished(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemMoveFinished# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReorderItemController"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mSetPostExpand:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mPrvSelectedFolderUuid:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;->setToScrollUuid(Ljava/lang/String;)V

    const-string v0, "addFolder:///"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object p3, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    :cond_2
    invoke-direct {p0, p2, p3, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->reorder(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private reorder(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->hasEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->hasEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;->setDataUpdateType(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->d(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->d(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v1

    if-eqz v0, :cond_9

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    :cond_2
    if-nez v3, :cond_3

    sget-object v3, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    :cond_3
    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->hasEntry(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->moveFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getParent()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v4

    if-eqz p3, :cond_5

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;->setSelectedUuid(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->moveAndReorder(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    if-nez p3, :cond_7

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;

    move-result-object p2

    invoke-interface {p2, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;->setSelectedUuid(Ljava/lang/String;)V

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->moveAndReorder(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->d(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_7

    if-le v5, v1, :cond_7

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getParent()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v5

    sub-int/2addr v3, v1

    const/4 v6, 0x2

    if-ne v3, v6, :cond_7

    if-eqz v5, :cond_7

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;->setSelectedUuid(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->moveAndReorder(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;

    move-result-object p3

    invoke-interface {p3, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;->setSelectedUuid(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, v0, p3, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->getChildOrderList(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "ReorderItemController"

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->moveFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v0

    invoke-virtual {v0, v2, p3}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->reorder(Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_0
    .catch Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "move success# "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reorder# : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->moveFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->moveFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->moveFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setExpandedStatus(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mPrvSelectedFolderUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExpandedStatus# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReorderItemController"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mSetPostExpand:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mPrvSelectedFolderUuid:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mSetPostExpand:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateHolder(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 6
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->d(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->d(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 v5, 0x2

    if-eq p1, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mInsertColored:Z

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object p1

    const-string v1, "addFolder:///"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setBackground(II)V

    invoke-virtual {v2, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setSelectedFolder(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->d(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->d(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mStartViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->hasChild()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->setExpandedStatus(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setReorderSelected(Z)V

    invoke-virtual {v2, v4, v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setBackground(IIZ)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mStartViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setBackground(II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;->isCheckedItem(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setSelectedFolder(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mInsertedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mInsertColored:Z

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;II)",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mInsertedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    const-string v2, "addFolder:///"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->updateHolder(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mInsertedColor:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mInsertedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->updateHolder(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mInsertColored:Z

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setReorderSelected(Z)V

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setSelectedFolder(Z)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mStartViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mInsertedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->onItemMoveFinished(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;->getInstance()Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->b(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->base_drag_drop_at:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p2

    add-int/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;->sendTalkBackMessage(Ljava/lang/String;)V

    return-void
.end method

.method public getMoveThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mInsertedColor:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mInsertedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->updateHolder(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMoveThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    move-result p1

    return p1
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mActionState:I

    const/4 p2, 0x0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mActionState:I

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mStartViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->updateHolder(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p1, 0x3

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p5

    iget-object v1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$dimen;->folder_recyclerview_padding_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result p5

    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p5, v0

    :goto_0
    int-to-float p5, p5

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    iget-object p5, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p5

    goto :goto_0

    :cond_1
    :goto_1
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p6

    move v7, p7

    invoke-super/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_5

    if-ne p3, v1, :cond_0

    goto :goto_2

    :cond_0
    if-le p2, p3, :cond_2

    :goto_0
    if-le p2, p3, :cond_4

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne v3, v4, :cond_1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mInsertedColor:I

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mInsertedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->updateHolder(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-direct {p0, p2, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->onItemMove(II)V

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge p2, p3, :cond_4

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne v3, v4, :cond_3

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mInsertedColor:I

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mInsertedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->updateHolder(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-direct {p0, p2, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->onItemMove(II)V

    :cond_3
    move p2, v1

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_2
    return v0
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mStartViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mInsertedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->updateHolder(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;->getInstance()Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->b(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->base_drag_start_at:I

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;->sendTalkBackMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mStartViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->updateHolder(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :goto_0
    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->mActionState:I

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method
