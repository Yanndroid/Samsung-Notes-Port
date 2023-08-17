.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingContract$ISettingMiniView;
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView$IPenMiniContract;
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView$IFavoritePenMiniContract;


# static fields
.field private static final HORIZONTAL_MINI_TOOLBAR:I = 0x0

.field private static final PREF_KEY_MINI_TOOLBAR_ROTATE:Ljava/lang/String; = "pref_key_mini_toolbar_rotate"

.field private static final TAG:Ljava/lang/String;

.field private static final VERTICAL_MINI_TOOLBAR:I = 0x1


# instance fields
.field private final mBottomDocker:Landroid/view/View;

.field private final mEndDocker:Landroid/view/View;

.field private final mFloatingArea:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

.field private mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

.field private final mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

.field private mIsTouchDownConsumed:Z

.field private mSettingFavoritePenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;

.field private mSettingPenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

.field private final mStartDocker:Landroid/view/View;

.field private mToggleModeClickListener:Landroid/view/View$OnClickListener;

.field private final mTopDocker:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "HwSettingPenMiniMenu"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingPenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingFavoritePenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mIsTouchDownConsumed:Z

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->setSettingMiniView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingContract$ISettingMiniView;)V

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->floating_layout_container:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mFloatingArea:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->top_docker:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mTopDocker:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->bottom_docker:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mBottomDocker:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->start_docker:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mStartDocker:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->end_docker:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mEndDocker:Landroid/view/View;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mBottomDocker:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mEndDocker:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mIsTouchDownConsumed:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingFavoritePenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mStartDocker:Landroid/view/View;

    return-object p0
.end method

.method private getOrientation()I
    .locals 3

    const-string v0, "Composer"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "pref_key_mini_toolbar_rotate"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getViewBy(Z)Landroid/view/View;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingFavoritePenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingPenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

    :goto_0
    return-object p1
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mTopDocker:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mIsTouchDownConsumed:Z

    return-void
.end method

