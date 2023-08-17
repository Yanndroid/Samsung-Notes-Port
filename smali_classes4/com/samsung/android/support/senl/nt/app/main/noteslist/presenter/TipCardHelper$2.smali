.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$Contract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showImportCancelDialog(I)V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_tipcard_cancel_importing_dialog_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_tipcard_cancel_importing_dialog_message:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->OK:I

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2$4;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;I)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->dialog_cancel:I

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;)V

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onTipCardCancel(I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->showImportCancelDialog(I)V

    goto/16 :goto_1

    :cond_0
    const/high16 v1, 0x200000

    if-ne p1, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->getMode()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;->onBackKeyDown()Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->setConvertAll(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;->setOnCancelled()V

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->CONVERT_TASK:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->CONVERT_TASK_GROUP:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->cancel(II)V

    goto :goto_0

    :cond_3
    const/high16 v1, 0x1000000

    if-ne p1, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;->setOnCancelled()V

    :cond_4
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->cancel()V

    goto :goto_0

    :cond_5
    const/high16 v1, 0x4000000

    if-ne p1, v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportPDFTaskListener;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportPDFTaskListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportPDFTaskListener;->setOnCancelled()V

    :cond_6
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAsyncTaskManager()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const-class v3, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->getRunningTask(ILjava/lang/Class;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    :goto_1
    return-void
.end method

.method public onTipCardClose(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTipCardClose# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TipCardHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x40000

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->setAccountImportTipCardDisabled()V

    goto :goto_1

    :cond_0
    const/high16 v0, 0x100000

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->setConvertSuggestionTipCardDisabled()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    goto :goto_1

    :cond_2
    const/high16 v0, 0x800000

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->setMicrosoftFeedLoginTipcardDisabled()V

    goto :goto_1

    :cond_3
    const/high16 v0, 0x8000000

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    invoke-static {v1}, Li1/a;->n(Z)V

    goto :goto_0

    :cond_4
    const/high16 v0, 0x2000000

    if-ne p1, v0, :cond_5

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->setExternalStorageTipCardEnabled(Z)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x400

    if-ne p1, v0, :cond_1

    invoke-static {}, Lb3/u;->h()Lb3/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb3/u;->n(I)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public onTipCardImportAccount()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    move-result-object v0

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/samsung/android/support/senl/nt/app/settings/SettingsMainActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->setAccountImportTipCardDisabled()V

    :cond_0
    return-void
.end method

.method public onTipCardManageCloudStorage()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    invoke-static {}, Lb3/u;->h()Lb3/u;

    move-result-object v0

    invoke-virtual {v0, v1}, Lb3/u;->n(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.scloud"

    const-string v3, "com.samsung.android.scloud.app.ui.SCloudActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "baseFragment"

    const-string v2, "cloud_usage_status"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSCloudStorageActivity(),failed-ActivityNotFoundException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TipCardHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onTipCardMdeTryAgain()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "TipCardHelper"

    const-string v2, "onTipCardMdeTryAgain# "

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    invoke-static {}, Lb3/u;->h()Lb3/u;

    move-result-object v0

    invoke-virtual {v0, v1}, Lb3/u;->n(I)V

    invoke-static {}, Lp/a;->c()Lp/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->i(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lp/a;->p(Ljava/lang/String;ZLandroid/app/Activity;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_network_error_try_again:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;IZ)V

    :goto_0
    return-void
.end method

.method public onTipCardMeetEntering(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTipCardMeetEntering# isHost : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TipCardHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;->TIP_CARD_EXIST:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;->TIP_CARD_JOIN:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    :goto_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;)V

    invoke-static {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils;->checkLiveSharingStatus(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;)V

    return-void
.end method

.method public onTipCardMeetNewNote(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTipCardMeetNewNote# isHost : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TipCardHelper"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;->TIP_CARD_NEW:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;)V

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils;->checkLiveSharingStatus(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;)V

    return-void
.end method

.method public onTipCardOpenSettingsMicrosoftLogin()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->setMicrosoftFeedLoginTipcardDisabled()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->openSettingsMicrosoftLogin()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo1/a;->d(Landroid/content/Context;)I

    move-result v0

    const-string v1, "101"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string v0, "6704"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "5215"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTipCardOpenSettingsMicrosoftLoginAgain()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->o(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)V

    const-string v0, "TipCardHelper"

    const-string v1, "onTipCardOpenSettingsMicrosoftLoginAgain# start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->executeSignInAfterAuthInit()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->openSettingsMicrosoftLogin()V

    :goto_0
    return-void
.end method

.method public onTipCardOpenSettingsUpdateNotes()V
    .locals 4

    const-string v0, "TipCardHelper"

    const-string v1, "onTipCardOpenSettingsUpdateNotes# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->setConvertSuggestionTipCardDisabled()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x7

    const-string v3, "fragment_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onTipCardPermissionNotGranted(I)V
    .locals 2

    const/16 v0, 0x400

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/PermissionUtils;->showDetailsSettingsDialog(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x2000000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->setExternalStorageTipCardEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    const/4 p1, 0x4

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getStoragePermissions(I)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x65

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroid/app/Activity;I[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTipCardRetry(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTipCardRetry type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TipCardHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    invoke-static {}, Lx0/a;->a()Lx0/a;

    move-result-object p1

    invoke-virtual {p1}, Lx0/a;->e()V

    return-void
.end method

.method public onTipCardTryAgain(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTipCardTryAgain type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TipCardHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    invoke-virtual {v0}, Ln2/a;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    invoke-static {}, Lb3/u;->h()Lb3/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb3/u;->n(I)V

    :cond_0
    return-void
.end method
