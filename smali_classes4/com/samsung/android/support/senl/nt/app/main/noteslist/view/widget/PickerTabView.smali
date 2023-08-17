.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView$TabViewContract;
    }
.end annotation


# instance fields
.field private mCurrentPage:I

.field private final mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

.field private final mTabSelectedListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

.field private mTabViewContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView$TabViewContract;

.field private mTabs:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->mTabSelectedListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->mCurrentPage:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView$TabViewContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->mTabViewContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView$TabViewContract;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->mCurrentPage:I

    return-void
.end method


# virtual methods
.method public setBottomTab(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result p2

    if-eq p2, p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2, p1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->mCurrentPage:I

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->tab_layout:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->all_notes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_my_folders:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    iget p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->mCurrentPage:I

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->mTabSelectedListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->mTabViewContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView$TabViewContract;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->bottom_navigation_text_view_height:I

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView$TabViewContract;->setNotesListBottomViewMargin(I)V

    return-void
.end method

.method public setTabContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView$TabViewContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->mTabViewContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView$TabViewContract;

    return-void
.end method
