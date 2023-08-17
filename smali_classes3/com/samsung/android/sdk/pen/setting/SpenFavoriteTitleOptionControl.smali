.class Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$OnButtonClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenFavoriteTitleOptionControl"


# instance fields
.field private mAddButton:Landroid/view/View;

.field private mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$OnButtonClickListener;

.field private mContext:Landroid/content/Context;

.field private mDeleteButton:Landroid/view/View;

.field private mMoreButton:Landroid/view/View;

.field private mOptionMenu:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteOptionMenu;

.field private mPopupLayout:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

.field private final mTitleButtonClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$3;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mTitleButtonClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mPopupLayout:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteOptionMenu;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mOptionMenu:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteOptionMenu;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->getPopupWidth()I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->getPopupHeight()I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$OnButtonClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$OnButtonClickListener;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->notifyAddButtonClicked()V

    return-void
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->notifyDeleteButtonClicked()V

    return-void
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mMoreButton:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->notifyMoreButtonClicked()V

    return-void
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mAddButton:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mDeleteButton:Landroid/view/View;

    return-object p0
.end method

.method private getPopupHeight()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mPopupLayout:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_favorite_content_edit_landscape_height:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->getValue(I)I

    move-result v0

    return v0

    :cond_0
    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_favorite_content_edit_height:I

    goto :goto_0
.end method

.method private getPopupWidth()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mPopupLayout:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_common_popup_landscape_width:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->getValue(I)I

    move-result v0

    return v0

    :cond_0
    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_common_popup_width_v60:I

    goto :goto_0
.end method

.method private getValue(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1
.end method

.method private notifyAddButtonClicked()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$OnButtonClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$OnButtonClickListener;->onAddButtonClick()V

    :cond_0
    return-void
.end method

.method private notifyDeleteButtonClicked()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$OnButtonClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$OnButtonClickListener;->onDeleteButtonClick()V

    :cond_0
    return-void
.end method

.method private notifyMoreButtonClicked()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$OnButtonClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$OnButtonClickListener;->onMoreButtonClick()V

    :cond_0
    return-void
.end method

.method private setButtonState(Landroid/view/View;Z)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mOptionMenu:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteOptionMenu;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteOptionMenu;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mOptionMenu:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteOptionMenu;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mPopupLayout:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setOrientationChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$OrientationChangedListener;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mPopupLayout:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

    :cond_2
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mAddButton:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mDeleteButton:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mMoreButton:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public hideOptionMenu(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mOptionMenu:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteOptionMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mOptionMenu:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteOptionMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->hide(Z)V

    :cond_0
    return-void
.end method

.method public initButton(ZLcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$OnButtonClickListener;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mPopupLayout:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$OnButtonClickListener;

    const/4 p2, 0x1

    if-nez p1, :cond_1

    sget p1, Lcom/samsung/android/spen/R$drawable;->note_setting_ic_delete:I

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_delete_preset:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mTitleButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->addButtonInTitle(IILandroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mDeleteButton:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mPopupLayout:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

    sget v0, Lcom/samsung/android/spen/R$drawable;->note_setting_ic_add:I

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_add_favorite_pen:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mTitleButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->addButtonInTitle(IILandroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mAddButton:Landroid/view/View;

    goto :goto_0

    :cond_1
    sget p1, Lcom/samsung/android/spen/R$drawable;->note_setting_ic_delete:I

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_delete_preset:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mTitleButtonClickListener:Landroid/view/View$OnClickListener;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->addButtonInTitle(IILandroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mDeleteButton:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mPopupLayout:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

    sget v0, Lcom/samsung/android/spen/R$drawable;->favorite_more:I

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_favorite_more_options:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mTitleButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->addButtonInTitle(IILandroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mMoreButton:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mPopupLayout:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

    sget v0, Lcom/samsung/android/spen/R$drawable;->note_setting_ic_add:I

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_add_favorite_pen:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mTitleButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->addButtonInTitle(IILandroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mAddButton:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mPopupLayout:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setOrientationChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$OrientationChangedListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setMenuEnable(ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mMoreButton:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mDeleteButton:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->setButtonState(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mAddButton:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->setButtonState(Landroid/view/View;Z)V

    goto :goto_3

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mDeleteButton:Landroid/view/View;

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    invoke-direct {p0, v3, p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->setButtonState(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mMoreButton:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->setButtonState(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mAddButton:Landroid/view/View;

    if-nez v2, :cond_3

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->setButtonState(Landroid/view/View;Z)V

    :goto_3
    return-void
.end method

.method public showOptionMenu()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mPopupLayout:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mOptionMenu:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteOptionMenu;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteOptionMenu;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteOptionMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mOptionMenu:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteOptionMenu;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->getPopupWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->getPopupHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mPopupLayout:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mOptionMenu:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteOptionMenu;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->addViewInTop(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mOptionMenu:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteOptionMenu;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->setOnMenuItemClickListener(Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$OnMenuItemClickListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->mOptionMenu:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteOptionMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->show(Z)V

    :cond_2
    :goto_1
    return-void
.end method
