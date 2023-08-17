.class public Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareToOtherAppsTask"


# instance fields
.field private final callingPackage:Ljava/lang/String;

.field private final mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

.field private final mimeType:Ljava/lang/String;

.field private progressDialog:Landroidx/fragment/app/DialogFragment;

.field private final weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->weakReference:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->callingPackage:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->mimeType:Ljava/lang/String;

    return-void
.end method

.method private saveThumbnailByFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1, p3, v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSpenWNote(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;-><init>()V

    invoke-virtual {v0, p1, p3, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->saveThumbnail(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p3, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "saveThumbnailByFile# close wnote"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShareToOtherAppsTask"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/content/Intent;
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "ShareToOtherAppsTask"

    const-string v1, "NotePickerActivity is null"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->callingPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->setResultToOtherApps(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->doInBackground([Ljava/lang/Void;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->progressDialog:Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ShareToOtherAppsTask"

    if-nez v0, :cond_1

    const-string p1, "NotePickerActivity is null"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const-string p1, "Intent nonNull"

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const-string p1, "Intent is null"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->onPostExecute(Landroid/content/Intent;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showProgressDialogFragment()Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->progressDialog:Landroidx/fragment/app/DialogFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->progressDialog:Landroidx/fragment/app/DialogFragment;

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialogFragment;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "ShareToOtherAppsTask"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialogFragment;->showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public setResultToOtherApps(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getFilePath()Ljava/lang/String;

    move-result-object v3

    const-string v2, "application/sdocuuid"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/PageCacheUtils;->getMainCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v11, p0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v11, p0

    invoke-direct {p0, v0, v1, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;->saveThumbnailByFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/PageCacheUtils;->getMainCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/CreateIntentForPicker;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/CreateIntentForPicker;-><init>()V

    invoke-virtual {v3, v0, v1, v2, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/CreateIntentForPicker;->createIntentUUIDPicker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    goto/16 :goto_3

    :cond_2
    move-object v11, p0

    const-string v12, "setResultToOtherApps# "

    const-string v13, "ShareToOtherAppsTask"

    const/4 v14, 0x1

    if-eqz v9, :cond_3

    const-string v2, "application/sdoc"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;-><init>()V

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;)V

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getLastModifiedAt()J

    move-result-wide v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;->getDocumentUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0, v8, v1, v14}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v10, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSpenWNote(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    if-nez v1, :cond_4

    return-object v10

    :cond_4
    :try_start_1
    new-instance v9, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getLastModifiedAt()J

    move-result-wide v6

    move-object v2, v9

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/CreateIntentForPicker;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/CreateIntentForPicker;-><init>()V

    invoke-virtual {v2, v0, v1, v9, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/CreateIntentForPicker;->createIntentNotePicker(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v1, v14}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v10
.end method
