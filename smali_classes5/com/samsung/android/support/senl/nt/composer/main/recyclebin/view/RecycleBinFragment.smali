.class public Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/view/RecycleBinFragment;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinContract$IView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;-><init>()V

    return-void
.end method

.method private initDueDateView(Landroid/widget/TextView;J)V
    .locals 4

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentTimeUtils;->getRecycleBinDueDate(J)I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/composer/R$string;->recycle_bin_remain_time_tonight:I

    :goto_0
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_0
    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/composer/R$string;->recycle_bin_remain_time_tomorrow:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$plurals;->recycle_bin_remain_time:I

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p3, v2

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :goto_2
    return-void
.end method

.method private setThemeToView(Landroid/view/ViewGroup;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    invoke-virtual {v2, p2}, Landroid/view/View;->setBackgroundColor(I)V

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/view/RecycleBinFragment;->setThemeToView(Landroid/view/ViewGroup;II)V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_1
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public attachDueDateView(JIZZ)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_bottom_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_recycle_bin_due_date_bar:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_recycle_bin_remain_time:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v2, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/view/RecycleBinFragment;->initDueDateView(Landroid/widget/TextView;J)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p3, p4, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getBackgroundThemeColorTable(Landroid/content/Context;IZZ)[I

    move-result-object p1

    aget p2, p1, v1

    aget p1, p1, v4

    invoke-direct {p0, v0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/view/RecycleBinFragment;->setThemeToView(Landroid/view/ViewGroup;II)V

    return-void
.end method

.method public attachTitle(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mTitle:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/view/menu/title/RecyclerBinTitleEditor;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/view/menu/title/RecyclerBinTitleEditor;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mTitle:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    :cond_0
    return-void
.end method

.method public createComposerView(Landroid/app/Activity;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/view/composer/RecycleBinComposerView;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/view/composer/RecycleBinComposerView;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public createOptionMenu()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mOptionMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/view/menu/option/OptionMenuRecycleBin;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->getOptionMenuPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/view/menu/option/OptionMenuRecycleBin;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mOptionMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

    :cond_0
    return-void
.end method

.method public createPresenter()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinPresenter;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinPresenter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->setPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;)V

    return-void
.end method
