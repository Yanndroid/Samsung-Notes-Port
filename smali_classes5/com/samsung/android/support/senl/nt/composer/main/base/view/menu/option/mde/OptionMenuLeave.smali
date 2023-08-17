.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OptionMenuLeave"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public showLeaveConfirmDialog()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->clearSelectionForEachMode()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isTaskRootAndLockTaskMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;->TAG:Ljava/lang/String;

    const-string v1, "showLeaveConfirmDialog# already shown"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->coedit_leave_standalone_dialog_message:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isLeader()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->coedit_leave_space_dialog_message_for_leader:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->OK:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->coedit_action_leave:I

    :goto_0
    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$string;->coedit_leave_standalone_dialog_title:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_string_cancel:I

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;)V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;->mDialog:Landroidx/appcompat/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->toolbar:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/AlertDialogWrapper$AnchorType;->TOOLBAR:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/AlertDialogWrapper;->setAnchorView(Landroid/app/Dialog;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;->mDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "683"

    goto :goto_1

    :cond_3
    const-string v0, "682"

    :goto_1
    const-string v1, "7575"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method
