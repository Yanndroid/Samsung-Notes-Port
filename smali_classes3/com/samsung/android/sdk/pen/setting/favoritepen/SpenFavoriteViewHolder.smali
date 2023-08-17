.class Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public mContainer:Landroid/view/ViewGroup;

.field public mDeleteButton:Landroid/widget/ImageButton;

.field public mFavoritePenView:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;

.field public mStringComma:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mContainer:Landroid/view/ViewGroup;

    new-instance v2, Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsButton;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsButton;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->setLabelFor(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mFavoritePenView:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mDeleteButton:Landroid/widget/ImageButton;

    if-eqz p2, :cond_0

    sget p2, Lcom/samsung/android/spen/R$string;->pen_string_remove_any:I

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    sget v0, Lcom/samsung/android/spen/R$string;->pen_string_pen:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {p3, p2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-static {p3, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    sget p2, Lcom/samsung/android/spen/R$string;->pen_string_comma:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mStringComma:Ljava/lang/String;

    return-void
.end method

.method private getPenNameId(Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenResource;->getPenDescriptionID(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setAccessibilityText(Landroid/view/View;Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;Ljava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    sget v0, Lcom/samsung/android/spen/R$id;->target_pen:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/samsung/android/spen/R$string;->pen_palette_color_custom:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_1
    iget-object v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v2, "com.samsung.android.sdk.pen.pen.preload.MosaicPen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_2

    new-array p3, v2, [Ljava/lang/Object;

    aput-object v0, p3, v5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mStringComma:Ljava/lang/String;

    aput-object v0, p3, v4

    iget p2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v3

    const-string p2, "%s%s %d"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mStringComma:Ljava/lang/String;

    aput-object v0, v1, v4

    aput-object p3, v1, v3

    aput-object v0, v1, v2

    const/4 p3, 0x4

    iget p2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p3

    const-string p2, "%s%s %s%s %d"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mFavoritePenView:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mFavoritePenView:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mDeleteButton:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mStringComma:Ljava/lang/String;

    return-void
.end method

.method public setInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;ILjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mFavoritePenView:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mDeleteButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget v4, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    iget-boolean v5, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->isSamePenInfo(Ljava/lang/String;IIFZ)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/samsung/android/spen/R$id;->target_pen:I

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->getPenNameId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mFavoritePenView:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;

    iget-object v4, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v6, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget v7, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    iget-boolean v8, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->setPenInfo(Ljava/lang/String;IIFZ)Z

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->setAccessibilityText(Landroid/view/View;Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setRoundViewEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mFavoritePenView:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->setRoundViewEnable(Z)V

    :cond_0
    return-void
.end method

.method setSelected(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mFavoritePenView:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->setSelected(ZZ)V

    :cond_0
    return-void
.end method
