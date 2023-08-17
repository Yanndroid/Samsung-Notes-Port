.class public Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/common/listener/OnBackKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingsConfirmDialogFragment"

.field public static final TYPE_OPTION_TO_MOVE_PEN_TOOLS:I = 0x4

.field public static final TYPE_SIGN_IN_AND_TURN_ON_SAMSUNG_CLOUD_SYNC:I = 0x3

.field public static final TYPE_TURN_OFF_MS_SYNC:I = 0x1

.field public static final TYPE_TURN_ON_SAMSUNG_CLOUD_SYNC:I = 0x2


# instance fields
.field private mDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;

.field private mMessageResID:I

.field private mNegativeResId:I

.field private mPositiveResId:I

.field private mTitleResID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsConfirmDialogFragment"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getSemPlatformVersionInt(I)I

    move-result p1

    const v0, 0x222e0

    if-ge p1, v0, :cond_1

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_use_phone_as_toolbar_dialog_message:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_use_phone_as_toolbar_dialog_message_sep_14:I

    :goto_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mMessageResID:I

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->base_string_settings:I

    goto :goto_6

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_your_notes_with_samsung_cloud_dialog_title_jp:I

    goto :goto_1

    :cond_3
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_your_notes_with_samsung_cloud_dialog_title:I

    :goto_1
    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mTitleResID:I

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result p1

    if-eqz p1, :cond_4

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_samsung_account_login_for_ms_sync_body_jp:I

    goto :goto_2

    :cond_4
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_samsung_account_login_for_ms_sync_body:I

    :goto_2
    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mMessageResID:I

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_samsung_account_login_for_ms_sync_positive:I

    goto :goto_6

    :cond_5
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result p1

    if-eqz p1, :cond_6

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_your_notes_with_samsung_cloud_dialog_title_jp:I

    goto :goto_3

    :cond_6
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_your_notes_with_samsung_cloud_dialog_title:I

    :goto_3
    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mTitleResID:I

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result p1

    if-eqz p1, :cond_7

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_with_samsung_cloud_turn_on_confirm_dialog_body_jp:I

    goto :goto_4

    :cond_7
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_with_samsung_cloud_turn_on_confirm_dialog_body:I

    :goto_4
    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mMessageResID:I

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync:I

    goto :goto_6

    :cond_8
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_to_ms_turn_off_confirm_dialog_title:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mTitleResID:I

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result p1

    if-eqz p1, :cond_9

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_to_ms_turn_off_confirm_dialog_body_jp:I

    goto :goto_5

    :cond_9
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_to_ms_turn_off_confirm_dialog_body:I

    :goto_5
    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mMessageResID:I

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_to_ms_turn_off_confirm_dialog_positive_button:I

    :goto_6
    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mPositiveResId:I

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->cancel_btn:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mNegativeResId:I

    :goto_7
    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;)Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;

    return-object p0
.end method


# virtual methods
.method public onBackKeyDown()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;->onCancel()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "mTitleResID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mTitleResID:I

    const-string v0, "mMessageResID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mMessageResID:I

    const-string v0, "mPositiveResId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mPositiveResId:I

    const-string v0, "mNegativeResId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mNegativeResId:I

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->settings_sync_confirm_dialog_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->dialog_body_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mMessageResID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mPositiveResId:I

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mNegativeResId:I

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mTitleResID:I

    if-lez p1, :cond_1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mTitleResID:I

    const-string v1, "mTitleResID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mMessageResID:I

    const-string v1, "mMessageResID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mPositiveResId:I

    const-string v1, "mPositiveResId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mNegativeResId:I

    const-string v1, "mNegativeResId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setDialogListener(Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->mDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;

    return-void
.end method

.method public showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method
