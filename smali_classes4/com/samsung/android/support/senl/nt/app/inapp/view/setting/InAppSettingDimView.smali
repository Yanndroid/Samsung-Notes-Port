.class public Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$InAppSettingViewContract;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mFloatingContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

.field private final mInAppSettingView:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$InAppSettingViewContract;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$InAppSettingViewContract;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->floating_layout_container_for_sub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->mInAppSettingView:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$InAppSettingViewContract;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;)Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$InAppSettingViewContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->mInAppSettingView:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$InAppSettingViewContract;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;ILandroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->setToolbarLocation(ILandroid/view/ViewGroup;)V

    return-void
.end method

.method private getToolbarView(I)Landroid/view/View;
    .locals 1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x80

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x20000

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;->Assistance:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;->getInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/AbsItemOrderInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/AbsItemOrderInfo;->inflateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;->Align:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;->Style:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultItemOrder$ItemInfo;

    goto :goto_0
.end method

.method private setToolbarLocation(ILandroid/view/ViewGroup;)V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->mInAppSettingView:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$InAppSettingViewContract;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$InAppSettingViewContract;->getCallerView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/16 v3, 0x10

    if-ne p1, v3, :cond_1

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->hw_toolbar_style_color_view:I

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 p1, 0x0

    aget v2, v1, p1

    aget p1, v0, p1

    sub-int/2addr v2, p1

    int-to-float p1, v2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setX(F)V

    const/4 p1, 0x1

    aget v1, v1, p1

    aget p1, v0, p1

    sub-int/2addr v1, p1

    int-to-float p1, v1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setY(F)V

    return-void
.end method

.method private setTouchListenerToDim(Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public setFloatingContainerVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->in_app_collaboration_dim_background_for_action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->setTouchListenerToDim(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setItemViewVisibility(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->in_app_floating_item_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez p2, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;ILandroid/view/ViewGroup;)V

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->getToolbarView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->setToolbarLocation(ILandroid/view/ViewGroup;)V

    :cond_1
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
