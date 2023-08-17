.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final childIds:[I

.field private mColorStateList:Landroid/content/res/ColorStateList;

.field private mColorTheme:I

.field private mNormalItemResource:I

.field private mNotSelectedStr:Ljava/lang/String;

.field private mResource:I

.field private mSelectedStr:Ljava/lang/String;

.field private mTransparentItemResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const-string p3, "SpenColorSettingListAdapter"

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter;->TAG:Ljava/lang/String;

    const/16 p3, 0x8

    new-array p3, p3, [I

    sget v0, Lcom/samsung/android/spen/R$id;->setting_pen_color_view_1:I

    const/4 v1, 0x0

    aput v0, p3, v1

    sget v0, Lcom/samsung/android/spen/R$id;->setting_pen_color_view_2:I

    const/4 v2, 0x1

    aput v0, p3, v2

    sget v0, Lcom/samsung/android/spen/R$id;->setting_pen_color_view_3:I

    const/4 v3, 0x2

    aput v0, p3, v3

    sget v0, Lcom/samsung/android/spen/R$id;->setting_pen_color_view_4:I

    const/4 v4, 0x3

    aput v0, p3, v4

    sget v0, Lcom/samsung/android/spen/R$id;->setting_pen_color_view_5:I

    const/4 v4, 0x4

    aput v0, p3, v4

    sget v0, Lcom/samsung/android/spen/R$id;->setting_pen_color_view_6:I

    const/4 v4, 0x5

    aput v0, p3, v4

    sget v0, Lcom/samsung/android/spen/R$id;->setting_pen_color_view_7:I

    const/4 v4, 0x6

    aput v0, p3, v4

    sget v0, Lcom/samsung/android/spen/R$id;->setting_pen_color_view_8:I

    const/4 v4, 0x7

    aput v0, p3, v4

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter;->childIds:[I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter;->mResource:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter;->mColorTheme:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/spen/R$string;->pen_string_selected:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter;->mSelectedStr:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/spen/R$string;->pen_string_not_selected:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter;->mNotSelectedStr:Ljava/lang/String;

    sget p2, Lcom/samsung/android/spen/R$color;->handwriting_primary_color:I

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    new-instance p2, Landroid/content/res/ColorStateList;

    new-array p3, v3, [[I

    new-array v0, v2, [I

    const v4, -0x10100a0

    aput v4, v0, v1

    aput-object v0, p3, v1

    new-array v0, v2, [I

    const v4, 0x10100a0

    aput v4, v0, v1

    aput-object v0, p3, v2

    new-array v0, v3, [I

    const v3, -0x33707071    # -7.5267192E7f

    aput v3, v0, v1

    aput p1, v0, v2

    invoke-direct {p2, p3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter;->mColorStateList:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private setColor(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorChipView;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter;->mNormalItemResource:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorChipView;->setColorResource(I)V

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter;->mTransparentItemResource:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorChipView;->setTransparentBackgroundResource(I)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorChipView;->setColor(I)V

    return-void
.end method

.method private setView(ILcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter$ViewHolder;)V
    .locals 7

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter;->mColorTheme:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;->getColors()[I

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;->getVisibleColors()[I

    move-result-object v1

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;->getNames()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v1

    iget-object v4, p2, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter$ViewHolder;->mColor:[Landroid/view/View;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    const-string p1, "SpenColorSettingListAdapter"

    const-string p2, "Not enough Color."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    iget-object v5, p2, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter$ViewHolder;->mColor:[Landroid/view/View;

    array-length v6, v5

    if-ge v4, v6, :cond_2

    aget-object v5, v5, v4

    check-cast v5, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorChipView;

    aget v6, v1, v4

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter;->setColor(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorChipView;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p2, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;->isUsed()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter;->mSelectedStr:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter;->mNotSelectedStr:Ljava/lang/String;

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/spen/R$string;->pen_string_palette_is:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    add-int/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    array-length p1, v2

    if-ge v3, p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v2, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    iget-object p1, p2, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter$ViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p2, :cond_2

    const-string p2, "layout_inflater"

    invoke-virtual {v0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter;->mResource:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setFocusableInTouchMode(Z)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setFocusable(Z)V

    invoke-virtual {v1, p3}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p3}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/samsung/android/spen/R$dimen;->color_setting_popup_checkbox_size:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sget v0, Lcom/samsung/android/spen/R$id;->item_content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v3, v0, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0xf

    const/4 v4, -0x1

    invoke-virtual {v3, p3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    invoke-virtual {v0, v1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_0
    new-instance p3, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter$ViewHolder;

    invoke-direct {p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter$ViewHolder;-><init>()V

    iput-object v1, p3, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    iput-object p2, p3, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter$ViewHolder;->mContainer:Landroid/view/View;

    :goto_1
    const/16 v0, 0x8

    if-ge v2, v0, :cond_1

    iget-object v0, p3, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter$ViewHolder;->mColor:[Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter;->childIds:[I

    aget v1, v1, v2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter$ViewHolder;

    :goto_2
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter;->setView(ILcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter$ViewHolder;)V

    return-object p2
.end method

.method public setColorTheme(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter;->mColorTheme:I

    return-void
.end method

.method public setItemBackgroundResource(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter;->mNormalItemResource:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter;->mTransparentItemResource:I

    return-void
.end method
