.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuContract$IOptionMenuViewMode;
.implements Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater$OverflowMenu;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mOptionMenuDelete:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;

.field private final mTopContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OptionMenuViewMode"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V

    const/4 p2, 0x2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mType:I

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->composer_fragment_container:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->mTopContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;

    return-void
.end method

.method private disableLockMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isSupportedLockMenu()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_lock:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    :cond_0
    return-void
.end method

.method private disablePinToHomeWidget(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isSupportedPinToHome(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_pin_to_home:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    :cond_0
    return-void
.end method

.method private disablePrint(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionPrint;->isSupported(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_print:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    :cond_0
    return-void
.end method

.method private disableSendToReminder(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isAvailableReminder(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_send_to_reminder:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    :cond_0
    return-void
.end method

.method private doOptionsItemSelectedForBasic(I)Z
    .locals 4

    const/4 v0, 0x1

    const v1, 0x102002c

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->onClickNaviUpBtn()V

    goto/16 :goto_5

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_edit:I

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->getToolType()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->onClickEditBtn(I)V

    goto/16 :goto_5

    :cond_1
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_search:I

    const-string v2, "682"

    const-string v3, "301"

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isPDFReader()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "326"

    const-string v1, "3903"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isCoeditNote()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v3

    :goto_0
    const-string p1, "2075"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->onClickSearchBtn()V

    goto/16 :goto_5

    :cond_4
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_delete:I

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->mOptionMenuDelete:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;

    if-nez p1, :cond_5

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-direct {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->mOptionMenuDelete:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->clearSelectionForEachMode()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->mOptionMenuDelete:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;->showDeleteConfirmDialog(I)V

    goto :goto_5

    :cond_6
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_lock:I

    if-ne p1, v1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->onClickLockUnlock()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isLockNote()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "1"

    goto :goto_2

    :cond_7
    const-string p1, "0"

    :goto_2
    const-string v1, "3013"

    invoke-static {v3, v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_save_to_device:I

    if-ne p1, v1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_save_to_device_success:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->onClickSaveToDeviceBtn(I)V

    goto :goto_5

    :cond_9
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_add_favorite:I

    if-ne p1, v1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->onClickFavoriteBtn()V

    const-string p1, "3037"

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_full_screen_mode:I

    if-eq p1, v1, :cond_c

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_tablet_full_screen_mode:I

    if-ne p1, v1, :cond_b

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    goto :goto_5

    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->onFullScreenModeOn()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isCoeditNote()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_d
    move-object v2, v3

    :goto_4
    const-string p1, "3804"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return v0
.end method

.method private doOptionsItemSelectedForPage(I)Z
    .locals 4

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_tablet_sort_pages:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_sort_pages:I

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_page_setting:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->onClickPageSetting()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuPageSetting:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;->show(Z)V

    const-string p1, "301"

    const-string v0, "3803"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    if-ne p1, v0, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    invoke-virtual {v3, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->insertSALogClickPageListBtn(ZZ)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->onClickPageListBtn()V

    :goto_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private doOptionsItemSelectedToShare(I)Z
    .locals 5

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_share:I

    const-string v1, "326"

    const-string v2, "301"

    const/4 v3, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isPDFReader()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "3904"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "3039"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->clearSelectionForEachMode()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuShare:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuShare;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->getOptionMenuSharePresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuShare;->showPopupMenu(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter;)V

    goto/16 :goto_3

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_export:I

    const-string v4, "682"

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils;->canExportFileMenu(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_2

    return v3

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isCoeditNote()Z

    move-result p1

    if-eqz p1, :cond_3

    move-object v2, v4

    :cond_3
    const-string p1, "3038"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->clearSelectionForEachMode()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuExport:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuExport;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->getOptionMenuSharePresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuExport;->showPopupMenu(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter;)V

    goto/16 :goto_3

    :cond_4
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_print:I

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isPDFReader()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "3906"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isCoeditNote()Z

    move-result p1

    const-string v0, "3015"

    if-eqz p1, :cond_6

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->onClickPrintBtn()V

    goto :goto_3

    :cond_7
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_add_edit_hash_tag:I

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->onClickHashTagBtn()V

    goto :goto_3

    :cond_8
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_pin_to_home:I

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->onClickPinToHome()V

    const-string p1, "3014"

    :goto_2
    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_send_to_reminder:I

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->onClickSendToReminder()V

    const-string p1, "3017"

    goto :goto_2

    :cond_a
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_coedit_share_with_collaborators:I

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->onClickCoeditShareWithCollaborators()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->updateCoeditBadge()V

    const-string p1, "7500"

    goto :goto_2

    :cond_b
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_coedit_add_to_shared_notebook:I

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->onClickCoeditAddToSharedNotebook()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->updateCoeditBadge()V

    const-string p1, "7503"

    goto :goto_2

    :cond_c
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_coedit_internal_snap_refresh:I

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->onClickCoeditInternalSnapRefresh()V

    goto :goto_3

    :cond_d
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_text_only_mode:I

    if-ne p1, v0, :cond_e

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->onClickTextOnlyModeBtn()V

    goto :goto_3

    :cond_e
    const/4 v3, 0x0

    :goto_3
    return v3
.end method

.method private getToolType()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->mTopContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->getLastTouchEventToolType()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private updateLock(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isLockNote()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->action_more_lock:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->comp_appbar_ic_lock:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->action_more_unlock:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->comp_appbar_ic_unlock:I

    :goto_0
    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_lock:I

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->setTitle(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->setIcon(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updatePageSetting(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isSingleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_page_setting:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMenuRes()I
    .locals 1
    .annotation build Landroidx/annotation/MenuRes;
    .end annotation

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$menu;->composer_view_menu:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public hideOverflowMenu()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuShare:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuShare;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->hidePopupMenu()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuExport:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuExport;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->hidePopupMenu()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuPageSetting:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;->hidePopup()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuMorePopup:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup;->hidePopup()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuShare:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuShare;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->hidePopupMenu()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuExport:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuExport;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->hidePopupMenu()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuPageSetting:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;->hidePopup()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuMorePopup:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup;->hidePopup()V

    return-void
.end method

.method public onCreateOptionsMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->onCreateOptionsMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->getMenuInflater()Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCreateOptionsMenu# getMenuInflater is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->getMenuInflater()Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->getMenuRes()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->getTarget()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Menu;

    invoke-interface {v0, v1, v2, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;->inflateMenu(ILandroid/view/Menu;Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater$OverflowMenu;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->updateSortPageMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    return-void
.end method

.method public onOptionsItemSelected(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;I)Z
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->getTitle(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isRunningProgress()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "isRunningProgress true "

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->isNotValidEvent(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "isValidEvent false"

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->doOptionsItemSelectedForBasic(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->doOptionsItemSelectedToShare(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->doOptionsItemSelectedForPage(I)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V
    .locals 4
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->onPrepareOptionsMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuShare:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuShare;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isLockNote()Z

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuShare;->setShareMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuExport:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuExport;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isLockNote()Z

    move-result v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuExport;->setExportMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->updateLock(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->updateHashTegMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->updateFavoriteMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->updatePageListMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->updatePageSetting(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->disableMenuInRollingMode(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->disableSendToReminder(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->disablePinToHomeWidget(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->disablePrint(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->disableLockMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->updateStartCoeditNote(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->updateFullScreenMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->updateTextOnlyMode(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuShare:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuShare;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->hidePopupMenu()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuExport:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuExport;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->hidePopupMenu()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuPageSetting:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;->hidePopup()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuMorePopup:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup;->hidePopup()V

    return-void
.end method

.method public showOverflowMenu(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuMorePopup:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup;->showPopup(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->disableCoeditBadge()V

    return-void
.end method
