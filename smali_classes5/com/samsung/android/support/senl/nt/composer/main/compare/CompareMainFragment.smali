.class public Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;
.super Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$TabletLayoutManager;,
        Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$PhoneLayoutManager;,
        Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCompareLayoutManager:Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;

.field private mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "CompareMainFragment"

    const-string v1, "SCV"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;)Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;->mCompareLayoutManager:Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;

    return-object p0
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createLayoutManager(Landroid/view/View;Landroid/app/Activity;)V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->middle_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$TabletLayoutManager;

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;->getNoteInfoArguments(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$TabletLayoutManager;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$PhoneLayoutManager;

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;->getNoteInfoArguments(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$PhoneLayoutManager;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;->mCompareLayoutManager:Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;

    return-void
.end method

.method private initActionBar(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->enableToolbar()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->enableAdjustableMenu()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->getSupportedToolbar()Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->getSupportedToolbar()Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method


# virtual methods
.method public getNoteInfoArguments(Landroid/app/Activity;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;->KEY_BUNDLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public initAppbarContents(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;Z)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0, v2}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/activity/OnBackPressedCallback;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;->getNoteInfoArguments(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "arguments is empty"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onCreateFragmentOptionMenu(Landroid/view/Menu;Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$menu;->compare_viewer_menu:I

    invoke-interface {p2, v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;->inflateMenu(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$layout;->compare_comp_main_fragment_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;->createLayoutManager(Landroid/view/View;Landroid/app/Activity;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->initToolbar(Landroid/view/View;)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x102002c

    if-ne v1, v4, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p1}, Landroidx/activity/OnBackPressedCallback;->handleOnBackPressed()V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    return v3

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_select_first:I

    const/4 v5, -0x1

    const-string v6, "compare_result"

    if-ne v1, v4, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v5, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return v3

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_select_second:I

    if-ne v1, v4, :cond_2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v5, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return v3

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_change:I

    if-ne v1, v2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;->mCompareLayoutManager:Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;->setSecondFragment()V

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return v3

    :cond_3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareFragmentOptionMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_change:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;->mCompareLayoutManager:Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;->canShowChangeOption()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;->mCompareLayoutManager:Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;->onViewCreated()V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;)V

    const-string p2, "Compare Viewer"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
