.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;
.super Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final SHARE_IMAGE:I = 0x4

.field public static final SHARE_NONE:I = -0x1

.field public static final SHARE_OLD_NOTE:I = 0x6

.field public static final SHARE_PDF:I = 0x1

.field public static final SHARE_PPT:I = 0x3

.field public static final SHARE_SDOC:I = 0x0

.field public static final SHARE_TEXT_ONLY:I = 0x5

.field public static final SHARE_WORD:I = 0x2

.field public static final SHARE_ZIP_FILE:I = 0x7

.field public static final TAG:Ljava/lang/String; = "ShareTask"


# instance fields
.field private final mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;

.field private mDestFileName:Ljava/lang/String;

.field private final mExportPdfType:I

.field private mIsPdfManagerExecuting:Z

.field private final mSaveAsExternalStorageDir:Ljava/lang/String;

.field private final mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

.field private final mShareHandlerCallback:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$Callback;

.field private final mShareNoteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSpenNotePdfExport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;

.field private mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private final mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;IILcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
            ">;II",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;IILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;IILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAsyncTaskManager()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;-><init>(Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;Landroid/app/Activity;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    const-string v1, "ShareTask"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mIsPdfManagerExecuting:Z

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandlerCallback:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$Callback;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareNoteList:Ljava/util/ArrayList;

    iput p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mExportPdfType:I

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSaveAsExternalStorageDir:Ljava/lang/String;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->setShareType(I)V

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->setIsShare(Z)V

    invoke-virtual {p0, p7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->setContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;)V

    invoke-virtual {p1, p6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->setRenamedFilePath(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mIsPdfManagerExecuting:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSpenNotePdfExport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;

    return-object p0
.end method

.method private clearTask()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->removeSpenWNoteCache()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->removeProgress()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->clearTask()V

    return-void
.end method

.method private docShare(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ShareTask"

    :try_start_0
    const-string v1, ""

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->isShare()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    sget-object v6, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;->MemoList:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->getShareType()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v2, v5, p1, v6, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->shareSDoc(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->isTaskCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSaveAsExternalStorageDir:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getLastModifiedTime()J

    move-result-wide v10

    const-string v12, "sdocx"

    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->generateNewFilePath(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->getMakeUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;->makeSDoc(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v4

    add-int/2addr v3, v5

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->setIntent(Landroid/content/Intent;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v4, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->setExportedFileName(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->setExportedItemCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SHARE_DOC : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHARE_DOC# isShare : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->isShare()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private executePdfCollectorTask(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/CollectController;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;-><init>()V

    const-string v2, "ShareTask"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setPdfActionKey(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setPdfActionCaller(Ljava/lang/Class;)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setActionType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->build()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->postCollectorTask(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    return-void
.end method

.method public static getExtension(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "txt"

    goto :goto_0

    :cond_1
    const-string p0, "jpg"

    goto :goto_0

    :cond_2
    const-string p0, "pptx"

    goto :goto_0

    :cond_3
    const-string p0, "docx"

    goto :goto_0

    :cond_4
    const-string p0, "pdf"

    goto :goto_0

    :cond_5
    const-string p0, "sdocx"

    :goto_0
    return-object p0
.end method

.method private imageShare(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ShareTask"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->isShare()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSpenWNote(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1, v2, v3, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->shareImage(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;)V

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->makeShareImageList(Landroid/content/Context;Ljava/util/List;)V

    goto/16 :goto_2

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSpenWNote(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSaveAsExternalStorageDir:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getLastModifiedTime()J

    move-result-wide v10

    const-string v12, "jpg"

    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->generateNewFilePath(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v2, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->getMakeUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1, v1, v4, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;->makeImage(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->setExportedFileName(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->setExportedItemCount(I)V

    return-void

    :cond_5
    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->getMakeUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v7, v8, v9, v6, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;->makeImage(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSaveAsExternalStorageDir:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getLastModifiedTime()J

    move-result-wide v10

    const-string v12, "zip"

    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->generateNewFilePath(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    invoke-virtual {v7, v6, v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->zip(Ljava/util/ArrayList;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    invoke-virtual {v7, v6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->deleteFile(Ljava/util/ArrayList;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v3

    goto :goto_1

    :cond_6
    move v6, v2

    :goto_1
    add-int/2addr v4, v6

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    const-string v7, "multipart/x-zip"

    invoke-static {v6, v5, v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/UriHelper;->requestScanFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {p1, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->setExportedItemCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SHARE_IMAGE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHARE_IMAGE# share : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->isShare()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isSupportExportPdfDialog()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->getShareType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSupportSaveAsProgressDialog()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->getShareType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->isShare()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isTaskCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private officeShare(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ShareTask"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->getShareType()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->isShare()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3, v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->shareOfficeFile(Landroid/content/Context;ILjava/util/List;)V

    goto/16 :goto_2

    :cond_0
    const-string v2, ""

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSpenWNoteForExportOffice(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    iget-object v9, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSaveAsExternalStorageDir:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getLastModifiedTime()J

    move-result-wide v11

    const-string v13, "pptx"

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->generateNewFilePath(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    if-ne v1, v8, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->getMakeUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;

    move-result-object v2

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v8, v9, v5, v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;->makeMsPPT(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v8, 0x2

    if-ne v1, v8, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->getMakeUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;

    move-result-object v2

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v8, v9, v5, v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;->makeMsWord(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v6

    add-int/2addr v3, v5

    goto :goto_0

    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v6, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->setExportedFileName(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->setExportedItemCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SHARE_OFFICE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHARE_OFFICE# share : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->isShare()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private pausePdfCollector()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->PAUSE_PDF:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->executePdfCollectorTask(I)V

    return-void
.end method

.method private pdfShare(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "share "

    const-string v1, "save as "

    const-string v2, "SHARE_PDF# "

    const-string v3, "ShareTask"

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->initSpenSdk(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->pausePdfCollector()V

    new-instance v5, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    iget v7, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mExportPdfType:I

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSpenNotePdfExport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mIsPdfManagerExecuting:Z

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->isShare()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSpenNotePdfExport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandlerCallback:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$Callback;

    invoke-virtual {v5, v6, v7, p1, v8}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->sharePdf(Landroid/content/Context;Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;Ljava/util/List;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$Callback;)I

    move-result v5

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSpenNotePdfExport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;

    iget-object v10, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSaveAsExternalStorageDir:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandlerCallback:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$Callback;

    move-object v9, p1

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->makePDFFiles(Landroid/content/Context;Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$Callback;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->setExportedFileName(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {v6, v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->setExportedItemCount(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->resumePdfCollector()V
    :try_end_0
    .catch Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mIsPdfManagerExecuting:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->isShare()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v5

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SHARE_PDF : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mIsPdfManagerExecuting:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->isShare()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_2
    iput-boolean v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mIsPdfManagerExecuting:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->isShare()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v5
.end method

.method private removeProgress()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->isSupportExportPdfDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;->removeExportPdfDialog()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->isSupportSaveAsProgressDialog()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;->removeSaveAsProgressDialog()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;->removeProgressCircle()V

    return-void
.end method

.method private removeSpenWNoteCache()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShareTask"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private resumePdfCollector()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->RESUME_PDF:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->executePdfCollectorTask(I)V

    return-void
.end method

.method private showProgress()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->isSupportExportPdfDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareNoteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;->showExportPdfDialog(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->isSupportSaveAsProgressDialog()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;->showSaveAsProgressDialog()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;->showProgressCircle()V

    :goto_0
    return-void
.end method

.method private textOnlyShare(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ShareTask"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->isShare()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSpenWNote(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, v4, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->createIntentToShareText(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->makeShareTextList(Landroid/content/Context;Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->setIntent(Landroid/content/Intent;)V

    const-string v1, ""

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSpenWNote(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSaveAsExternalStorageDir:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getLastModifiedTime()J

    move-result-wide v9

    const-string v11, "txt"

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->generateNewFilePath(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->getMakeUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v5, v6, v7, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;->makeText(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v3

    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v3, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->setExportedFileName(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->setExportedItemCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SHARE_TEXT_ONLY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHARE_TEXT_ONLY# share : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->isShare()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private zipFileSave(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mDestFileName:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "ShareTask"

    const-string v2, "zipFileSave#"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->getDestPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->zip(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".zip"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mDestFileName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zipFileSave : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareNoteList:Ljava/util/ArrayList;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->isTaskCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareNoteList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Ljava/io/File;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    new-instance v8, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils$GetSizeOfSdocShareTask;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getUuid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getCreatedTime()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getModifiedTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    move-object v9, v8

    invoke-direct/range {v9 .. v14}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils$GetSizeOfSdocShareTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/concurrent/RecursiveTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Empty Fail case count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ShareTask"

    invoke-static {v6, v4}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils$GetSizeOfSdocShareTask;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->isTaskCancelled()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v2, "Task is cancelled"

    invoke-static {v6, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ljava/util/concurrent/RecursiveTask;->join()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v2, v7

    const-wide/16 v7, 0x4

    mul-long/2addr v7, v2

    invoke-static {v7, v8}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->isAvailableMemoryForShare(J)Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no storage to share. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils$GetSizeOfSdocShareTask;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->setStorageExceed()V

    goto :goto_3

    :cond_5
    new-instance v15, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils$GetSizeOfSdocShareTask;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils$GetSizeOfSdocShareTask;->getUuid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils$GetSizeOfSdocShareTask;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils$GetSizeOfSdocShareTask;->getCreatedAt()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils$GetSizeOfSdocShareTask;->getLastModifiedAt()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    const-string v5, ""

    move-object v7, v15

    move-wide/from16 v16, v2

    move-object v2, v15

    move-object v15, v5

    invoke-direct/range {v7 .. v15}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v2, v16

    goto :goto_2

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    return-object v1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shareDataList size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->getShareType()I

    move-result v2

    if-eqz v2, :cond_f

    const/4 v3, 0x6

    if-ne v2, v3, :cond_8

    goto :goto_5

    :cond_8
    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->pdfShare(Ljava/util/List;)V

    goto :goto_6

    :cond_9
    const/4 v3, 0x3

    if-eq v2, v3, :cond_e

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    goto :goto_4

    :cond_a
    const/4 v3, 0x4

    if-ne v2, v3, :cond_b

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->imageShare(Ljava/util/List;)V

    goto :goto_6

    :cond_b
    const/4 v3, 0x5

    if-ne v2, v3, :cond_c

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->textOnlyShare(Ljava/util/List;)V

    goto :goto_6

    :cond_c
    const/4 v3, 0x7

    if-ne v2, v3, :cond_d

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->zipFileSave(Ljava/util/List;)V

    goto :goto_6

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected shareType: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    :goto_4
    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->officeShare(Ljava/util/List;)V

    goto :goto_6

    :cond_f
    :goto_5
    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->docShare(Ljava/util/List;)V

    :goto_6
    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    return-object v1

    :cond_10
    :goto_7
    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    return-object v1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->doInBackground([Ljava/lang/Void;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->doInBackground([Ljava/lang/Void;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    move-result-object p1

    return-object p1
.end method

.method public getTaskResult()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    return-object v0
.end method

.method public onCancelled(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;)V
    .locals 2

    const-string p1, "ShareTask"

    const-string p2, "onCancelled(result)"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->setCancelled()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->cancel()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSpenNotePdfExport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->cancelExportFile()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->resumePdfCollector()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$2;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;Landroid/os/Handler;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->clearTask()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCancelled(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;)V
    .locals 0

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->onCancelled(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;)V

    return-void
.end method

.method public onPostExecute(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->onPostExecute(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostExecute# tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSpenNotePdfExport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->close()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->removeSpenWNoteCache()V

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->getShareType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    const/4 v4, 0x5

    if-eq v0, v4, :cond_4

    const/4 v4, 0x6

    if-eq v0, v4, :cond_4

    const/4 v4, 0x7

    if-eq v0, v4, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mDestFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->save_as_file_saved:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mDestFileName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p2, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->showEncodingLog(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mDestFileName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->getStorageExceed()Z

    move-result p2

    if-eqz p2, :cond_9

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->not_enough_space:I

    goto :goto_0

    :cond_4
    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_5

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->unable_to_open_note:I

    :goto_0
    invoke-static {p1, p2, v3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    goto :goto_1

    :cond_5
    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->share_no_text:I

    invoke-static {p1, p2, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->getStorageExceed()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mSaveAsExternalStorageDir:Ljava/lang/String;

    if-nez v0, :cond_7

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->not_enough_space_content:I

    new-array v0, v2, [Ljava/lang/Object;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->action_share:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showNotEnoughStorageDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    :cond_7
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->not_enough_space_content:I

    new-array v2, v2, [Ljava/lang/Object;

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->composer_save_to_device:I

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showNotEnoughStorageDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/appcompat/app/AlertDialog;

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mShareHandler:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->startChooserActivity(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->removeProgress()V

    :cond_a
    :goto_2
    return-void
.end method

.method public bridge synthetic onPostExecute(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;)V
    .locals 0

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->onPostExecute(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;)V

    return-void
.end method

.method public onPreExecute(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->onPreExecute(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->showProgress()V

    return-void
.end method

.method public setContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;

    return-void
.end method
