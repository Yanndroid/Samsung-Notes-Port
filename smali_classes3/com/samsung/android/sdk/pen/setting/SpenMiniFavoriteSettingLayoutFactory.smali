.class Lcom/samsung/android/sdk/pen/setting/SpenMiniFavoriteSettingLayoutFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createContentLayoutParams(I)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    const/4 v0, -0x2

    if-nez p0, :cond_0

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_0
    return-object p0
.end method

.method public static createFooterGroup(Landroid/content/Context;I)Landroid/widget/FrameLayout;
    .locals 1

    if-nez p1, :cond_0

    sget p1, Lcom/samsung/android/spen/R$layout;->setting_mini_favorite_footer_land_group:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/samsung/android/spen/R$layout;->setting_mini_favorite_footer_group:I

    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static createPopupLayoutHelper(I)Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;
    .locals 1

    if-nez p0, :cond_0

    new-instance p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupHorizontalHelper;

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_mini_favorite_popup_land_layout:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupHorizontalHelper;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupVerticalHelper;

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_mini_favorite_popup_layout:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupVerticalHelper;-><init>(I)V

    :goto_0
    return-object p0
.end method
