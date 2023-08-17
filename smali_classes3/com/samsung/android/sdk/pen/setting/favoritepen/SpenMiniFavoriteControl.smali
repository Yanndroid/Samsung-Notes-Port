.class public Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteMiniViewInterface;
.implements Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteData;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenMiniFavoriteControl"


# instance fields
.field private mAddButtonClickListener:Landroid/view/View$OnClickListener;

.field private mBackupEditFavorite:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

.field private mColorTheme:I

.field private mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;

.field private mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

.field private mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

.field private mIsDataChangedByUser:Z

.field private mLayoutConfigHelper:Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;

.field private final mMaxCount:I

.field private mMode:I

.field private final mOnDataChangedListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;

.field private final mOnItemEventListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2$ItemEventListener;

.field private mViewDragListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;

.field private mViewItemClickListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$1;-><init>(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mOnDataChangedListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$2;-><init>(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mOnItemEventListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2$ItemEventListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mLayoutConfigHelper:Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mMaxCount:I

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mColorTheme:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mMode:I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mIsDataChangedByUser:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->isNotReady(Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mIsDataChangedByUser:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mViewItemClickListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewItemClickListener;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mAddButtonClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private applyFavoriteToView()Z
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->isNotReady(Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyFavoriteToView() mode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->getMode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SpenMiniFavoriteControl"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->getFavoriteList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->getDeleteList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->getSelectedIndex()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->restoreFavoriteList(Ljava/util/List;Ljava/util/List;I)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->clearDeleteList()V

    return v0
.end method

.method private isNotReady(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->hasView()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public addFavorite(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->isNotReady(Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "SpenMiniFavoriteControl"

    const-string v3, "addFavorite()"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->needScroll()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "==== Don\'t need scroll ==="

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->addFavorite(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->getFavoriteList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->setFavoriteList(Ljava/util/List;)V

    return v0

    :cond_2
    const-string v3, "==== Has scroll ==="

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->addFavorite(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->addFavorite(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->getSelectedItem()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->setSelectedIndex(I)V

    return v0

    :cond_4
    :goto_0
    return v2
.end method

.method public applyFavoriteFromView()I
    .locals 2

    const-string v0, "SpenMiniFavoriteControl"

    const-string v1, "applyFavoriteInView()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->isNotReady(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->getFavoriteList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->setFavoriteList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->getSelectedItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->setSelectedIndex(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->clearDeleteList()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->getFavoriteCount()I

    move-result v0

    return v0
.end method

.method public clearView()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->hasView()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    return-void
.end method

.method public close()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->isNotReady(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mBackupEditFavorite:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mBackupEditFavorite:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    :cond_2
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mLayoutConfigHelper:Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mAddButtonClickListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mViewItemClickListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mViewDragListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;

    return-void
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->hasView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->getFavoriteContainer()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFavoriteCount()I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->isNotReady(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->getFavoriteCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getFavoriteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->isNotReady(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->getFavoriteList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMaxCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mMaxCount:I

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mMode:I

    return v0
.end method

.method public getSelectedItem()I
    .locals 2

    const-string v0, "SpenMiniFavoriteControl"

    const-string v1, "getSelectedItem()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->isNotReady(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->getSelectedIndex()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->isNotReady(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView() orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mLayoutConfigHelper:Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenMiniFavoriteControl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->hasView()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    return-object p1

    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mMaxCount:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mLayoutConfigHelper:Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->getOrientation()I

    move-result v3

    invoke-direct {v1, p1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mMode:I

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->setMode(IZ)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mColorTheme:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->setColorTheme(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mOnDataChangedListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->setFavoriteDataChangedListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mOnItemEventListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2$ItemEventListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->setItemEventListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2$ItemEventListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    return-object p1
.end method

.method public hasView()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSameFavoriteList(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->getFavoriteList()Ljava/util/List;

    move-result-object v0

    if-nez p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public restoreViewState()V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->isNotReady(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->getMode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mBackupEditFavorite:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->getFavoriteList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->setFavoriteList(Ljava/util/List;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mBackupEditFavorite:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->getFavoriteList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->setFavoriteList(Ljava/util/List;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    :goto_0
    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->getSelectedIndex()I

    move-result v2

    invoke-virtual {v1, v2, v0, v3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->setSelectedItem(IZZ)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mBackupEditFavorite:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mBackupEditFavorite:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mViewDragListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->setOnPenMiniDragListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;)V

    return-void
.end method

.method public saveViewState()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->isNotReady(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveViewState() mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenMiniFavoriteControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mBackupEditFavorite:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->getFavoriteList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->setFavoriteList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mBackupEditFavorite:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->getSelectedItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->setSelectedIndex(I)V

    :cond_1
    return-void
.end method

.method public setAddButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mAddButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setColorTheme(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColorTheme() ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mColorTheme:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenMiniFavoriteControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mColorTheme:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mColorTheme:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->hasView()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->setColorTheme(I)V

    return-void
.end method

.method public setFavoriteDataChangedListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;

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

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->isNotReady(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFavoriteList() size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenMiniFavoriteControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->setFavoriteList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->hasView()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->setFavoriteList(Ljava/util/List;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->clearDeleteList()V

    return-void
.end method

.method public setMode(IZ)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMode() mode=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] needAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenMiniFavoriteControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mMode:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mIsDataChangedByUser:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->applyFavoriteToView()Z

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mIsDataChangedByUser:Z

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mMode:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->hasView()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->setMode(IZ)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public setOnPenMiniDragListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mViewDragListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->hasView()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mViewDragListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->setOnPenMiniDragListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;)V

    return-void
.end method

.method public setSelectedItem(IZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->isNotReady(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->hasView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->setSelectedItem(IZZ)V

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->setSelectedIndex(I)V

    return-void
.end method

.method public setViewItemClickListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mViewItemClickListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewItemClickListener;

    return-void
.end method

.method public setViewOrientation(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->isNotReady(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setViewOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hasView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->hasView()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenMiniFavoriteControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mLayoutConfigHelper:Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->setOrientation(I)V

    return-void
.end method

.method public updateFavorite(ILcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->isNotReady(Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFavorite() index="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SpenMiniFavoriteControl"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->getMode()I

    move-result v1

    if-eq v1, v0, :cond_1

    const-string/jumbo p1, "updateFavorite is possible in ViewMode."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->updateFavorite(ILcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->getFavoriteList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->setFavoriteList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteDataManager:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->mFavoriteLayout:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->getSelectedItem()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->setSelectedIndex(I)V

    return v0
.end method
