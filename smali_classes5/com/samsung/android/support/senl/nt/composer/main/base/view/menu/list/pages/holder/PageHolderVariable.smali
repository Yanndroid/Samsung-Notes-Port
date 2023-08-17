.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBackgroundColor:I

.field public mBookmarkHeight:I

.field public mBookmarkWidth:I

.field public mContainerHeight:I

.field public mCurrentPageIndex:I

.field public mDefaultThumbnailHeight:I

.field public mDefaultThumbnailWidth:I

.field public mIsDisabledAddPage:Z

.field public mIsEditable:Z

.field public mIsEnabledBookmark:Z

.field public mIsMoreEnable:Z

.field public mIsRTL:Z

.field public mIsTablet:Z

.field public mIsVoiceAssistantEnabled:Z

.field public mMode:I

.field public mPageReorderController:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderController;

.field public mThumbnailHeight:I

.field public mThumbnailWidth:I

.field private final mTopContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(ZZZZLandroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mCurrentPageIndex:I

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mIsEditable:Z

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mIsMoreEnable:Z

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mIsTablet:Z

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mIsEnabledBookmark:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mMode:I

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mTopContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mIsRTL:Z

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;->isVoiceAssistantEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mIsVoiceAssistantEnabled:Z

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderController;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderController;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mPageReorderController:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderController;

    return-void
.end method

.method private initHolderItemViewSize(Landroid/content/res/Resources;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_search_item_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mThumbnailWidth:I

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_search_item_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mThumbnailHeight:I

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_search_item_container_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mContainerHeight:I

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_item_bookmark_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mBookmarkWidth:I

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_item_bookmark_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mBookmarkHeight:I

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mThumbnailWidth:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mDefaultThumbnailWidth:I

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mThumbnailHeight:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_item_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mThumbnailWidth:I

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_item_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mThumbnailHeight:I

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_item_container_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mContainerHeight:I

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_item_bookmark_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mBookmarkWidth:I

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_item_bookmark_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mBookmarkHeight:I

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_search_item_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mDefaultThumbnailWidth:I

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_search_item_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mDefaultThumbnailHeight:I

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mBackgroundColor:I

    return v0
.end method

.method public getCurrentPageIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mCurrentPageIndex:I

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mMode:I

    return v0
.end method

.method public getPageReorderController()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mPageReorderController:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageReorderController;

    return-object v0
.end method

.method public getTopContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mTopContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isRTL()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mIsRTL:Z

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mBackgroundColor:I

    return-void
.end method

.method public setCurrentPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mCurrentPageIndex:I

    return-void
.end method

.method public setDisableAddPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mIsDisabledAddPage:Z

    return-void
.end method

.method public setMode(ILandroid/content/res/Resources;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mMode:I

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->initHolderItemViewSize(Landroid/content/res/Resources;)V

    :cond_0
    return-void
.end method
