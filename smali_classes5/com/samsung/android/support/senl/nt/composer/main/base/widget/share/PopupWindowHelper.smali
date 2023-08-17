.class public Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PopupWindowHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static measureContentWidth(Landroid/app/Activity;Landroidx/appcompat/widget/ListPopupWindow;Landroid/widget/ArrayAdapter;)I
    .locals 2

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->popup_menu_side_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p0, p2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/ViewUtil;->measureContentWidth(Landroid/app/Activity;Landroid/widget/ArrayAdapter;Landroid/widget/ListView;I)I

    move-result p0

    return p0
.end method

.method public static setDefaultState(Landroid/widget/PopupWindow;Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->popup_menu_background:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x41400000    # 12.0f

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setElevation(F)V

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$style;->MorePopupEnterExitAnimation:I

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public static setDefaultState(Landroidx/appcompat/widget/ListPopupWindow;Landroid/widget/ArrayAdapter;Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setOverlapAnchor(Z)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    const v0, 0x800003

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setDropDownGravity(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->popup_menu_background:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p2, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PopupWindowHelper;->measureContentWidth(Landroid/app/Activity;Landroidx/appcompat/widget/ListPopupWindow;Landroid/widget/ArrayAdapter;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setWidth(I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setInputMethodMode(I)V

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$style;->MorePopupEnterExitAnimation:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setAnimationStyle(I)V

    return-void
.end method
