.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnchorBorderView:Landroid/view/View;

.field private mAnchoredRect:Landroid/graphics/Rect;

.field private mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

.field private final mIsExtendType:Z

.field public mIsSupportEyedropper:Z

.field private mLazyUpdateHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper<",
            "Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

.field public mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "HwSettingChangeStyleLayout"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mIsExtendType:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mIsSupportEyedropper:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mIsExtendType:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mIsSupportEyedropper:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;)Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    return-object p0
.end method

.method private applyChangeStyleInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->TAG:Ljava/lang/String;

    const-string v0, "applyChangeStyleInfo param is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->executeSelectedChangeStyle(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->setStyleSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->color:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->addRecentColor(I)V

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->type:I

    const/4 v1, 0x1

    const-string v2, "411"

    if-ne v0, v1, :cond_1

    const-string v0, "4330"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->fillColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->addRecentColor(I)V

    :cond_1
    iget-boolean p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->isBlankShape:Z

    if-eqz p1, :cond_2

    const-string p1, "a"

    goto :goto_0

    :cond_2
    const-string p1, "b"

    :goto_0
    const-string v0, "4331"

    invoke-static {v2, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mIsExtendType:Z

    return p0
.end method

.method private blockContextMenu(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->getCallerType()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->setBlockContextMenu(Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->clearContextMenu()V

    :cond_1
    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;)Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mPreviousChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    return-object p0
.end method

.method private colorCorrection(I[F)V
    .locals 2

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    invoke-static {p2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->TAG:Ljava/lang/String;

    const-string v1, "Different with color and hsv"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mPreviousChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->applyChangeStyleInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->blockContextMenu(Z)V

    return-void
.end method

.method public static bridge synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private internalHide(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->inOutVI(Landroid/view/ViewGroup;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->isColorPickerPopupVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->closeColorPickerPopup()V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->isColorSettingPopupVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->closeColorSettingPopup()V

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mPreviousChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mAnchoredRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mAnchorBorderView:Landroid/view/View;

    const/4 p1, 0x1

    return p1
.end method

.method private isColorPickerPopupVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->isColorPickerPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isColorSettingPopupVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->isColorSettingPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private makeDialogButtons()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_string_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$11;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;)V

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->addActionButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_string_done:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$12;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$12;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;)V

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->addActionButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private restoreBlankShape(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getChangeStyleData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingChangeStyleData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingChangeStyleData;->isSelectionBlankShape()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->isBlankShape:Z

    return-void
.end method

.method private restoreChangeStyleInfo()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getChangeStyleData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingChangeStyleData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingChangeStyleData;->getChangeStyleInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mIsExtendType:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mPreviousChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getChangeStyleData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingChangeStyleData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingChangeStyleData;->getSelectionType()I

    move-result v0

    iput v0, v1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->type:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mPreviousChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getChangeStyleData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingChangeStyleData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingChangeStyleData;->isSelectionBlankShape()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->isBlankShape:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getColorRecentData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingColorRecentData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingColorRecentData;->getRecentColors()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setRecentColor(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getColorPaletteData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingColorPaletteData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingColorPaletteData;->getSelectList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setPalette(Ljava/util/List;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->restorePalette()V

    return-void
.end method

.method private restorePalette()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getHWToolbarState()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->getViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;->getPaletteId(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getHWToolbarState()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->getViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;->getPaletteId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setCurrentPalette(I)V

    :cond_0
    return-void
.end method

.method private setInfoChangeListener()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setChangeStyleInfoChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$ChangeStyleInfoChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setPaletteChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$PaletteChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setPaletteActionListener(Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setColorPickerViewModeChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$ColorPickerModeChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getColorPaletteData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingColorPaletteData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingColorPaletteData;->getMaxSelectCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ToolbarUtil;->getColorSetRestrictToastListener(Landroid/content/Context;I)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setColorSettingSelectItemEventListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;)V

    return-void
.end method

.method private setLoggingListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$10;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setLoggingListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$LoggingListener;)V

    return-void
.end method

.method private setVisibilityChangeListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$6;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$7;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setColorPickerVisibilityChangeListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$8;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setColorSettingVisibilityChangeListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$9;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setEyedropperVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V

    return-void
.end method

.method private updateBackgroundThemeColor()V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getBackgroundThemeColor()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->colorCorrection(I[F)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setCanvasBackground([F)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->blockContextMenu(Z)V

    return-void
.end method

.method public hide(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->internalHide(Z)Z

    return-void
.end method

.method public hideEyedropper()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->isEyedropperVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getHWToolbarState()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->getViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;->isColorSpoidEnable(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->hideEyedropper()V

    :cond_1
    :goto_0
    return-void
.end method

.method public init()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->restoreChangeStyleInfo()V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getColorPaletteData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingColorPaletteData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingColorPaletteData;->getSelectList()Ljava/util/List;

    move-result-object v4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getColorRecentData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingColorRecentData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingColorRecentData;->getRecentColors()Ljava/util/List;

    move-result-object v5

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getColorPaletteData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingColorPaletteData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingColorPaletteData;->getColorSettingInfo()Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mIsSupportEyedropper:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;Z)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->hw_toolbar_quick_highlighter:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getColorTheme()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setColorTheme(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getHWToolbarState()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->getViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;->setColorSettingState(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->restoreChangeStyleInfo()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->setInfoChangeListener()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->setVisibilityChangeListener()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->setLoggingListener()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mIsExtendType:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->makeDialogButtons()V

    :cond_1
    return-void
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onTouchOutside()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->internalHide(Z)Z

    return-void
.end method

.method public setAnchoredInfo(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public setChangeStyleInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->init()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->setViewMode(Z)V

    return-void
.end method

.method public setEyedropperColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setEyedropperColor(I)V

    return-void
.end method

.method public setItemChangeStyleInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V

    return-void
.end method

.method public setPalette(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setPalette(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setViewMode(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getChangeStyleData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingChangeStyleData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingChangeStyleData;->getSelectionType()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->type:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->updateBackgroundThemeColor()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    const/4 v2, 0x0

    iput v2, v1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->type:I

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->restoreBlankShape(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setViewMode(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getHWToolbarState()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;->setSelectionChangeStyleViewMode(I)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewMode# type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    iget v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  isBlankShape : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    iget-boolean v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->isBlankShape:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V

    return-void
.end method

.method public settingVisible()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getHWToolbarState()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->getViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;->isColorPickerEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->isColorPickerPopupVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getColorPickerData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingColorPickerData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingColorPickerData;->getColorPickerViewMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setColorPickerViewMode(I)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->showColorPickerPopup()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getHWToolbarState()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->getViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;->isColorSettingEnable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->isColorSettingPopupVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->showColorSettingPopup()V

    :cond_1
    return-void
.end method

.method public show(ILandroid/view/View;Z)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->setCallerType(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->init()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mIsExtendType:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mWritingToolManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->getSelectedStrokeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mIsExtendType:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getHWToolbarState()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;->getSelectionChangeStyleViewMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->setViewMode(Z)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-virtual {p0, v0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->inOutVI(Landroid/view/ViewGroup;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->settingVisible()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->updatePosition(ILandroid/view/View;Z)V

    return-void
.end method

.method public updateChangeStyleInfo()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->setStyleSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V

    return-void
.end method

.method public updatePosition(ILandroid/view/View;Z)V
    .locals 1

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mAnchoredRect:Landroid/graphics/Rect;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mAnchorBorderView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-interface {p1, p3, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->updateLayoutParam(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-interface {p3, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->updateLayoutParam(ILandroid/view/View;Landroid/view/View;)V

    :goto_0
    return-void
.end method
