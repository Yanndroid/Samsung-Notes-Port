.class public Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$ConvertCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AddonsHandler"


# instance fields
.field private mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private mAppContext:Landroid/content/Context;

.field private mBundle:Landroid/os/Bundle;

.field private mConverterDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

.field private mCopyController:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;

.field private mListener:Lcom/samsung/android/support/senl/nt/app/addons/IAddonsListener;

.field private mProgressController:Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;

.field private mStubManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder<",
            "Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/samsung/android/support/senl/nt/app/addons/IAddonsListener;)V
    .locals 1
    .param p2    # Lcom/samsung/android/support/senl/nt/app/addons/IAddonsListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mBundle:Landroid/os/Bundle;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;-><init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mStubManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mAppContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mListener:Lcom/samsung/android/support/senl/nt/app/addons/IAddonsListener;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mProgressController:Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mCopyController:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mStubManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;->onRestoreDialogListener()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method private connectToAddons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p4    # I
        .annotation build Lcom/samsung/android/support/senl/nt/app/addons/AddonsConstants$StartMode;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mCopyController:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;

    invoke-direct {v1, p0, p1, p4, p3}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;-><init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->copySdocToExternalDir(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$IAddonsCaller;)V

    return-void
.end method

.method private convert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convert, sdocUuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AddonsHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "convert"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->countUpConvertTryCount(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mConverterDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;-><init>(Landroidx/fragment/app/FragmentActivity;ILcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$IDialogListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mConverterDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->connect(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-direct {v0, p2, v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->setIsImported(Z)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mAppContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$ConvertCallback;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mConverterDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$ConvertCallback;-><init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;)V

    invoke-static {p2, p1, v1, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory;->createTaskWithValidCheck(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Ljava/util/List;Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback;)Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->put(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Lcom/samsung/android/support/senl/nt/app/addons/IAddonsListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mListener:Lcom/samsung/android/support/senl/nt/app/addons/IAddonsListener;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->convert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->notifyTaskCanceled()V

    return-void
.end method

.method private isAddonExist()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mStubManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;->isAddonExist()Z

    move-result v0

    return v0
.end method

.method private isInstallableAddons()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mStubManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;->isInstallableAddons()Z

    move-result v0

    return v0
.end method

.method private isNeedAddonsUpdate()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mStubManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;->isNeedAddonsUpdate()Z

    move-result v0

    return v0
.end method

.method private isNeedSamsungNotesUpdate()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mStubManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;->isNeedSamsungNotesUpdate()Z

    move-result v0

    return v0
.end method

.method private notifyTaskCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mListener:Lcom/samsung/android/support/senl/nt/app/addons/IAddonsListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/addons/IAddonsListener;->onTaskCanceled()V

    :cond_0
    return-void
.end method

.method private saveDataToBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p4    # I
        .annotation build Lcom/samsung/android/support/senl/nt/app/addons/AddonsConstants$StartMode;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mBundle:Landroid/os/Bundle;

    const-string v1, "addons_document_uuid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mBundle:Landroid/os/Bundle;

    const-string v0, "addons_document_path"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mBundle:Landroid/os/Bundle;

    const-string p2, "highlighttext"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mBundle:Landroid/os/Bundle;

    const-string p2, "addons_key_start_mode"

    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private showAddonsInstallDialog(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mStubManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;->showAddonsInstallDialog(ZZ)V

    return-void
.end method

.method private showSamsungNotesUpdateDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mStubManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;->showSamsungNotesUpdateDialog()V

    return-void
.end method


# virtual methods
.method public checkAddonsUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mStubManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    return-void
.end method

.method public isProgressDialogShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mConverterDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->isProgressDialogShowing()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult# requestCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    const-string v1, "exist"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AddonsHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mStubManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x65

    const-string v2, "addons_result_action"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v0, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string p1, "addons_document_uuid"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "addons_document_path"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "addons_copied_document_path"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne p2, v3, :cond_1

    invoke-virtual {p3, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v5, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->convert(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mCopyController:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->deleteFile(Ljava/lang/String;)V

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->notifyTaskCanceled()V

    :cond_2
    return v5

    :cond_3
    const/16 v0, 0x385

    if-ne p1, v0, :cond_9

    if-ne p2, v3, :cond_7

    if-eqz p3, :cond_7

    const-string p1, "sdoc_uuid"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "doc_path"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p3, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->convert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "highlighttext"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "addons_key_start_mode"

    invoke-virtual {p3, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->connectToAddons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    move v4, v5

    goto :goto_3

    :cond_6
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid data, uuid/path : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    if-nez v4, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->notifyTaskCanceled()V

    :cond_8
    return v5

    :cond_9
    return v4
.end method

.method public onBackPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mCopyController:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mCopyController:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mProgressController:Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mListener:Lcom/samsung/android/support/senl/nt/app/addons/IAddonsListener;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mConverterDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mStubManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mStubManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;->release()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "addons_key_data_bundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mBundle:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mBundle:Landroid/os/Bundle;

    const-string v1, "addons_key_data_bundle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewChangeRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mStubManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;->onViewChangeRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewChangeSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mStubManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;->onViewChangeSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public startAddonComposer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p4    # I
        .annotation build Lcom/samsung/android/support/senl/nt/app/addons/AddonsConstants$StartMode;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startAddonComposer, forceConvert : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AddonsHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    if-nez v0, :cond_0

    const-string p1, "startAddonComposer, mActivity is already destroyed"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isVSTModel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->convert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->isAddonExist()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->saveDataToBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->isNeedSamsungNotesUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->showSamsungNotesUpdateDialog()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->isNeedAddonsUpdate()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->showAddonsInstallDialog(Z)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mBundle:Landroid/os/Bundle;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->mListener:Lcom/samsung/android/support/senl/nt/app/addons/IAddonsListener;

    invoke-interface {v3}, Lcom/samsung/android/support/senl/nt/app/addons/IAddonsListener;->getLockHelper()Lcom/samsung/android/support/senl/nt/app/lock/helper/ILockHelper;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsSdocHelper;->isLockedDocument(Landroid/content/Context;Landroid/os/Bundle;ILcom/samsung/android/support/senl/nt/app/lock/helper/ILockHelper;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->connectToAddons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const-string v0, "startAddonComposer, addons pkg doesn\'t exist"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->isInstallableAddons()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->saveDataToBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->showAddonsInstallDialog(Z)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->showSamsungNotesUpdateDialog()V

    :cond_6
    :goto_0
    return-void
.end method
