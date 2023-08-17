.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$GridItemDecoration;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$ViewHolder;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuTopAdapter;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$AbsInsertMenuAdapter;
    }
.end annotation


# static fields
.field public static final SPAN_COUNT_DEFAULT:I = 0x2

.field public static final SPAN_COUNT_MIN:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAddMenuPopup:Landroid/widget/PopupWindow;

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OptionMenuAdd"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->getOptionMenuAddPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    return-object p0
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initMenuView()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_insert_menu_layout:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/util/DisplayUtils;->getWindowSize(Landroid/content/Context;Landroid/content/res/Configuration;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->insert_menu_width_min:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->insert_menu_width_min_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt v1, v3, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->insert_menu_item_gap:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuTopAdapter;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuTopAdapter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/c;)V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuTopAdapter;->init()V

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$id;->menu_top_recycler_view:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v6, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$GridItemDecoration;

    invoke-direct {v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$GridItemDecoration;-><init>(I)V

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/b;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;->init()V

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->menu_bottom_recycler_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->mAddMenuPopup:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/common/OptionMenuPopupWindowHelper;->setDefaultState(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public hideAddMenuPopup()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->TAG:Ljava/lang/String;

    const-string v1, "hideAddMenuPopup#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->mAddMenuPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->mAddMenuPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public showAddMenuPopup()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->TAG:Ljava/lang/String;

    const-string v1, "showAddMenuPopup#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;->isNotAvailableStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->initMenuView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_add:I

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/common/OptionMenuPopupWindowHelper;->getAnchorViewInToolbar(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->mAddMenuPopup:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/common/OptionMenuPopupWindowHelper;->getPopupWindowGravity()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
