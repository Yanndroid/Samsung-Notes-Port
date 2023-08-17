.class public Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$OnClickSelectAllListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuController"


# instance fields
.field public mActionMode:Landroid/view/ActionMode;

.field public mActionModeView:Landroid/view/View;

.field private mAppBar:Lcom/google/android/material/appbar/AppBarLayout;

.field private mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field private mBottomProgressCircleId:I

.field private mCheckAllText:Landroid/widget/TextView;

.field public mCheckInfoText:Landroid/widget/TextView;

.field private mCoeditBetaView:Landroid/view/View;

.field private mCoeditMemberCountView:Landroid/view/View;

.field public mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field private mEnableCustomTitle:Z

.field private final mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

.field private mOffsetUpdateListener:Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;

.field private final mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

.field private mSelectAll:Landroid/widget/CheckBox;

.field private mSelectAllLayout:Landroid/view/ViewGroup;

.field private mVerticalOffset:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mBottomProgressCircleId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mVerticalOffset:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mEnableCustomTitle:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mAppBar:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;)Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAll:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mVerticalOffset:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mVerticalOffset:Z

    return-void
.end method

.method private getSelectAllContentDescription(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, " "

    const-string v2, ", "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->convertToArabicNumber(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_selected:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_double_tap_to_deselect_all:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_tick_box:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_nothing_selected:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_double_tap_to_select_all:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_tick_box:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_not_selected:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_selected:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_double_tap_to_select_all:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_tick_box:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_not_selected:I

    goto/16 :goto_0

    :goto_1
    return-object p1
.end method

.method private inflateActionModeLayout()Landroid/widget/RelativeLayout;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_mode_layout:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_action_mode_layout:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/app/Activity;II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private inflateBottomNavigationView(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setOnItemSelectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    return-void

    :cond_0
    const-string v0, "ActionMenuController"

    const-string v1, "inflateBottomNavigationView()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->bottom_navigation:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_bottom_navigation:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/app/Activity;II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setOnItemSelectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    :cond_1
    return-void
.end method

.method private releaseMemberCountView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCoeditMemberCountView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCoeditMemberCountView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setToolbarTitle(Landroid/text/Editable;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setToolbarTitle# title : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionMenuController"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->initExtendedToolbar()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->toolbar:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private showBottomProgressCircle(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;->show(Lcom/google/android/material/navigation/NavigationBarItemView;)Z

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private showProgressCircle()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->main_view_block:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;->getPostLaunchToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;

    move-result-object v2

    const/16 v3, 0x67

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->removeLogic(Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;I)Z

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_progress_circle:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mBottomProgressCircleId:I

    return-void
.end method


# virtual methods
.method public checkBottomProgressCircle()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkBottomProgressCircle# BottomProgressCircleId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mBottomProgressCircleId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionMenuController"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mBottomProgressCircleId:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->showProgressCircle()V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;->dismiss()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->showBottomProgressCircle(I)V

    :goto_0
    return-void
.end method

.method public enableEditCustomToolbarTitle()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mEnableCustomTitle:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAll:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->jumpDrawablesToCurrentState()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAll:Landroid/widget/CheckBox;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAllLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAllLayout:Landroid/view/ViewGroup;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->note_picker_title_marginstart:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public finishActionMode()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mActionModeView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->inflateActionModeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mActionModeView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mActionMode:Landroid/view/ActionMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mActionMode:Landroid/view/ActionMode;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mActionModeView:Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mActionModeView:Landroid/view/View;

    return-void
.end method

.method public getBottomNavigationMenu()Landroid/view/Menu;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->inflateBottomNavigationView(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getVerticalOffset()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mVerticalOffset:Z

    return v0
.end method

.method public inflateBottomNavigationMenu(ILcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->inflateBottomNavigationView(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p2, p1}, Lcom/google/android/material/navigation/NavigationBarView;->inflateMenu(I)V

    return-void
.end method

.method public inflateSelectAllLayout(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$OnClickSelectAllListener;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->initExtendedToolbar()V

    const-string v0, "ActionMenuController"

    const-string v1, "inflateSelectAllLayout()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAllLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mActionModeView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->checkbox_withtext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAllLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->checkbox_all:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAll:Landroid/widget/CheckBox;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAllLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAllLayout:Landroid/view/ViewGroup;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$3;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$OnClickSelectAllListener;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mActionModeView:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->check_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    const/high16 v2, 0x41980000    # 19.0f

    invoke-static {p1, v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mOffsetUpdateListener:Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->setTextView(Landroid/widget/TextView;)V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckAllText:Landroid/widget/TextView;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAllLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->check_all_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckAllText:Landroid/widget/TextView;

    :cond_4
    return-void
.end method

.method public initExtendedToolbar()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->collapsing_toolbar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mAppBar:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->appbar_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mAppBar:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$1;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mOffsetUpdateListener:Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mAppBar:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mVerticalOffset:Z

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->releaseCoeditBetaView()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->releaseMemberCountView()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mAppBar:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mOffsetUpdateListener:Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method

.method public onShowProgressCircle()V
    .locals 1

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mBottomProgressCircleId:I

    return-void
.end method

.method public releaseCoeditBetaView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCoeditBetaView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCoeditBetaView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCoeditBetaView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->collapsing_appbar_extended_subtitle:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_1
    return-void
.end method

.method public resetCheckItems()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAllLayout:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAll:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckAllText:Landroid/widget/TextView;

    return-void
.end method

.method public setBottomProgressCircleId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mBottomProgressCircleId:I

    return-void
.end method

.method public setCollapsingToolBarScrollEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayHomeAsUpEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActionMenuController"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(ZZ)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public setEditCustomToolbarTitle(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mEnableCustomTitle:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->select_notes:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v0

    const/16 v1, 0xa

    const-string v2, "/"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->convertToArabicNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->convertToArabicNumber(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setEnabledSelectAll(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckAllText:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAllLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mAppBar:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    return-void
.end method

.method public setHideSelectAllCheckbox()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAll:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->jumpDrawablesToCurrentState()V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAll:Landroid/widget/CheckBox;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAllLayout:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAllLayout:Landroid/view/ViewGroup;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mEnableCustomTitle:Z

    return-void
.end method

.method public setNotesListBottomViewMargin(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setToolbarCoeditBetaView()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCoeditBetaView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_coedit_beta_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCoeditBetaView:Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->releaseCoeditBetaView()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCoeditBetaView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mOffsetUpdateListener:Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCoeditBetaView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->setAdditionalView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->collapsing_appbar_extended_subtitle:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_2
    return-void
.end method

.method public setToolbarMemberCountView()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCoeditMemberCountView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_coedit_member_count_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCoeditMemberCountView:Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->releaseMemberCountView()V

    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->co_edit_member_count_view_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->co_edit_member_count_view_margin_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->toolbar:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCoeditMemberCountView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mOffsetUpdateListener:Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCoeditMemberCountView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->setAdditionalView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setToolbarSubTitle(Landroid/text/Editable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setToolbarSubTitle# subTitle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionMenuController"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->initExtendedToolbar()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->seslSetSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setToolbarSubTitle(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setToolbarSubTitle(Landroid/text/Editable;)V

    return-void
.end method

.method public setToolbarTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setToolbarTitle(Landroid/text/Editable;)V

    return-void
.end method

.method public setToolbarTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setToolbarTitle(Landroid/text/Editable;)V

    return-void
.end method

.method public setVerticalView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mOffsetUpdateListener:Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->setVerticalView(Landroid/view/View;)V

    return-void
.end method

.method public setVerticalView(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mOffsetUpdateListener:Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->setVerticalView(Landroid/view/View;I)V

    return-void
.end method

.method public showBottomNavigation(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->showBottomNavigation(ZZ)V

    return-void
.end method

.method public showBottomNavigation(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->inflateBottomNavigationView(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;->dismiss()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    instance-of p1, v0, Lcom/samsung/android/support/senl/nt/app/common/widget/AnimationBottomNavigationView;

    if-eqz p1, :cond_2

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/common/widget/AnimationBottomNavigationView;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;)V

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/widget/AnimationBottomNavigationView;->setVisibility(ILandroid/animation/AnimatorListenerAdapter;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    instance-of p2, p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    if-nez p2, :cond_3

    instance-of p1, p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    if-eqz p1, :cond_6

    :cond_3
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->bottom_navigation_text_view_height:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setNotesListBottomViewMargin(I)V

    goto :goto_1

    :cond_4
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    if-nez v0, :cond_5

    instance-of p1, p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    if-eqz p1, :cond_6

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setNotesListBottomViewMargin(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$layout;->noteslist_action_mode_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mActionModeView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mActionMode:Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mActionModeView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_mode_close_button:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public startActionMode(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$OnClickSelectAllListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mActionModeView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->inflateActionModeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mActionModeView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mActionModeView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->inflateSelectAllLayout(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$OnClickSelectAllListener;)V

    return-void
.end method

.method public updateSelectedFolderCount(ZI)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSelectedFolderCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionMenuController"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAll:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->isLongPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    if-nez p2, :cond_2

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->select_folder:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->selected_check_info:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAllLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->getSelectAllContentDescription(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public updateSelectedNoteCount(ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->updateSelectedNoteCount(ZIZ)V

    return-void
.end method

.method public updateSelectedNoteCount(ZIZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSelectedNoteCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionMenuController"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mEnableCustomTitle:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setEditCustomToolbarTitle(I)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;->filteredInvalidateOptionsMenu()V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :goto_0
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    if-nez p2, :cond_3

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->select_notes:I

    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_3
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->selected_check_info:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p3, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setToolbarTitle(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAll:Landroid/widget/CheckBox;

    if-nez p3, :cond_4

    return-void

    :cond_4
    invoke-virtual {p3, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mSelectAllLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->getSelectAllContentDescription(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method
