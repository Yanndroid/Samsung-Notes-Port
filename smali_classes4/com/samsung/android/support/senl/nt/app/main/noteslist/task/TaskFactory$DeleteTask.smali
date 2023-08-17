.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;
.super Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity<",
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DeleteTask"


# instance fields
.field private mHasOpenedNote:Z

.field private final mIsDeletePermanently:Z

.field private final mTaskResult:Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

.field private final mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAsyncTaskManager()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;-><init>(Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;Landroid/app/Activity;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;->mHasOpenedNote:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isNeedToDeletePermanently(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;->mIsDeletePermanently:Z

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    return-void
.end method

.method private getDeleteFoldersUuids(Ljava/util/ArrayList;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createCategoryTreeClosureRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeClosureRepository;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;->getFoldersOpenedByComposer()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeClosureRepository;->getFoldersWithRelationShip(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;->mHasOpenedNote:Z

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method private getDeleteNotesUuids(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->isOpen(Ljava/lang/String;Landroidx/fragment/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;->mHasOpenedNote:Z

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private getFoldersOpenedByComposer()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getFolderIdsInUse()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;
    .locals 0

    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;->doInBackground([Ljava/util/ArrayList;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/util/ArrayList;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "DeleteTask"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground start mIsDeletePermanently : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;->mIsDeletePermanently:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v0

    const-string v2, "DELETE_DATA"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;->mHasOpenedNote:Z

    aget-object v4, p1, v0

    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;->getDeleteNotesUuids(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v4

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;->getDeleteFoldersUuids(Ljava/util/ArrayList;)Ljava/util/Set;

    move-result-object p1

    iget-boolean v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;->mIsDeletePermanently:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesRecycleBinRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->getDocumentsInRecycleBin(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->getFoldersInRecycleBin(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#delete, request/result, doc: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", folder: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v6, v3, v1}, Lcom/samsung/android/support/senl/nt/data/resolver/DocumentWriteResolver;->delete(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)Z

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->deleteByUuid(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x2

    invoke-static {v3, v4, v5, v1}, Lcom/samsung/android/support/senl/nt/data/resolver/DocumentWriteResolver;->delete(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)Z

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getAllDocumentCategoryTree(Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->moveToRecycleBin(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Ljava/util/Collection;)Z

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    const-string p1, "doInBackground end"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;->doInBackground([Ljava/util/ArrayList;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    move-result-object p1

    return-object p1
.end method

.method public hasOpenedNote()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;->mHasOpenedNote:Z

    return v0
.end method
