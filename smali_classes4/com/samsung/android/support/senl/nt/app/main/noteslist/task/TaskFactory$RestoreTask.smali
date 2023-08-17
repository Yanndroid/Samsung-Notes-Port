.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTask;
.super Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestoreTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity<",
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Integer;",
        "Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RestoreTask"


# instance fields
.field private mIsCancelled:Z

.field private final mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTaskResult;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAsyncTaskManager()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;-><init>(Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;Landroid/app/Activity;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTaskResult;

    const-string v0, "RestoreTask"

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTaskResult;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTaskResult;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTask;->mIsCancelled:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;
    .locals 0

    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTask;->doInBackground([Ljava/util/ArrayList;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/util/ArrayList;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;
    .locals 13
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

    const-string v1, "TaskFactory#RestoreTask"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const-string v0, "RestoreTask"

    const-string v1, "doInBackground# start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v1

    const-string v2, "RESTORE_DATA"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0xa

    div-int/2addr v4, v5

    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int/2addr v6, v5

    if-lez v6, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    add-int/2addr v4, v6

    move v6, v1

    move v7, v6

    :goto_1
    if-ge v6, v4, :cond_2

    iget-boolean v8, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTask;->mIsCancelled:Z

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    aget-object v8, p1, v1

    aget-object v9, p1, v1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v8, v1, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v7, v9

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getNoteRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->restoreByUuid(Ljava/util/Collection;)V

    invoke-interface {v8}, Ljava/util/List;->clear()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    aget-object v5, p1, v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v1

    :cond_3
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-boolean v9, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTask;->mIsCancelled:Z

    if-eqz v9, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->restore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v10

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v12

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v5

    aget-object p1, p1, v3

    invoke-virtual {v5, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->getCategoryUuids(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v12, v4, v8, v9}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->updateFolderModifiedTime(Ljava/util/Collection;J)V

    invoke-virtual {v12, v4, v10, v11}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->updateFolderServerTimestampUpward(Ljava/util/Collection;J)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->requestSyncByModification()Z

    :cond_6
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    const-string p1, "doInBackground# end"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTaskResult;

    invoke-virtual {p1, v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTaskResult;->setRestoredNotesCount(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTaskResult;

    invoke-virtual {p1, v6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTaskResult;->setRestoredFoldersCount(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTaskResult;

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTask;->doInBackground([Ljava/util/ArrayList;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    move-result-object p1

    return-object p1
.end method

.method public onCancelled()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTask;->mIsCancelled:Z

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->requestSyncByModification()Z

    return-void
.end method

.method public onPostExecute(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->onPostExecute(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;->onDataUpdated()V

    return-void
.end method
