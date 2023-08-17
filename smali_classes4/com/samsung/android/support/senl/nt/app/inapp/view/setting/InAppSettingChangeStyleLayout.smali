.class public Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/impl/InAppSettingImpl;


# instance fields
.field private final mDimView:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;-><init>()V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->floating_layout_container_for_sub:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout$1;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;)V

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$InAppSettingViewContract;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;->mDimView:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;)I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->getCallerType()I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;)I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->getCallerType()I

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;)Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;->mDimView:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;

    return-object p0
.end method

.method private setCloseButtonTouchEvent()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->popup_title:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout$3;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public closeColorPopup()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->closeColorPickerPopup()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->closeColorSettingPopup()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mIsSupportEyedropper:Z

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->init()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->mSpenSettingChangeStyleLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout$2;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;->setCloseButtonTouchEvent()V

    return-void
.end method

.method public setFloatingContainer(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;)V
    .locals 0

    return-void
.end method
