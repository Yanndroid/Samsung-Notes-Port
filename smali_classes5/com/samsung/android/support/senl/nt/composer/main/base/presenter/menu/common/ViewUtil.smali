.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/ViewUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultTintColor(Landroid/content/res/Resources;)I
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_default_button_color:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0
.end method

.method public static measureContentWidth(Landroid/app/Activity;Landroid/widget/ArrayAdapter;Landroid/widget/ListView;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/ViewUtil;->measureContentWidth(Landroid/app/Activity;Landroid/widget/ArrayAdapter;Landroid/widget/ListView;I)I

    move-result p0

    return p0
.end method

.method public static measureContentWidth(Landroid/app/Activity;Landroid/widget/ArrayAdapter;Landroid/widget/ListView;I)I
    .locals 9

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v6, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->memo_list_category_spinner_list_popup_max_width_ratio:I

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v5, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    const/4 p0, 0x0

    move-object v7, p0

    move v5, v1

    move v6, v5

    :goto_0
    if-ge v1, v4, :cond_4

    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v6, :cond_1

    move-object v7, p0

    move v6, v8

    :cond_1
    invoke-virtual {p1, v1, v7, p2}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, p3

    if-le v8, v5, :cond_2

    move v5, v8

    :cond_2
    if-le v5, v0, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v5
.end method

.method public static measureContentWidth(Landroid/content/Context;Landroid/widget/ArrayAdapter;)I
    .locals 5

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    const/4 v1, 0x0

    move v2, p0

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {p1, v2, v1, v0}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0, p0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-le v4, v3, :cond_0

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static measureContentWidth(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0
.end method
