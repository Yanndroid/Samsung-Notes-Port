.class Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;

.field public wrappedLockFileController:Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->wrappedLockFileController:Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;

    return-void
.end method

.method private passwordVerifyFail()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->setNotMatchPassword()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->releaseWrappedLockFileController()V

    return-void
.end method

.method private passwordVerifySuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->releaseWrappedLockFileController()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;->b(Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;)Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$ResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;->b(Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;)Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$ResultListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$ResultListener;->onResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private releaseWrappedLockFileController()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->wrappedLockFileController:Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string p1, "715"

    const-string v0, "7153"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "doc_path"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "lock_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;->a(Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->wrappedLockFileController:Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;->getFilePath()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;->access$000(Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "IOException"

    if-ne v0, v2, :cond_2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->isRightPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->passwordVerifySuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->passwordVerifyFail()V
    :try_end_0
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenUnsupportedTypeException"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;->isRightPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->passwordVerifySuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->passwordVerifyFail()V

    goto :goto_0

    :cond_4
    :try_start_1
    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->isRightPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->passwordVerifySuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$1;->passwordVerifyFail()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
