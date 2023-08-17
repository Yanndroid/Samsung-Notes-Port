.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;
.super Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity<",
        "Ljava/util/ArrayList<",
        "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
        ">;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ShareDialogTask"


# instance fields
.field private final TAG_PROGRESS_DIALOG:Ljava/lang/String;

.field private final mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

.field private mIsContentEmpty:Z

.field private final mIsSaveToExternalStorage:Z

.field public final mSharableNoteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mShareType:I

.field private final mTaskResult:Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

.field private mTaskResultListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;IZLcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAsyncTaskManager()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;-><init>(Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;Landroid/app/Activity;)V

    const-string v0, "ShareDialogTask_progress"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->TAG_PROGRESS_DIALOG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mIsContentEmpty:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mSharableNoteList:Ljava/util/ArrayList;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mShareType:I

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mIsSaveToExternalStorage:Z

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mTaskResultListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mIsSaveToExternalStorage:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mShareType:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mTaskResultListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;

    return-object p0
.end method

.method private closeSpenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ShareDialogTask"

    const-string v1, "closeSpenWNote"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeSpenWNote# : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->dismissProgressDialog()V

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ShareDialogTask"

    const-string v1, "dismissProgressDialog"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ShareDialogTask_progress"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->showProgressDialog()V

    return-void
.end method

.method private prepareExportDoc(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSpenWordDocument(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->isContentEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mSharableNoteList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iput-boolean v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mIsContentEmpty:Z

    :goto_1
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->close(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareDialogTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private prepareExportOthers(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSpenWNote(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCondition;->hasContent(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mSharableNoteList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mIsContentEmpty:Z

    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->closeSpenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private prepareExportText(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSpenWNote(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCondition;->hasText(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mSharableNoteList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mIsContentEmpty:Z

    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->closeSpenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mSharableNoteList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mTaskResultListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mIsContentEmpty:Z

    if-eqz v4, :cond_3

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$string;->share_no_text:I

    goto :goto_3

    :cond_3
    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->base_string_failed_to_load_image:I

    :goto_3
    invoke-interface {p1, v3, v4, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;->showToast(Landroid/content/Context;II)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->closeSpenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    return v2
.end method

.method private prepareExportWord(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSpenWNoteForExportOffice(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCondition;->hasContent(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mSharableNoteList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_1

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->hasObject(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v4

    goto :goto_1

    :cond_0
    iput-boolean v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mIsContentEmpty:Z

    :cond_1
    :goto_1
    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->closeSpenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    move-object v1, v3

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->isSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mSharableNoteList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$5;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;)V

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->runOnUiThread(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->closeSpenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return v4

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->isSupported(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "ShareDialogTask"

    const-string v2, "Share word : Can not extract text"

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const-string v2, "settings_export"

    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v4, :cond_5

    const-string p1, "Settings"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    invoke-virtual {p1, v2, v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    :cond_5
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->closeSpenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return v0
.end method

.method private showProgressDialog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ShareDialogTask"

    const-string v1, "showProgressDialog"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showProgressDialogFragment()Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "ShareDialogTask_progress"

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private showToast()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mIsSaveToExternalStorage:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mIsContentEmpty:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->save_as_file_empty_content:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->base_string_failed_to_load_image:I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mIsContentEmpty:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->share_empty_content:I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mTaskResultListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;->showToast(Landroid/content/Context;II)V

    return-void
.end method

.method private taskFinished()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;
    .locals 2

    const-string v0, "ShareDialogTask"

    const-string v1, "taskFinished"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mTaskResultListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$6;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;)V

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->runOnUiThread(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;
    .locals 0

    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->doInBackground([Ljava/util/ArrayList;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/util/ArrayList;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
            ">;)",
            "Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mTaskResultListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->taskFinished()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "ShareDialogTask_Thread"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground# shareType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mShareType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShareDialogTask"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mShareType:I

    if-eqz v2, :cond_7

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->prepareExportOthers(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mSharableNoteList:Ljava/util/ArrayList;

    aget-object p1, p1, v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->prepareExportText(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->taskFinished()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    move-result-object p1

    return-object p1

    :cond_4
    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->prepareExportWord(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->taskFinished()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    move-result-object p1

    return-object p1

    :cond_5
    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->prepareExportOthers(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mSharableNoteList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->showToast()V

    goto :goto_0

    :cond_6
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;)V

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->runOnUiThread(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->taskFinished()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    move-result-object p1

    return-object p1

    :cond_7
    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->prepareExportDoc(Ljava/util/ArrayList;)V

    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mSharableNoteList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->showToast()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->taskFinished()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    move-result-object p1

    return-object p1

    :cond_9
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mIsSaveToExternalStorage:Z

    if-eqz p1, :cond_a

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;)V

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->runOnUiThread(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->taskFinished()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    move-result-object p1

    return-object p1

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mTaskResultListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mSharableNoteList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mShareType:I

    invoke-interface {p1, v0, v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;->executeExportTask(Ljava/util/ArrayList;IZ)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    return-object p1

    :cond_b
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->taskFinished()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->doInBackground([Ljava/util/ArrayList;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    move-result-object p1

    return-object p1
.end method

.method public onPreExecute(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "ShareDialogTask"

    const-string v1, "onPreExecute"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->onPreExecute(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mTaskResultListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;)V

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->runOnUiThread(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setTaskResultListener(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mTaskResultListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;

    return-void
.end method
