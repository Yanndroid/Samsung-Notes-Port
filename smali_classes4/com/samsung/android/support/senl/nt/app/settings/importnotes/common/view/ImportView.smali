.class public Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/ImportPresenterContract$IRecyclerView;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImportView"


# instance fields
.field public mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field public mCheckInfoText:Landroid/widget/TextView;

.field public mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field private final mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportViewContract;

.field public mNoNote:Landroid/widget/TextView;

.field public mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

.field public mSelectAll:Landroid/widget/CheckBox;

.field public mSelectAllLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportViewContract;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportViewContract;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportViewContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportViewContract;

    return-object p0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportViewContract;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportViewContract;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public initBottomNaviView()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->bottom_navigation:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_bottom_navigation:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/app/Activity;II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$menu;->import_item:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarView;->inflateMenu(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView$3;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarView;->setOnItemSelectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    return-void
.end method

.method public initializeToolbar()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportViewContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportViewContract;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->collapsing_toolbar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->checkbox_withtext:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mSelectAllLayout:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->checkbox_all:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mSelectAll:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mSelectAllLayout:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->check_info:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mCheckInfoText:Landroid/widget/TextView;

    const/high16 v2, 0x41980000    # 19.0f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->appbar_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mCheckInfoText:Landroid/widget/TextView;

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mNoNote:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->setVerticalView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportViewContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportViewContract;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->updateRecyclerViewPaddingBottom(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCustomKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v0, 0x1d

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x71

    if-eq p1, v0, :cond_0

    const/16 v0, 0x72

    if-eq p1, v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected keycode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImportView"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->startDragMouseMultiSelection()V

    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->cancelDragMouseMultiSelection()V

    return v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    const/16 p2, 0x1000

    and-int/2addr p1, p2

    if-eq p1, p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->setAllItemChecked(Z)V

    return v2

    :cond_5
    :goto_1
    return v1
.end method

.method public onItemLongPressed()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportViewContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportViewContract;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_done:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_1
    return-void
.end method

.method public onViewCreated()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportViewContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportViewContract;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->updateRecyclerViewPaddingBottom(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;Z)V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->checkbox:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFastScrollerEnabled(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x46

    if-lt p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    return-void
.end method

.method public updateSelectedItemCount(IILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportViewContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportViewContract;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    move-object v1, v0

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mSelectAll:Landroid/widget/CheckBox;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mSelectAllLayout:Landroid/view/View;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-nez v2, :cond_2

    goto/16 :goto_7

    :cond_2
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_4

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_import_select_items:I

    invoke-virtual {v0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_5
    sget p3, Lcom/samsung/android/support/senl/nt/app/R$string;->selected_check_info:I

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, p3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v4, p3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_6

    invoke-virtual {v1, p3}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mCheckInfoText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mCheckInfoText:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    if-eqz p2, :cond_7

    if-ne p2, p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string p3, " "

    const-string v1, ", "

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->convertToArabicNumber(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_selected:I

    invoke-virtual {v0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_double_tap_to_deselect_all:I

    :goto_4
    invoke-virtual {v0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_tick_box:I

    invoke-virtual {v0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    if-nez p2, :cond_9

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_nothing_selected:I

    goto :goto_5

    :cond_9
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->convertToArabicNumber(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_selected:I

    :goto_5
    invoke-virtual {v0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_double_tap_to_select_all:I

    goto :goto_4

    :goto_6
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mSelectAllLayout:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_a
    :goto_7
    return-void
.end method
