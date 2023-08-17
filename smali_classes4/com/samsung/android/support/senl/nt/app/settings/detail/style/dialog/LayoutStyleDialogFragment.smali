.class public Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;
.super Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$Contract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment$Contract;
    }
.end annotation


# static fields
.field private static final KEY_FOLDER_UUID:Ljava/lang/String; = "key_folder_uuid"

.field private static final KEY_TOOL_TYPE:Ljava/lang/String; = "key_tool_type"

.field public static TAG:Ljava/lang/String; = "LayoutStyleDialogFragment"


# instance fields
.field private mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment$Contract;

.field private mFolderUuid:Ljava/lang/String;

.field private mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;

.field private mPagerBottomLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

.field private mToolType:I

.field private mViewPager:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mFolderUuid:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mToolType:I

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;)Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mPagerBottomLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->onPressBackButton()V

    return-void
.end method

.method private initDialog(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_layout_style_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method private initViewPager(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->setContract(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$Contract;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->viewpager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePager;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePager;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->bottom_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mPagerBottomLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mPagerBottomLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePager;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    return-void
.end method

.method private isFirstPage()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLastPage()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private onPressBackButton()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->isFirstPage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :goto_0
    return-void
.end method

.method private onPressNextButton()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->isLastPage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment$Contract;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mFolderUuid:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mToolType:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment$Contract;->onNewNote(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->sendSALogging()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :goto_0
    return-void
.end method

.method private sendSALogging()V
    .locals 5

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "settings_preferred_note_style"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "a"

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "settings_page_size"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    move v4, v3

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "settings_page_scroll_direction"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v2, "settings_page_layout_column"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v1, :cond_3

    if-eqz v4, :cond_2

    const-string v0, "b"

    goto :goto_0

    :cond_2
    const-string v0, "e"

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_5

    if-eqz v4, :cond_4

    const-string v0, "c"

    goto :goto_0

    :cond_4
    const-string v0, "f"

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    const-string v0, "d"

    goto :goto_0

    :cond_6
    const-string v0, "g"

    :goto_0
    const-string v1, "1321"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    const-string p1, "Settings"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const-string v0, "settings_page_style_and_template_first_time"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->pager_back_button:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->onPressBackButton()V

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->pager_next_button:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->onPressNextButton()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected viewId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "key_folder_uuid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mFolderUuid:Ljava/lang/String;

    const-string v0, "key_tool_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mToolType:I

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->layout_style_dialog_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->initViewPager(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->initDialog(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->unregisterSharedPreferenceListener()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mFolderUuid:Ljava/lang/String;

    const-string v1, "key_folder_uuid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mToolType:I

    const-string v1, "key_tool_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->onStart()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->updateLayout()V

    return-void
.end method

.method public setContract(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment$Contract;

    return-void
.end method

.method public updateLayout()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->getPageName(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLayout# title: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mPagerBottomLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->isFirstPage()Z

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->isLastPage()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->updateLayout(ZZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
