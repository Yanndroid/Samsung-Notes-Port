.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DialogCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAutoRestoredNoteNotiDialog(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/AutoRestoredNoteNotiDialog;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/AutoRestoredNoteNotiDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IPresenter;)V

    return-object v0
.end method

.method public createBeautifierLanguageDialogFragment()Landroidx/fragment/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;-><init>()V

    return-object v0
.end method

.method public createCanNotUsePenDialog(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ICanNotUseSpenDialogPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CanNotUseSpenDialog;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CanNotUseSpenDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ICanNotUseSpenDialogPresenter;)V

    return-object v0
.end method

.method public createConfirmCancelVoiceDialog(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;)V

    return-object v0
.end method

.method public createConfirmRemoveItemDialog(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RemoveItemConfirmDialog;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RemoveItemConfirmDialog;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    return-object v0
.end method

.method public createConfirmRemoveRecordingDialog(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RemoveRecordingConfirmDialog;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RemoveRecordingConfirmDialog;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;)V

    return-object v0
.end method

.method public createConfirmSyncConflictDialogFragment()Landroidx/fragment/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;-><init>()V

    return-object v0
.end method

.method public createConfirmWebCardPreviewDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/WebCardPreviewConfirmDialog;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/WebCardPreviewConfirmDialog;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public createConvertSettingDialogFragment()Landroidx/fragment/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;-><init>()V

    return-object v0
.end method

.method public createDeletedNoteConfirmDialogFragment()Landroidx/fragment/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DeletedNoteConfirmDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DeletedNoteConfirmDialogFragment;-><init>()V

    return-object v0
.end method

.method public createDirectWriteSettingDialogFragment()Landroidx/fragment/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment;-><init>()V

    return-object v0
.end method

.method public createHashTagRenameDialogFragment()Landroidx/fragment/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;-><init>()V

    return-object v0
.end method

.method public createManualSaveConfirmDialog(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IManualSaveConfirmDialogPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ManualSaveConfirmDialog;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ManualSaveConfirmDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IManualSaveConfirmDialogPresenter;)V

    return-object v0
.end method

.method public createQuickNoteDialog(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;)V

    return-object v0
.end method

.method public createRenameDialogFragment()Landroidx/fragment/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceRenameDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceRenameDialogFragment;-><init>()V

    return-object v0
.end method

.method public createSaveAsRenameDialogFragment()Landroidx/fragment/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SaveAsRenameDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SaveAsRenameDialogFragment;-><init>()V

    return-object v0
.end method

.method public createSaveNoteConfirmDialogFragment()Landroidx/fragment/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SaveNoteConfirmDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SaveNoteConfirmDialogFragment;-><init>()V

    return-object v0
.end method

.method public createShareSaveNoteConfirmDialogFragment()Landroidx/fragment/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ShareSaveNoteConfirmDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ShareSaveNoteConfirmDialogFragment;-><init>()V

    return-object v0
.end method

.method public createSyncWaitingProgressDialogFragment()Landroidx/fragment/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;-><init>()V

    return-object v0
.end method

.method public createTextBoxMoreDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/TextBoxMoreDialog;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/TextBoxMoreDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IPresenter;)V

    return-object v0
.end method

.method public createUnlockConfirmDialog(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IUnlockConfirmDialogPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/UnlockConfirmDialog;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/UnlockConfirmDialog;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IUnlockConfirmDialogPresenter;)V

    return-object v0
.end method

.method public createVoiceDataRenameDialogFragment()Landroidx/fragment/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataRenameDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataRenameDialogFragment;-><init>()V

    return-object v0
.end method

.method public createVoiceDeleteConfirmDialog()Landroidx/fragment/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataDeleteConfirmDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataDeleteConfirmDialogFragment;-><init>()V

    return-object v0
.end method