.method private initSettingFavoritePenMiniLayout()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingFavoritePenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getFavoritePenData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingFavoritePenData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingFavoritePenData;->getFavoriteMaxCount()I

    move-result v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mFloatingArea:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->getOrientation()I

    move-result v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;-><init>(Landroid/content/Context;III)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingFavoritePenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;->initialize(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView$IFavoritePenMiniContract;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingFavoritePenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initSettingPenMiniLayout()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingPenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/Default$Pen;->getNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/Default$Highlighter;->getNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mFloatingArea:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getColorPaletteData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingColorPaletteData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingColorPaletteData;->getSelectList()Ljava/util/List;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getColorRecentData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingColorRecentData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingColorRecentData;->getRecentColors()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->getOrientation()I

    move-result v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ZLjava/util/List;I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingPenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;->initialize(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView$IPenMiniContract;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingPenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private isFavoriteMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getPenMiniMenuData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingPenMiniMenuData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingPenMiniMenuData;->isFavoriteMode()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->setViewModeBy(Z)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->updateSliderLabelGravity()V

    return-void
.end method

.method public static bridge synthetic l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setOrientation(I)V
    .locals 2

    const-string v0, "Composer"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "pref_key_mini_toolbar_rotate"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private setViewModeBy(Z)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->setViewModeBy(ZZ)V

    const-string v0, "8222"

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/sa/ComposerSAConstants;->SCREEN_NONE:Ljava/lang/String;

    const-string v1, "8203"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "b"

    goto :goto_0

    :cond_0
    const-string p1, "a"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setViewModeBy(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->getViewBy(Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->getViewBy(Z)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    invoke-virtual {v1, v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;->replaceView(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method private setViewOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingPenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->setLayoutOrientation(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingFavoritePenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->setLayoutOrientation(I)V

    return-void
.end method

.method private updatePenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->isPenMiniVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingPenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->setInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    return-void
.end method

.method private updateSliderLabelGravity()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingPenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil;->recommendDirection(Landroid/view/View;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->LEFT:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingPenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

    const/4 v2, 0x3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->setSliderLabelGravity(I)V

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->TOP:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingPenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

    const/16 v2, 0x30

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->RIGHT:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingPenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

    const/4 v2, 0x5

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;->BOTTOM:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil$Area;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingPenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

    const/16 v2, 0x50

    goto :goto_0

    :cond_4
    :goto_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSliderLabelGravity# gravity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " orientation : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->getOrientation()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateViewModeByPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingFavoritePenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->isFavoriteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getFavoritePenData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingFavoritePenData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingFavoritePenData;->isThereFavoriteInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingFavoritePenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->getMode()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getPenMiniMenuData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingPenMiniMenuData;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingPenMiniMenuData;->setFavoriteMode(Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->setViewModeBy(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addFavoritePenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->isFavoriteMiniVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;->beginDelayedRestrictOutOfBounds()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingFavoritePenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;->addFavorite(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    :cond_0
    return-void
.end method

.method public applyPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->setAllTypePenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    return-void
.end method

.method public beginDelayedRestrictOutOfBounds()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;->beginDelayedRestrictOutOfBounds()V

    return-void
.end method

.method public getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getToggleModeClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mToggleModeClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mToggleModeClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;->hide()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingFavoritePenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;->cancelEditMode()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->getPreTouchListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;->removePreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->hideMorePopup()Z

    return-void
.end method

.method public hideMorePopup()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingFavoritePenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;->hideMorePopup()Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->initFloaterLayout()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->initSettingPenMiniLayout()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->initSettingFavoritePenMiniLayout()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;->getColorTheme()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->setColorTheme(I)V

    return-void
.end method

.method public initFloaterLayout()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mFloatingArea:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_hw_setting_pen_mini:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mFloatingArea:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->hw_setting_pen_mini_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mFloatingArea:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->addFloater(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mFloatingArea:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;->setView(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$IView;)V

    return-void
.end method

.method public isFavoriteMiniVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingFavoritePenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPenMiniMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getPenMiniMenuData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingPenMiniMenuData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingPenMiniMenuData;->isEnable()Z

    move-result v0

    return v0
.end method

.method public isPenMiniVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingPenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelectedPenTypeButtons()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->getHwToolbarState()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;->getSelectedMenu()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x800

    if-ne v2, v3, :cond_1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public isTouchDownConsumed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mIsTouchDownConsumed:Z

    return v0
.end method

.method public onPickerColorChanged(I[F)V
    .locals 1

    const/16 v0, 0x1000

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingPenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->setViewMode(I)Z

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingPenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iput-object p2, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;->HSVToColor([F)I

    move-result p2

    iput p2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingPenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->setInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    :cond_1
    return-void
.end method

.method public onTouchOutside()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->hideMorePopup()Z

    move-result v0

    return v0
.end method

.method public rotate()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;->rotateVI()V

    return-void
.end method

.method public runHidingVI()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;->runHidingVI()V

    return-void
.end method

.method public runReboundVI()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;->runReboundVI()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setColorTheme(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingPenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingFavoritePenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->setColorTheme(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingFavoritePenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->setColorTheme(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFavoriteList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->isFavoriteMiniVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;->beginDelayedRestrictOutOfBounds()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingFavoritePenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;->setFavoriteList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setPaletteList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->isPenMiniVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingPenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->setPalette(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPenInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->updateViewModeByPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->updatePenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    return-void
.end method

.method public setRecentColor(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->isPenMiniVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingPenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->setRecentColor(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setSelectLastPenTypeButton(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->updateToolbarSelectionState(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    return-void
.end method

.method public show()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->init()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->isFavoriteMode()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->setViewModeBy(ZZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;->show()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwSettingPenMiniContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->getPreTouchListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;->addPreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->updateCurrentPenInfo()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->updateSliderLabelGravity()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingPenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getColorRecentData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingColorRecentData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingColorRecentData;->getRecentColors()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->setRecentColor(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mSettingPenMiniView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getColorPaletteData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingColorPaletteData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingColorPaletteData;->getSelectList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->setPalette(Ljava/util/List;)V

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mIsTouchDownConsumed:Z

    return-void
.end method

.method public toggleRotate()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->setOrientation(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->setViewOrientation(I)V

    return-void
.end method

.method public updateCurrentPenInfo()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->getSelectedPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->updatePenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    return-void
.end method
