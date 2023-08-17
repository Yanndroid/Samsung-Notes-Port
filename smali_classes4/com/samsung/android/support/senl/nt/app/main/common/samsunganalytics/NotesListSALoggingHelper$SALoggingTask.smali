.class Lcom/samsung/android/support/senl/nt/app/main/common/samsunganalytics/NotesListSALoggingHelper$SALoggingTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/samsunganalytics/NotesListSALoggingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SALoggingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SALoggingTask"


# instance fields
.field private final folderData:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private helper:Lcom/samsung/android/support/senl/nt/app/main/common/samsunganalytics/NotesListSALoggingHelper;

.field private final noteData:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/samsunganalytics/NotesListSALoggingHelper;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/app/main/common/samsunganalytics/NotesListSALoggingHelper;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/samsunganalytics/NotesListSALoggingHelper$SALoggingTask;->helper:Lcom/samsung/android/support/senl/nt/app/main/common/samsunganalytics/NotesListSALoggingHelper;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/samsunganalytics/NotesListSALoggingHelper$SALoggingTask;->folderData:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/samsunganalytics/NotesListSALoggingHelper$SALoggingTask;->noteData:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/samsunganalytics/NotesListSALoggingHelper$SALoggingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    const-string p1, "SALoggingTask"

    const-string v0, "onDestroy doInBackground - start"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "onDestroy_GSIMThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/samsunganalytics/NotesListSALoggingHelper$SALoggingTask;->helper:Lcom/samsung/android/support/senl/nt/app/main/common/samsunganalytics/NotesListSALoggingHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/samsunganalytics/NotesListSALoggingHelper$SALoggingTask;->folderData:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/samsunganalytics/NotesListSALoggingHelper$SALoggingTask;->noteData:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/samsunganalytics/NotesListSALoggingHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/common/samsunganalytics/NotesListSALoggingHelper;Ljava/util/Map;Ljava/util/Map;)V

    const-string v0, "onDestroy doInBackground - end"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/samsunganalytics/NotesListSALoggingHelper$SALoggingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/samsunganalytics/NotesListSALoggingHelper$SALoggingTask;->helper:Lcom/samsung/android/support/senl/nt/app/main/common/samsunganalytics/NotesListSALoggingHelper;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/samsunganalytics/NotesListSALoggingHelper$SALoggingTask;->folderData:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/samsunganalytics/NotesListSALoggingHelper$SALoggingTask;->noteData:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method
