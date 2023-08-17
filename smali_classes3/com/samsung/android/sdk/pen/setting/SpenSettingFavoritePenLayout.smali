.class public Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;
.super Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$FavoriteAnimationEndListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$ViewListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnFavoriteDataChangedListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnModeChangeListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnEditItemClickListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnViewItemClickListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnButtonClickListener;
    }
.end annotation


# static fields
.field private static final ANIMATE_ALPHA_CHANGE_DURATION:I = 0xc8

.field private static final ANIMATE_ALPHA_CHANGE_OFFSET:I = 0x15e

.field public static final EDIT_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SpenSettingFavoritePenLayout"

.field public static final VIEW_MODE:I = 0x1


# instance fields
.field private mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnButtonClickListener;

.field private mChildAnimation:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

.field private mCurrentMode:I

.field private mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnFavoriteDataChangedListener;

.field private mEditItemClickListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnEditItemClickListener;

.field private mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

.field private mFavoriteOptionControl:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

.field private mIsLayoutAnimationCompleted:Z

.field private mLayoutOrientation:I

.field private mMaxCount:I

.field private mModeChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnModeChangeListener;

.field private final mOnFavoritePenAnimationListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout$OnFavoritePenAnimationListener;

.field private final mOptionButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$OnButtonClickListener;

.field private mPopupTitle:Landroid/view/ViewGroup;

.field private mTitleText:Landroid/widget/TextView;

.field private mViewItemClickListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnViewItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mIsLayoutAnimationCompleted:Z

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$8;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mOptionButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$OnButtonClickListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$9;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mOnFavoritePenAnimationListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout$OnFavoritePenAnimationListener;

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mCurrentMode:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mLayoutOrientation:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mMaxCount:I

    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->initView(Landroid/content/Context;IZ)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->updateTitleButtons(IZ)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x9

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnButtonClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnButtonClickListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;IZZ)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->setMode(IZZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mIsLayoutAnimationCompleted:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mIsLayoutAnimationCompleted:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnViewItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mViewItemClickListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnViewItemClickListener;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnEditItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mEditItemClickListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnEditItemClickListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnFavoriteDataChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnFavoriteDataChangedListener;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mCurrentMode:I

    return p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mPopupTitle:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;)Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteOptionControl:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->setContentHeight(I)V

    return-void
.end method

