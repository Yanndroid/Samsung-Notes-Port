.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/common/OptionMenuPopupWindowHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnchorViewInToolbar(Landroid/app/Activity;I)Landroid/view/View;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_more:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move-object p0, p1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    move-object p0, v1

    :cond_3
    :goto_1
    return-object p0
.end method

.method public static getPopupWindowGravity()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    or-int/lit8 v0, v0, 0x30

    return v0
.end method

.method public static setDefaultState(Landroid/widget/PopupWindow;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PopupWindowHelper;->setDefaultState(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    return-void
.end method

.method public static setDefaultState(Landroidx/appcompat/widget/ListPopupWindow;Landroid/widget/ArrayAdapter;Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PopupWindowHelper;->setDefaultState(Landroidx/appcompat/widget/ListPopupWindow;Landroid/widget/ArrayAdapter;Landroid/app/Activity;)V

    return-void
.end method
