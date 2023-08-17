.class Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;
.super Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;,
        Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonClickListener;
    }
.end annotation


# static fields
.field private static final BUTTON_ANIMATION_DURATION:I = 0x96

.field private static final BUTTON_TAG_DELETE:Ljava/lang/String; = "Delete"

.field private static final BUTTON_TAG_MORE:Ljava/lang/String; = "More"

.field private static final LAYOUT_ANIMATION_DURATION:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SpenFavoritePenMiniLayoutControl"


# instance fields
.field private SETTING_IC_ENABLED_COLOR:I

.field private mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonClickListener;

.field private mChangeModeAnimator:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

.field private mCloseButton:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

.field private mContext:Landroid/content/Context;

.field private mDoneButton:Landroid/widget/RelativeLayout;

.field private mEditModeOverlapMargin:I

.field private mEditModeOverlapMarginLand:I

.field private mExcludeTransitionView:Landroid/view/View;

.field private mFavoriteViewInterface:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteMiniViewInterface;

.field private mHeaderButton:Landroid/widget/ImageView;

.field private final mHeaderButtonClickListener:Landroid/view/View$OnClickListener;

.field private mLayoutTransition:Landroid/transition/AutoTransition;

.field private mMoreButton:Landroid/widget/ImageView;

.field private mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

.field private mViewMode:I

.field private final mViewModeAniListener:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$AnimationEndListener;

