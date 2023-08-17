.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SHORT_DURATION_TIMEOUT:J = 0x7d0L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private dismissPreviewThread:Ljava/lang/Runnable;

.field private mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

.field private mFavoritePenPreview:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenPreview;

.field private mHandler:Landroid/os/Handler;

.field private mPopupWindowFavoritePenPreview:Landroid/widget/PopupWindow;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "HwFavoritePreview"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->dismissPreviewThread:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->dismissFavoritePenPreview(Ljava/lang/String;)V

    return-void
.end method

.method private dismissFavoritePenPreview(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->mPopupWindowFavoritePenPreview:Landroid/widget/PopupWindow;

    const-string v1, "dismissFavoritePenPreview - "

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | popupWindow is null"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | isShowing : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->mPopupWindowFavoritePenPreview:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->mPopupWindowFavoritePenPreview:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public hideFavoritePenPreview()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->dismissPreviewThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const-string v0, "hideFavoritePenPreview"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->dismissFavoritePenPreview(Ljava/lang/String;)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->mPopupWindowFavoritePenPreview:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showFavoritePenPreview(Landroid/view/View;ILcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->mFavoritePenPreview:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenPreview;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenPreview;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenPreview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->mFavoritePenPreview:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenPreview;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->setColorTheme(I)V

    new-instance p2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    iget v0, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {p3, v0}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->getColor(I)I

    move-result p3

    iput p3, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v0, p2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-static {p3, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->mFavoritePenPreview:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenPreview;

    invoke-virtual {p3, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenPreview;->setPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->mPopupWindowFavoritePenPreview:Landroid/widget/PopupWindow;

    if-nez p2, :cond_2

    new-instance p2, Landroid/widget/PopupWindow;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->mFavoritePenPreview:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenPreview;

    const/4 v0, -0x2

    invoke-direct {p2, p3, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->mPopupWindowFavoritePenPreview:Landroid/widget/PopupWindow;

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->hideFavoritePenPreview()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->mPopupWindowFavoritePenPreview:Landroid/widget/PopupWindow;

    sget p3, Lcom/samsung/android/support/senl/nt/composer/R$style;->ColorPickerAnimation:I

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->mPopupWindowFavoritePenPreview:Landroid/widget/PopupWindow;

    const/16 p3, 0x11

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->dismissPreviewThread:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
