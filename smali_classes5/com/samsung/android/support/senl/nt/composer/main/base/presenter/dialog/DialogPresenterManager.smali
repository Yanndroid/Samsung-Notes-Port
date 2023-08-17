.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenterContainer;
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IDialogManager;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAutoRestoredNoteNotiDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;

.field private mCanNotUseSpenDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/CanNotUseSpenDialogPresenter;

.field private mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

.field private mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private mConvertSettingDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;

.field private mCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;

.field private mDeletedNoteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DeletedNoteConfirmDialogPresenter;

.field private mDirectWriteSettingDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DirectWriteSettingDialogPresenter;

.field private mHashTagRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HashTagRenameDialogPresenter;

.field private mHwBeautifierLanguageDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HwBeautifierLanguageDialogPresenter;

.field private mInAppDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;

.field private mManualSaveConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ManualSaveConfirmDialogPresenter;

.field private mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

.field private mQuickNoteDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

.field private mSaveAsRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;

.field public mSaveNoteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveNoteConfirmDialogPresenter;

.field private mShareSaveNoteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ShareSaveNoteConfirmDialogPresenter;

.field private mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

.field private mSyncConflictConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

.field private mSyncWaitingProgressDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncWaitingProgressDialogPresenter;

.field private mTextBoxMoreDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;

.field private mUnlockConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;

.field private mVoiceDataDeleteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataDeleteConfirmDialogPresenter;

.field private mVoiceDataRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataRenameDialogPresenter;

.field private mVoiceDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDialogPresenter;

.field private mVoiceRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceRenameDialogPresenter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DialogPresenterManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncWaitingProgressDialogPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSyncWaitingProgressDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncWaitingProgressDialogPresenter;

    return-object p0
.end method

.method private hideSoftInput()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->hide(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createConvertSettingDialogPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;)V

    return-object v0
.end method

.method public createSaveNoteConfirmDialogPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveNoteConfirmDialogPresenter;
    .locals 1

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveNoteConfirmDialogPresenter;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    invoke-direct {p3, p1, p2, p4, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveNoteConfirmDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V

    return-object p3
.end method

.method public dismissConfirmVoiceDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDialogPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDialogPresenter;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDialogPresenter;->hide()V

    :cond_0
    return-void
.end method

.method public dismissConvertSettingDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mConvertSettingDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;->dismissConvertSettingDialog()V

    return-void
.end method

.method public dismissDirectWriteSettingDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mDirectWriteSettingDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DirectWriteSettingDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->hide()V

    return-void
.end method

.method public getDialogFragmentPresenter(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenter;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mHwBeautifierLanguageDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HwBeautifierLanguageDialogPresenter;

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mShareSaveNoteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ShareSaveNoteConfirmDialogPresenter;

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceDataDeleteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataDeleteConfirmDialogPresenter;

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mDirectWriteSettingDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DirectWriteSettingDialogPresenter;

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSyncConflictConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

    return-object p1

    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSyncWaitingProgressDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncWaitingProgressDialogPresenter;

    return-object p1

    :pswitch_7
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceDataRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataRenameDialogPresenter;

    return-object p1

    :pswitch_8
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSaveNoteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveNoteConfirmDialogPresenter;

    return-object p1

    :pswitch_9
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSaveAsRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;

    return-object p1

    :pswitch_a
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mDeletedNoteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DeletedNoteConfirmDialogPresenter;

    return-object p1

    :pswitch_b
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mHashTagRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HashTagRenameDialogPresenter;

    return-object p1

    :pswitch_c
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mConvertSettingDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;

    return-object p1

    :pswitch_d
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceRenameDialogPresenter;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getQuickNoteDialogPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mQuickNoteDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    return-object v0
.end method

.method public hideInAppDeviceListDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mInAppDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;->dismiss()V

    return-void
.end method

.method public hideQuickNoteDialog(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mQuickNoteDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->hide(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public hideSyncWaitingProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSyncWaitingProgressDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncWaitingProgressDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncWaitingProgressDialogPresenter;->hide()V

    return-void
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V
    .locals 3

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getSoftInputManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getProgressController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mHashTagRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HashTagRenameDialogPresenter;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->TAG:Ljava/lang/String;

    const-string p2, "init# objects are already created"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HashTagRenameDialogPresenter;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getHashTagController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HashTagRenameDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mHashTagRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HashTagRenameDialogPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->createConvertSettingDialogPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mConvertSettingDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DirectWriteSettingDialogPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-direct {v0, p2, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DirectWriteSettingDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mDirectWriteSettingDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DirectWriteSettingDialogPresenter;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDialogPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDialogPresenter;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceRenameDialogPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-direct {v0, p2, v1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceRenameDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceRenameDialogPresenter;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DeletedNoteConfirmDialogPresenter;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getQuickSaveTimer()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;

    move-result-object v1

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object p5

    invoke-direct {v0, p1, p2, v1, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DeletedNoteConfirmDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mDeletedNoteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DeletedNoteConfirmDialogPresenter;

    new-instance p5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;

    invoke-direct {p5, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;)V

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mUnlockConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;

    new-instance p5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;

    invoke-direct {p5, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;)V

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSaveAsRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;

    iget-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p5, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->createSaveNoteConfirmDialogPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveNoteConfirmDialogPresenter;

    move-result-object p5

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSaveNoteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveNoteConfirmDialogPresenter;

    new-instance p5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ShareSaveNoteConfirmDialogPresenter;

    invoke-direct {p5, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ShareSaveNoteConfirmDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;)V

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mShareSaveNoteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ShareSaveNoteConfirmDialogPresenter;

    new-instance p5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataRenameDialogPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-direct {p5, p2, v0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataRenameDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;)V

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceDataRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataRenameDialogPresenter;

    new-instance p5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncWaitingProgressDialogPresenter;

    invoke-direct {p5, p2, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncWaitingProgressDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;)V

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSyncWaitingProgressDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncWaitingProgressDialogPresenter;

    new-instance p4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

    iget-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;)V

    invoke-direct {p4, p1, p2, p5, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$DialogPresenterManagerContract;)V

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSyncConflictConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

    new-instance p4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;

    iget-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-direct {p4, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mAutoRestoredNoteNotiDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;

    new-instance p4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/CanNotUseSpenDialogPresenter;

    iget-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object p5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-direct {p4, p2, p5, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/CanNotUseSpenDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mCanNotUseSpenDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/CanNotUseSpenDialogPresenter;

    new-instance p4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataDeleteConfirmDialogPresenter;

    iget-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getVoiceModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p5

    invoke-direct {p4, p2, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataDeleteConfirmDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;)V

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceDataDeleteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataDeleteConfirmDialogPresenter;

    new-instance p4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-direct {p4, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;)V

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mQuickNoteDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;

    invoke-direct {p3, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mInAppDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ManualSaveConfirmDialogPresenter;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ManualSaveConfirmDialogPresenter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mManualSaveConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ManualSaveConfirmDialogPresenter;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HwBeautifierLanguageDialogPresenter;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HwBeautifierLanguageDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mHwBeautifierLanguageDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HwBeautifierLanguageDialogPresenter;

    return-void
.end method

.method public isShowingQuickNoteDialog()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mQuickNoteDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isShowingSyncWaitingProgressDialog()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSyncWaitingProgressDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncWaitingProgressDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncWaitingProgressDialogPresenter;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onAttachView(Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mHashTagRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HashTagRenameDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onAttachView(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mConvertSettingDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onAttachView(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mDirectWriteSettingDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DirectWriteSettingDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onAttachView(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDialogPresenter;->onAttachView(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceRenameDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onAttachView(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mUnlockConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->onAttachView(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSaveAsRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onAttachView(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceDataRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataRenameDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onAttachView(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSyncWaitingProgressDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncWaitingProgressDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onAttachView(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSyncConflictConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onAttachView(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mCanNotUseSpenDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/CanNotUseSpenDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/CanNotUseSpenDialogPresenter;->onAttachView(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSaveNoteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveNoteConfirmDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onAttachView(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mShareSaveNoteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ShareSaveNoteConfirmDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onAttachView(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceDataDeleteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataDeleteConfirmDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onAttachView(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mQuickNoteDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->onAttachView(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mHwBeautifierLanguageDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HwBeautifierLanguageDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onAttachView(Landroid/app/Activity;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDialogPresenter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDialogPresenter;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDialogPresenter;->hide()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mTextBoxMoreDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mTextBoxMoreDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->hide()V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mUnlockConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mUnlockConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->hide()V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mQuickNoteDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mQuickNoteDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    const/4 v3, 0x0

    const-string v4, "onBackPressed"

    invoke-virtual {v0, v4, v3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->hide(Ljava/lang/String;Ljava/util/List;Z)V

    return v1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mManualSaveConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ManualSaveConfirmDialogPresenter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ManualSaveConfirmDialogPresenter;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mManualSaveConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ManualSaveConfirmDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ManualSaveConfirmDialogPresenter;->hide()V

    return v1

    :cond_4
    return v2
.end method

.method public onDetachView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mHashTagRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HashTagRenameDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mConvertSettingDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mDirectWriteSettingDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DirectWriteSettingDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDialogPresenter;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceRenameDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mUnlockConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSaveAsRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceDataRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataRenameDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSyncWaitingProgressDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncWaitingProgressDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSyncConflictConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mAutoRestoredNoteNotiDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mCanNotUseSpenDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/CanNotUseSpenDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/CanNotUseSpenDialogPresenter;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSaveNoteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveNoteConfirmDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mShareSaveNoteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ShareSaveNoteConfirmDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceDataDeleteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataDeleteConfirmDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mTextBoxMoreDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->onDetachView()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mQuickNoteDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mManualSaveConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ManualSaveConfirmDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ManualSaveConfirmDialogPresenter;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mHwBeautifierLanguageDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HwBeautifierLanguageDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onDetachView()V

    return-void
.end method

.method public showAutoRestoredNoteNotiDialog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mAutoRestoredNoteNotiDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;->show(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Landroid/app/Activity;)V

    return-void
.end method

.method public showCanNotUseSpenDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mCanNotUseSpenDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/CanNotUseSpenDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/CanNotUseSpenDialogPresenter;->showDialog()V

    return-void
.end method

.method public showConfirmCancelVoiceDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDialogPresenter;->showConfirmCancelVoiceDialog()V

    return-void
.end method

.method public showConfirmRemoveItemDialog(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDialogPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDialogPresenter;->showConfirmRemoveItemDialog(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    return-void
.end method

.method public showConfirmRemoveRecordingDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDialogPresenter;->showConfirmRemoveRecordingDialog()V

    return-void
.end method

.method public showConfirmSyncConflictDialog()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->TAG:Ljava/lang/String;

    const-string v1, "showConfirmSyncConflictDialog#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSyncConflictConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->show()V

    return-void
.end method

.method public showConvertSettingDialog()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isSos()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->hideSoftInput()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mConvertSettingDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;->showConvertSettingDialog()V

    const-string v0, "411"

    const-string v1, "4505"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showDeletedNoteConfirmDialog()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->TAG:Ljava/lang/String;

    const-string v1, "showDeletedNoteConfirmDialog#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mDeletedNoteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DeletedNoteConfirmDialogPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DeletedNoteConfirmDialogPresenter;->show(Landroid/app/Activity;)V

    return-void
.end method

.method public showDirectWriteSettingDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mDirectWriteSettingDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DirectWriteSettingDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DirectWriteSettingDialogPresenter;->showDirectWriteSettingDialog()V

    return-void
.end method

.method public showHashTagRenameDialog(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mHashTagRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HashTagRenameDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HashTagRenameDialogPresenter;->showHashTagRenameDialog(Ljava/lang/String;)V

    return-void
.end method

.method public showHwBeautifierLanguageDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mHwBeautifierLanguageDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HwBeautifierLanguageDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HwBeautifierLanguageDialogPresenter;->show()V

    return-void
.end method

.method public showInAppDeviceListDialog(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel$NearbyDevice;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mInAppDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;->show(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method public showManualSaveConfirmDialog(Ljava/lang/Runnable;Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mManualSaveConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ManualSaveConfirmDialogPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ManualSaveConfirmDialogPresenter;->show(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Landroid/app/Activity;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public showNotEnoughStorageDialog()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->TAG:Ljava/lang/String;

    const-string v1, "showNotEnoughMemoryDialog"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showNotEnoughStorageDialog(Landroid/content/Context;Ljava/lang/Runnable;)Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public showQuickNoteDialog(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ActionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mQuickNoteDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->show(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ActionListener;)V

    return-void
.end method

.method public showRenameDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceRenameDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceRenameDialogPresenter;->showRenameDialog()V

    return-void
.end method

.method public showSaveAsRenameDialog(Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSaveAsRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;->showRenameDialog(Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter$OnClickListener;)V

    return-void
.end method

.method public showSaveNoteConfirmDialog(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->TAG:Ljava/lang/String;

    const-string v1, "showSaveNoteConfirmDialog#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSaveNoteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveNoteConfirmDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveNoteConfirmDialogPresenter;->show(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showShareSaveNoteConfirmDialog(ZLjava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->TAG:Ljava/lang/String;

    const-string v1, "showShareSaveNoteConfirmDialog#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mShareSaveNoteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ShareSaveNoteConfirmDialogPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ShareSaveNoteConfirmDialogPresenter;->show(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public showSyncWaitingProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mSyncWaitingProgressDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncWaitingProgressDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncWaitingProgressDialogPresenter;->show()V

    return-void
.end method

.method public showTextBoxMoreDialog(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mTextBoxMoreDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mTextBoxMoreDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mTextBoxMoreDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getSearchKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->show(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Landroid/app/Activity;Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Ljava/lang/String;)V

    return-void
.end method

.method public showUnlockConfirmDialog(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mUnlockConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->show(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showVideoErrDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$style;->NoteAlertDialogThemeForAppCompat:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->video_play_error_msg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->video_play_error_msg_ok:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showVoiceDataDeleteConfirmDialog(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataDeleteConfirmDialogPresenter$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceDataRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataRenameDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->hide()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceDataDeleteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataDeleteConfirmDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataDeleteConfirmDialogPresenter;->showDialog(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataDeleteConfirmDialogPresenter$OnClickListener;)V

    return-void
.end method

.method public showVoiceDataRenameDialog(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataRenameDialogPresenter$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceDataDeleteConfirmDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataDeleteConfirmDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->hide()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mVoiceDataRenameDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataRenameDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataRenameDialogPresenter;->showRenameDialog(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataRenameDialogPresenter$OnClickListener;)V

    return-void
.end method

.method public showWebCardPreviewDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;->createConfirmWebCardPreviewDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