.field private mViewModeOverlapMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;-><init>(Landroid/content/Context;I)V

    new-instance p3, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$5;

    invoke-direct {p3, p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$5;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mViewModeAniListener:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$AnimationEndListener;

    new-instance p3, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$6;

    invoke-direct {p3, p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$6;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mHeaderButtonClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mViewMode:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->init()V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->notifyButtonClicked(I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->isSameButton(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mChangeModeAnimator:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mViewMode:I

    return p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mDoneButton:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mMoreButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mCloseButton:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mHeaderButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method private addFooter()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->getOrientation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniFavoriteSettingLayoutFactory;->createFooterGroup(Landroid/content/Context;I)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->addFooterView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    sget v1, Lcom/samsung/android/spen/R$id;->mini_favorite_button_more:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mMoreButton:Landroid/widget/ImageView;

    sget-object v2, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;->MORE:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->setButton(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mMoreButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/samsung/android/spen/R$id;->mini_favorite_button_close:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mCloseButton:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    sget-object v2, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;->BACK:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->setButtonType(Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;Z)V

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;->CLOSE:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mCloseButton:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->setButton(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mCloseButton:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    new-instance v2, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$3;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/samsung/android/spen/R$id;->mini_favorite_button_done:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mDoneButton:Landroid/widget/RelativeLayout;

    sget v1, Lcom/samsung/android/spen/R$id;->mini_favorite_button_done_text:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;->MEDIUM:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/widget/TextView;

    aput-object v0, v5, v3

    invoke-static {v1, v2, v5}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->setTypeFace(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;[Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mContext:Landroid/content/Context;

    new-array v2, v4, [Landroid/widget/TextView;

    aput-object v0, v2, v3

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v1, v3, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->applyUpToLargeLevel(Landroid/content/Context;F[Landroid/widget/TextView;)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->setButtonShapeEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mDoneButton:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$4;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private addHeader()V
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mHeaderButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mHeaderButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mHeaderButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->addDefaultHeaderView(Landroid/view/View;)V

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;->EDIT_CANCEL:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mHeaderButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->setButton(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;Landroid/widget/ImageView;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->setHeaderVisible(Z)V

    return-void
.end method

.method private changeOrientation(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeOrientation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") animation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenFavoritePenMiniLayoutControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mFavoriteViewInterface:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteMiniViewInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteMiniViewInterface;->saveViewState()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mFavoriteViewInterface:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteMiniViewInterface;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteMiniViewInterface;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->detachView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mFavoriteViewInterface:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteMiniViewInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteMiniViewInterface;->clearView()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mFavoriteViewInterface:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteMiniViewInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteMiniViewInterface;->setViewOrientation(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->initParent()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mFavoriteViewInterface:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteMiniViewInterface;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->setContent(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteMiniViewInterface;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mFavoriteViewInterface:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteMiniViewInterface;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteMiniViewInterface;->restoreViewState()V

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mViewMode:I

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->setViewModeWithAnimation(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->setViewModeWithoutAnimation(I)V

    :goto_0
    return-void
.end method

.method private detachView(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private init()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->mini_favorite_setting_view_mode_overlap_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mViewModeOverlapMargin:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->mini_favorite_setting_edit_mode_overlap_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mEditModeOverlapMargin:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->mini_favorite_setting_edit_mode_overlap_margin_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mEditModeOverlapMarginLand:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/spen/R$color;->setting_handwriting_icon_enable_color:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->SETTING_IC_ENABLED_COLOR:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->initParent()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mChangeModeAnimator:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    const-wide/16 v1, 0x96

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->setAlphaValue(JI)V

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mViewMode:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->setViewModeWithoutAnimation(I)V

    return-void
.end method

.method private initParent()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->getOrientation()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniFavoriteSettingLayoutFactory;->createPopupLayoutHelper(I)Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->setLayoutInterface(Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->addHeader()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->addFooter()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->initTransition()V

    return-void
.end method

.method private initTransition()V
    .locals 3

    new-instance v0, Landroid/transition/AutoTransition;

    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mLayoutTransition:Landroid/transition/AutoTransition;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mLayoutTransition:Landroid/transition/AutoTransition;

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/transition/AutoTransition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    return-void
.end method

.method private isSameButton(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;->MORE:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "More"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;->DELETE:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "Delete"

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private notifyButtonClicked(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyButtonClicked() type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenFavoritePenMiniLayoutControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteButtonClickListener;->onButtonClick(I)V

    :cond_0
    return-void
.end method

.method private setButton(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;Landroid/widget/ImageView;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$7;->$SwitchMap$com$samsung$android$sdk$pen$setting$SpenFavoritePenMiniLayoutControl$ButtonType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    move-object v0, v2

    :goto_0
    move p1, v3

    goto :goto_2

    :cond_1
    sget p1, Lcom/samsung/android/spen/R$string;->pen_string_collapse:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    :cond_2
    sget p1, Lcom/samsung/android/spen/R$drawable;->note_setting_ic_delete:I

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_delete_preset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "Delete"

    goto :goto_1

    :cond_3
    sget p1, Lcom/samsung/android/spen/R$drawable;->ic_mini_more:I

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_favorite_more_options:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "More"

    :goto_1
    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_2

    :cond_4
    sget p1, Lcom/samsung/android/spen/R$drawable;->setting_favorite_cancel_button:I

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eq p1, v3, :cond_5

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_6
    sget p1, Lcom/samsung/android/spen/R$drawable;->spen_ripple_effect_drawable:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->SETTING_IC_ENABLED_COLOR:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setExcludeTransitionChildView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mExcludeTransitionView:Landroid/view/View;

    return-void
.end method

.method private setHeaderVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->setHeaderGroupVisibility(I)V

    return-void
.end method

.method private setViewModeWithAnimation(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mChangeModeAnimator:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mChangeModeAnimator:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mViewModeAniListener:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$AnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->setAnimationEndListener(Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$AnimationEndListener;)V

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->setHeaderVisible(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mCloseButton:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->getHeaderDivider()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mHeaderButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mChangeModeAnimator:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    new-array v3, v1, [Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mDoneButton:Landroid/widget/RelativeLayout;

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->registerViewForAni([Landroid/view/View;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->setHeaderVisible(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mHeaderButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mDoneButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->getHeaderDivider()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mMoreButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mChangeModeAnimator:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    new-array v3, v1, [Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mCloseButton:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->registerViewForAni([Landroid/view/View;)Z

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->updateFooterOverlapMargin(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mChangeModeAnimator:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->setObjectVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mChangeModeAnimator:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->hideAnimation()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mLayoutTransition:Landroid/transition/AutoTransition;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mExcludeTransitionView:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Landroid/transition/AutoTransition;->excludeChildren(Landroid/view/View;Z)Landroid/transition/Transition;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mLayoutTransition:Landroid/transition/AutoTransition;

    invoke-static {p1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    return-void
.end method

.method private setViewModeWithoutAnimation(I)V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->setHeaderVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mCloseButton:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mDoneButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->setHeaderVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mCloseButton:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mDoneButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->updateFooterOverlapMargin(I)V

    return-void
.end method

.method private updateFooterOverlapMargin(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mViewModeOverlapMargin:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->isVertical()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mEditModeOverlapMargin:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mEditModeOverlapMarginLand:I

    :goto_0
    move v0, p1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->setFooterOverlapMargin(I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mHeaderButton:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mCloseButton:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mMoreButton:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mDoneButton:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mChangeModeAnimator:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mChangeModeAnimator:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mLayoutTransition:Landroid/transition/AutoTransition;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mFavoriteViewInterface:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteMiniViewInterface;

    return-void
.end method

.method public final getMoreButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mMoreButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public playCloseAnimation(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mCloseButton:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;->BACK:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;->CLOSE:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;

    :goto_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;->CLOSE:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;->BACK:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;

    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->getButtonType()Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;

    move-result-object v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mCloseButton:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->setButtonType(Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mCloseButton:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->setButtonType(Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;Z)V

    :cond_3
    return-void
.end method

.method public setButtonClickListener(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonClickListener;

    return-void
.end method

.method public setContent(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteMiniViewInterface;)V
    .locals 3
    .param p1    # Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteMiniViewInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mFavoriteViewInterface:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteMiniViewInterface;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->getOrientation()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteMiniViewInterface;->setViewOrientation(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mContext:Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteMiniViewInterface;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->getOrientation()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniFavoriteSettingLayoutFactory;->createContentLayoutParams(I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->setContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteMiniViewInterface;->getContainerView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->setExcludeTransitionChildView(Landroid/view/View;)V

    return-void
.end method

.method public setMenuEnable(ZZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMenuEnable() delete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " add="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenFavoritePenMiniLayoutControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;->MORE:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;->DELETE:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mMoreButton:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->isSameButton(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mMoreButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->setButton(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;Landroid/widget/ImageView;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mMoreButton:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p3, :cond_3

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->updateFooterOverlapMargin(I)V

    :cond_3
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->getOrientation()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->setOrientation(I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->changeOrientation(IZ)V

    return-void
.end method

.method public setViewMode(IZ)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mViewMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mViewMode:I

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->setViewModeWithAnimation(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->setViewModeWithoutAnimation(I)V

    :goto_0
    return-void
.end method

.method public showPopupMenu(ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mMoreButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/spen/R$style;->SettingPopupMenuStyle:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mMoreButton:Landroid/widget/ImageView;

    invoke-direct {v1, v0, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Landroid/view/MenuInflater;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/samsung/android/spen/R$menu;->favorite_menu:I

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)V

    invoke-virtual {v1, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    :cond_1
    :goto_0
    return-void
.end method
