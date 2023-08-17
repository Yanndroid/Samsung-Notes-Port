.class public Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/PwFragment;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentContract$IView;
.implements Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment$Contract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/PwFragment$PwToolbarManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PwFragment"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/PwFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;-><init>()V

    return-void
.end method

.method private callOnActivityCreated()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public createDialogCreator()Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DialogCreator;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/PwDialogCreator;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/PwDialogCreator;-><init>()V

    return-object v0
.end method

.method public createOptionMenu()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mOptionMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->getOptionMenuPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/menu/option/PwOptionMenuCreator;->createOptionMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mOptionMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

    return-void
.end method

.method public createPresenter()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->setPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;)V

    return-void
.end method

.method public createToolbarManager()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/PwFragment$PwToolbarManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/PwFragment$PwToolbarManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/a;)V

    return-object v0
.end method

.method public onDiscardClicked()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentContract$IPresenter;->discardBackup()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/PwFragment;->callOnActivityCreated()V

    return-void
.end method

.method public onRestoreClicked()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentContract$IPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentContract$IPresenter;->restoreBackup(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/PwFragment;->callOnActivityCreated()V

    return-void
.end method

.method public showRestoreDialog(J)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/PwFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string p1, "showRestoreDialog# dialog is already shown"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "showRestoreDialog#"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "lastModifiedTime"

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const-class p2, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method
