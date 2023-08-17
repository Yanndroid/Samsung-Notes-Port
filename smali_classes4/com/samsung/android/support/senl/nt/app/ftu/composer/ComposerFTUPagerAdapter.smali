.class public Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLottieResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;",
            ">;"
        }
    .end annotation
.end field

.field private mPageContract:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage$Contract;

.field private mPages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAction:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->initPagerResources()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->mPendingAction:Ljava/lang/Runnable;

    return-void
.end method

.method private initPagerResources()V
    .locals 34

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->mLottieResources:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;-><init>()V

    const-string v3, "lottie_notes_color_quick_change.json"

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;->setAssetName(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;

    move-result-object v4

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$string;->ftu_msg_change_color_and_thickness:I

    const-string v5, "ftu_msg_change_color_and_thickness"

    const v7, 0x3ed1eb85    # 0.41f

    const v8, 0x3ea147ae    # 0.315f

    const v9, 0x3e1c28f6    # 0.1525f

    const-wide/16 v10, 0xaf0

    const-wide/16 v12, 0xfa

    const-wide/16 v14, 0x1004

    const-wide/16 v16, 0xfa

    const/16 v18, 0x0

    invoke-virtual/range {v4 .. v18}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;->addMessageInfo(Ljava/lang/String;IFFFJJJJZ)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->mLottieResources:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;-><init>()V

    const-string v3, "lottie_notes_move_toolbar.json"

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;->setAssetName(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;

    move-result-object v4

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$string;->ftu_msg_move_toolbar_to_left_or_right_edge_of_the_screen:I

    const-string v5, "ftu_msg_move_toolbar_to_left_or_right_edge_of_the_screen"

    const v7, 0x3e866666    # 0.2625f

    const v8, 0x3ec147ae    # 0.3775f

    const v9, 0x3ee66666    # 0.45f

    const-wide/16 v10, 0x12c0

    const-wide/16 v14, 0xbea

    invoke-virtual/range {v4 .. v18}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;->addMessageInfo(Ljava/lang/String;IFFFJJJJZ)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->mLottieResources:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;-><init>()V

    const-string v3, "lottie_notes_minipen_setting.json"

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;->setAssetName(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;

    move-result-object v4

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$string;->ftu_msg_shrink_the_pen_settings_window:I

    const-string v5, "ftu_msg_shrink_the_pen_settings_window"

    const v7, 0x3f2e5604    # 0.681f

    const v8, 0x3c8f5c29    # 0.0175f

    const v9, 0x3ab78034    # 0.0014f

    const-wide/16 v10, 0x834

    const-wide/16 v14, 0x708

    invoke-virtual/range {v4 .. v18}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;->addMessageInfo(Ljava/lang/String;IFFFJJJJZ)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;

    move-result-object v19

    sget v21, Lcom/samsung/android/support/senl/nt/app/R$string;->ftu_msg_favorite_pens:I

    const-string v20, "ftu_msg_favorite_pens"

    const v22, 0x3f0f5c29    # 0.56f

    const v23, 0x3e028f5c    # 0.1275f

    const v24, 0x3e158106    # 0.146f

    const-wide/16 v25, 0x1900

    const-wide/16 v27, 0xfa

    const-wide/16 v29, 0x13ec

    const-wide/16 v31, 0xfa

    const/16 v33, 0x0

    invoke-virtual/range {v19 .. v33}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;->addMessageInfo(Ljava/lang/String;IFFFJJJJZ)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;

    move-result-object v2

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->ftu_msg_pen_color:I

    const-string v3, "ftu_msg_pen_color"

    const v5, 0x3f15c28f    # 0.585f

    const v6, 0x3efd70a4    # 0.495f

    const v7, 0x3e4ccccd    # 0.2f

    const-wide/16 v8, 0x1c20

    const-wide/16 v10, 0xfa

    const-wide/16 v12, 0x10cc

    const-wide/16 v14, 0xfa

    const/16 v16, 0x0

    invoke-virtual/range {v2 .. v16}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;->addMessageInfo(Ljava/lang/String;IFFFJJJJZ)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;

    move-result-object v17

    sget v19, Lcom/samsung/android/support/senl/nt/app/R$string;->ftu_msg_pen_size:I

    const-string v18, "ftu_msg_pen_size"

    const v20, 0x3de147ae    # 0.11f

    const v21, 0x3f27ae14    # 0.655f

    const v22, 0x3f0d70a4    # 0.5525f

    const-wide/16 v23, 0x20d0

    const-wide/16 v25, 0xfa

    const-wide/16 v27, 0xc1c

    const-wide/16 v29, 0xfa

    const/16 v31, 0x1

    invoke-virtual/range {v17 .. v31}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;->addMessageInfo(Ljava/lang/String;IFFFJJJJZ)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->mLottieResources:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->mPages:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->mPages:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->mPages:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->mLottieResources:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;->getAssetName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->setLottieAnimation(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;->getMessageInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->addMessageInfo(Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->mPageContract:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage$Contract;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage;->setContract(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage$Contract;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->mPages:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->mPendingAction:Ljava/lang/Runnable;

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->mPages:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter$1;-><init>(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->mPendingAction:Ljava/lang/Runnable;

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->mPages:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-ne p1, v0, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->playLottieAnimation()V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->cancelLottieAnimation()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setPageContract(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->mPageContract:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage$Contract;

    return-void
.end method