.method private decideContentHeight(Landroid/content/Context;II)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-ne p2, v1, :cond_1

    if-ne p3, v0, :cond_0

    sget p2, Lcom/samsung/android/spen/R$dimen;->setting_favorite_content_landscape_height:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/samsung/android/spen/R$dimen;->setting_favorite_content_edit_landscape_height:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_1
    if-ne p3, v0, :cond_2

    sget p2, Lcom/samsung/android/spen/R$dimen;->setting_favorite_content_height:I

    goto :goto_1

    :cond_2
    sget p2, Lcom/samsung/android/spen/R$dimen;->setting_favorite_content_edit_height:I

    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method private hideOptionMenu(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteOptionControl:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->hideOptionMenu(Z)V

    :cond_0
    return-void
.end method

.method private initTitle(Landroid/content/Context;Z)V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$5;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setCloseButtonInfo(Landroid/view/View$OnClickListener;)Z

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteOptionControl:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mOptionButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$OnButtonClickListener;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->initButton(ZLcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$OnButtonClickListener;)V

    sget p1, Lcom/samsung/android/spen/R$string;->pen_string_remove_pen_from_favorite:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setTitleText(I)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mTitleText:Landroid/widget/TextView;

    sget p1, Lcom/samsung/android/spen/R$id;->popup_title:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mPopupTitle:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mTitleText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initView(Landroid/content/Context;IZ)V
    .locals 3

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->initTitle(Landroid/content/Context;Z)V

    iget p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mLayoutOrientation:I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mCurrentMode:I

    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->decideContentHeight(Landroid/content/Context;II)I

    move-result p3

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mCurrentMode:I

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    invoke-virtual {p0, p3, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/spen/R$dimen;->setting_favorite_scrollbar_offset_top_normal:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_favorite_scrollbar_offset_top_edit_mode:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setScrollBarThumbOffset(II)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/samsung/android/spen/R$dimen;->common_setting_layout_radius:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;->setListRadius(F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;->setOnEventListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout$OnEventListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;->setOnViewItemClickListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewItemClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$3;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;->setOnEditItemClickListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout$OnEditItemClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$4;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$4;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;->setFavoriteDataChangedListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mOnFavoritePenAnimationListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout$OnFavoritePenAnimationListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;->setOnFavoritePenAnimationListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout$OnFavoritePenAnimationListener;)V

    return-void
.end method

.method private setContentHeight(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mLayoutOrientation:I

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->decideContentHeight(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->changeContentRule(Z)V

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setContentVerticalScrollBarEnable(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setMode(IZZ)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMode() mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mCurrentMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " updateIfNotChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isNeedAnimation= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingFavoritePenLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mCurrentMode:I

    if-eq p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mCurrentMode:I

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->updateTitleButtons(IZ)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;->setShowAnimation(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mCurrentMode:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;->setMode(I)V

    :cond_3
    return v1
.end method

.method private updateTitleButtons(IZ)V
    .locals 7

    const-wide/16 v0, 0xc8

    const/4 v2, 0x2

    const-string v3, "alpha"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v5, :cond_4

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;->getFavoriteCount()I

    move-result p1

    if-nez p1, :cond_0

    move p1, v4

    move v6, v5

    goto :goto_1

    :cond_0
    if-lez p1, :cond_1

    iget v6, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mMaxCount:I

    if-ge p1, v6, :cond_1

    move p1, v5

    goto :goto_0

    :cond_1
    iget v6, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mMaxCount:I

    if-lt p1, v6, :cond_2

    move v6, v4

    move p1, v5

    goto :goto_1

    :cond_2
    move p1, v4

    :goto_0
    move v6, p1

    :goto_1
    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mPopupTitle:Landroid/view/ViewGroup;

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p2, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-static {v5}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {p2, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$6;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;)V

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2

    :cond_3
    invoke-direct {p0, v5}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->setContentHeight(I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mPopupTitle:Landroid/view/ViewGroup;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mPopupTitle:Landroid/view/ViewGroup;

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_2
    move v4, p1

    goto :goto_4

    :cond_4
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mCurrentMode:I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->setContentHeight(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mPopupTitle:Landroid/view/ViewGroup;

    if-eqz p2, :cond_5

    new-array p2, v2, [F

    fill-array-data p2, :array_1

    invoke-static {p1, v3, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-static {v5}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$7;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$7;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_3

    :cond_5
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_3
    move v6, v4

    :goto_4
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteOptionControl:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v4, v6}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->setMenuEnable(ZZ)V

    :cond_6
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public addFavorite(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addFavorite() mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingFavoritePenLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->getMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;->addFavorite(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mCurrentMode:I

    invoke-direct {p0, p1, v2, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->setMode(IZZ)Z

    return v2

    :cond_0
    return v1
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteOptionControl:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteOptionControl:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mChildAnimation:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mChildAnimation:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    :cond_2
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnButtonClickListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mViewItemClickListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnViewItemClickListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mEditItemClickListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnEditItemClickListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mModeChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnModeChangeListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnFavoriteDataChangedListener;

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->close()V

    return-void
.end method

.method public getFavoriteContainer()Landroid/view/View;
    .locals 2

    const-string v0, "SpenSettingFavoritePenLayout"

    const-string v1, "getFavoriteContainer()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;->getFavoriteContainer()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayoutOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mLayoutOrientation:I

    return v0
.end method

.method public getMode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;->getMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getSelectedItem()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;->getSelectedItem()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic hideCloseButton()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->hideCloseButton()V

    return-void
.end method

.method public bridge synthetic requestCloseButtonAccessibilityFocus()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->requestCloseButtonAccessibilityFocus()Z

    move-result v0

    return v0
.end method

.method public setChangeUIModeButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    if-eqz p1, :cond_0

    sget v0, Lcom/samsung/android/spen/R$drawable;->setting_btn_minimized:I

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_shrink_favorite_pens:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->addButtonNextToCloseInTitle(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setColorTheme(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColorTheme() theme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingFavoritePenLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;->setColorTheme(I)V

    :cond_0
    return-void
.end method

.method public setFavoriteList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFavoriteList() list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "NULL"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingFavoritePenLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;->setFavoriteList(Ljava/util/List;)V

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mCurrentMode:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->setMode(IZZ)Z

    :cond_1
    return-void
.end method

.method public setLayoutAnimation(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setAnimation(Z)V

    return-void
.end method

.method public setLayoutOrientation(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLayoutOrientation() orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingFavoritePenLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mLayoutOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mLayoutOrientation:I

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setOrientation(I)V

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mCurrentMode:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->setContentHeight(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;->setLayoutOrientation(I)V

    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMode() mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mCurrentMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mModeChangeListener is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mModeChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnModeChangeListener;

    if-nez v1, :cond_0

    const-string v1, "NULL"

    goto :goto_0

    :cond_0
    const-string v1, "NOT NULL"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingFavoritePenLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->hideOptionMenu(Z)V

    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->setMode(IZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mModeChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnModeChangeListener;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mCurrentMode:I

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnModeChangeListener;->onModeChanged(I)V

    :cond_1
    return-void
.end method

.method public setOnButtonClickListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnButtonClickListener;

    return-void
.end method

.method public setOnEditItemClickListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnEditItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mEditItemClickListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnEditItemClickListener;

    return-void
.end method

.method public setOnFavoriteDataChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnFavoriteDataChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnFavoriteDataChangedListener;

    return-void
.end method

.method public setOnModeChangeListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnModeChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mModeChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnModeChangeListener;

    return-void
.end method

.method public setOnViewItemClickListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnViewItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mViewItemClickListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$OnViewItemClickListener;

    return-void
.end method

.method public setPenSettingButton(Landroid/view/View$OnClickListener;)Z
    .locals 6

    sget v0, Lcom/samsung/android/spen/R$drawable;->favorite_off_line:I

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_change_to_mode:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/samsung/android/spen/R$string;->pen_string_pen:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v0, p1, v1, v3}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->addHeaderButtonInTitle(ILandroid/view/View$OnClickListener;I[Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    sget v0, Lcom/samsung/android/spen/R$drawable;->favorite_icon_ripple_drawable:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setSelected(Z)V

    :cond_0
    return v2

    :cond_1
    return v5
.end method

.method public setSelectedItem(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSelectedItem() index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingFavoritePenLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;->setSelectedItem(IZ)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setVisibility(I)V

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->hideOptionMenu(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;)V

    return-void
.end method

.method public updateFavorite(ILcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFavorite() mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingFavoritePenLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenLayout;->updateFavorite(ILcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
