.class public Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;
.super Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenSetting;
.implements Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenSettingUI;
.implements Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenSettingUIMode;
.implements Lcom/samsung/android/sdk/pen/setting/SpenPenFavoriteSettingUI;
.implements Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfig;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation


# static fields
.field private static final SIZE_CHANGE_DURATION:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SpenSettingFavoritePenMiniLayout"


# instance fields
.field private mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteButtonClickListener;

.field private final mButtonListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonClickListener;

.field private mChangeViewModeButtonListener:Landroid/view/View$OnClickListener;

.field private mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;

.field private mDisallowMorePopup:Z

.field private mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

.field private mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

.field private mModeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteModeChangedListener;

.field private mMoreButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mOnDataChangedListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;

.field private mOutsideReorder:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;-><init>(Landroid/content/Context;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$3;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mOnDataChangedListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$4;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mButtonListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonClickListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " maxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingFavoritePenMiniLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mDisallowMorePopup:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->construct(Landroid/content/Context;III)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mOutsideReorder:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mChangeViewModeButtonListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->updateClipChildren(Z)V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->notifyButtonClick(I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mDisallowMorePopup:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mMoreButtonClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->setMode(IZZ)V

    return-void
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->setEditDone()V

    return-void
.end method

.method private checkMenu(IZ)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez p1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->getMaxCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-virtual {p1, v2, v0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->setMenuEnable(ZZZ)V

    return-void
.end method

.method private construct(Landroid/content/Context;III)V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-direct {v0, p1, p3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    const/4 p3, 0x0

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->setMode(IZ)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mOnDataChangedListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->setFavoriteDataChangedListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->setAddButtonClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-direct {v0, p1, p0, p4}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mButtonListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonClickListener;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->setButtonClickListener(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-virtual {p1, p4}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->setContent(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteMiniViewInterface;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->setViewMode(IZ)V

    return-void
.end method

.method private notifyButtonClick(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteButtonClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteButtonClickListener;->onButtonClick(I)V

    :cond_0
    return-void
.end method

.method private setClipChildren(Landroid/view/ViewGroup;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method private setEditDone()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->applyFavoriteFromView()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->checkMenu(IZ)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->setMode(IZZ)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->getFavoriteList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;->onFavoriteDataChanged(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private setMode(IZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->setMode(IZ)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->setViewMode(IZ)V

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mModeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteModeChangedListener;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteModeChangedListener;->onModeChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setSizeChangeTransition()V
    .locals 3

    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    return-void
.end method

.method private updateClipChildren(Z)V
    .locals 1

    invoke-direct {p0, p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->setClipChildren(Landroid/view/ViewGroup;Z)V

    sget v0, Lcom/samsung/android/spen/R$id;->root_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->setClipChildren(Landroid/view/ViewGroup;Z)V

    sget v0, Lcom/samsung/android/spen/R$id;->total_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->setClipChildren(Landroid/view/ViewGroup;Z)V

    sget v0, Lcom/samsung/android/spen/R$id;->content_area:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->setClipChildren(Landroid/view/ViewGroup;Z)V

    return-void
.end method


# virtual methods
.method public addFavorite(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
    .locals 4

    const-string v0, "SpenSettingFavoritePenMiniLayout"

    const-string v1, "addFavorite()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->getMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const-string p1, "addFavorite is possible in ViewMode."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->setSizeChangeTransition()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->addFavorite(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->getFavoriteCount()I

    move-result p1

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->checkMenu(IZ)V

    return v3
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mMoreButtonClickListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mChangeViewModeButtonListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteButtonClickListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mModeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteModeChangedListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mOutsideReorder:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->close(Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mOutsideReorder:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    :cond_1
    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->close()V

    return-void
.end method

.method public getFavoriteContainer()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->getContainerView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->getMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getSelectedItem()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->getSelectedItem()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public playButtonAnimation(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playCloseButtonAnimation() isClose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingFavoritePenMiniLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->playCloseAnimation(Z)V

    :cond_0
    return-void
.end method

.method public setAllowReorderOutside(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mOutsideReorder:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    if-nez v1, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mOutsideReorder:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    if-nez v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAllowReorderOutside("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") -> same state. so return"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenSettingFavoritePenMiniLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-eqz p1, :cond_4

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mOutsideReorder:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->getOrientation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->setOrientation(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mOutsideReorder:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->initFloatingView(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mOutsideReorder:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->setDragDropListener(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$DragDropListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mOutsideReorder:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->setOnPenMiniDragListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->setOnPenMiniDragListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mOutsideReorder:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->close(Z)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mOutsideReorder:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    :cond_5
    :goto_0
    return-void
.end method

.method public bridge synthetic setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic setBackgroundColor(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public bridge synthetic setBackgroundResource(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public setChangeViewModeButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mChangeViewModeButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setColorTheme(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->setColorTheme(I)V

    return-void
.end method

.method public setDisallowMorePopup(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisallowMorePopup() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingFavoritePenMiniLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mDisallowMorePopup:Z

    return-void
.end method

.method public setFavoriteDataChangedListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;

    return-void
.end method

.method public setFavoriteList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SpenSettingFavoritePenMiniLayout"

    const-string/jumbo v1, "setFavoriteList()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string/jumbo p1, "setFavoriteList is possible in ViewMode."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->isSameFavoriteList(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "Same Favorite List."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->setFavoriteList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->getFavoriteCount()I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->checkMenu(IZ)V

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

    const-string v1, "SpenSettingFavoritePenMiniLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->getOrientation()I

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->setOrientation(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMode() mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingFavoritePenMiniLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->setMode(IZZ)V

    return-void
.end method

.method public setMode(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMode() mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " animation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " shown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingFavoritePenMiniLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->setMode(IZZ)V

    return-void
.end method

.method public setModeChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteModeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mModeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteModeChangedListener;

    return-void
.end method

.method public setMoreButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mMoreButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnButtonClickListener(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteButtonClickListener;

    return-void
.end method

.method public setOnViewItemClickListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewItemClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->setViewItemClickListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewItemClickListener;)V

    return-void
.end method

.method public setSelectedItem(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSelectedItem() index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingFavoritePenMiniLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->setSelectedItem(IZZ)V

    return-void
.end method

.method public setSelectedItem(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSelectedItem() index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "needAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingFavoritePenMiniLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->setSelectedItem(IZZ)V

    return-void
.end method

.method public updateFavorite(ILcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFavorite() index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingFavoritePenMiniLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->getMode()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const-string/jumbo p1, "updateFavorite is possible in ViewMode."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->mFavoriteControl:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->updateFavorite(ILcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result p1

    return p1
.end method
