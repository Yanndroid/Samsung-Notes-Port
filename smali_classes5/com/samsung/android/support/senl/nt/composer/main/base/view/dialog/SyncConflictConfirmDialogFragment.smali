.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mDeviceName:Ljava/lang/String;

.field private mIsClicked:Z

.field private mIsLatestLocal:Z

.field private mIsTablet:Z

.field private mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SyncConflictConfirmDialogFragment"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mIsClicked:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->callKeepCurrent()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->callReplace()V

    return-void
.end method

.method private callKeepCurrent()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->keepCurrent()V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mIsLatestLocal:Z

    if-eqz v0, :cond_0

    const-string v0, "a"

    goto :goto_0

    :cond_0
    const-string v0, "b"

    :goto_0
    const-string v1, "752"

    const-string v2, "7068"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private callReplace()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->isEnableToUpdateNow()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->replace(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mIsLatestLocal:Z

    if-nez v0, :cond_0

    const-string v0, "a"

    goto :goto_0

    :cond_0
    const-string v0, "b"

    :goto_0
    const-string v1, "752"

    const-string v2, "7069"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->isInvalidToClick()Z

    move-result p0

    return p0
.end method

.method private getBodyMessage(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mDeviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mIsTablet:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_sync_conflict_body_your_other_tablet:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_sync_conflict_body_your_other_phone:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_message_for_sync_conflict:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mDeviceName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private getDeviceName()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->getDeviceNameForSyncConflicted()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method private getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "Composer"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenterContainer;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenterContainer;->getDialogFragmentPresenter(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->TAG:Ljava/lang/String;

    const-string v1, "getPresenter()# Presenter is null. dismiss call"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

    return-object v0
.end method

.method private getSyncTurnOnOptionState()Z
    .locals 3

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "settings_sync_notes"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isEnableToUpdateNow()Z
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/common/util/CommonUtils;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->TAG:Ljava/lang/String;

    const-string v1, "isEnableToUpdateNow# isNotAvailableActivity true"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->isDataCallNotLimitedForApp()Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_sync_network_connection_error:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->showDialogSyncNetworkFailError(Landroid/app/Activity;I)V

    return v2

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->isWiFiSyncOnlyAndNotWiFiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_sync_use_only_wifi_network:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->showDialogSyncNetworkFailError(Landroid/app/Activity;I)V

    return v2

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->getSyncTurnOnOptionState()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->showDialogDisableSyncTurnOnOptionState(Landroid/app/Activity;)V

    return v2

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->isAutoSyncPossible()Z

    move-result v1

    if-nez v1, :cond_4

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->base_string_could_not_sync_notes:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->showDialogSyncNetworkFailError(Landroid/app/Activity;I)V

    return v2

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private isInvalidToClick()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mIsClicked:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mIsClicked:Z

    const/4 v0, 0x0

    return v0
.end method

.method private makeCompareButton(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_compare:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private makeKeepBothButton(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_keep_both:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private makeKeepCurrentButton(Landroid/content/Context;Landroid/view/View;JLjava/lang/String;)V
    .locals 4

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_keep_current:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_keep_current_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mIsTablet:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_this_tablet:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_this_phone:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_keep_current_time:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/DateTimeUtil;->convertFormattedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    iget-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mIsLatestLocal:Z

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p3, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_keep_current_latest_red_dot:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private makeReplaceButton(Landroid/content/Context;Landroid/view/View;JLjava/lang/String;)V
    .locals 4

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_replace:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_replace_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mDeviceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_other_devices:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mDeviceName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_replace_time:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/DateTimeUtil;->convertFormattedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    iget-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mIsLatestLocal:Z

    if-nez p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p3, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_replace_latest_red_dot:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showDialogDisableSyncTurnOnOptionState(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->handoff_turn_on_sync_snack_bar_msg:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->dialog_ok:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$7;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$7;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;Landroid/app/Activity;)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1, v1, v2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showDialogSyncNetworkFailError(Landroid/app/Activity;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$string;->dialog_ok:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$8;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$8;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1, p2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->CompareConflict:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->getId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-nez p2, :cond_1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mIsClicked:Z

    return-void

    :cond_1
    const/4 p2, -0x1

    const-string v0, "compare_result"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->callKeepCurrent()V

    goto :goto_0

    :cond_2
    const/4 p3, 0x1

    if-ne p2, p3, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->callReplace()V

    goto :goto_0

    :cond_3
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mIsClicked:Z

    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mDeviceName:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mIsTablet:Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_sync_conflict_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_syncconflict_dialog_layout:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_message:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->getBodyMessage(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->getNoteLocalTimeForSyncConflicted()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->getServerNoteModifiedTime()J

    move-result-wide v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_latest:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    cmp-long v1, v4, v8

    const/4 v11, 0x0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v11

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mIsLatestLocal:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->makeKeepCurrentButton(Landroid/content/Context;Landroid/view/View;JLjava/lang/String;)V

    move-wide v4, v8

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->makeReplaceButton(Landroid/content/Context;Landroid/view/View;JLjava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->makeKeepBothButton(Landroid/view/View;)V

    invoke-direct {p0, v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->makeCompareButton(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v11}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v11}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method
