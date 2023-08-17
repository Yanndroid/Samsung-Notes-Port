.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;
.super Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOADER_ID_RECENT_SEARCH:I = 0x0

.field public static final TAG:Ljava/lang/String; = "RecentSearchListFragment"


# instance fields
.field private mFlexboxHashTagView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;

.field private mFlexboxSearchView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;

.field private final mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mSearchListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->setEmptyViewVisible()V

    return-void
.end method

.method private setEmptyViewVisible()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->empty_view:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->mFlexboxSearchView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->getContainerVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->mFlexboxHashTagView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->getTagContainerVisibility()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public insertSearchKeyword(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchDatabaseHelper$AsyncExecutor;->insertSearchKeyword(Ljava/lang/String;)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->setSearchContainer()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->setTagContainer()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->setEmptyViewVisible()V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchCursorLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchCursorLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$layout;->recent_search_bubble_list_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->search_flexboxView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->mFlexboxSearchView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$id;->search_container:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->initLayout(Landroid/view/View;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->mFlexboxSearchView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->mSearchListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->setSearchListener(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;)V

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->tag_flexboxView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->mFlexboxHashTagView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$id;->tag_container:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->initLayout(Landroid/view/View;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->mFlexboxHashTagView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->mSearchListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->setSearchListener(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;)V

    const-string p2, "SearchSettings"

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, v0, p3, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->mFlexboxSearchView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->mFlexboxHashTagView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->mSearchListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;

    const-string v0, "SearchSettings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .param p1    # Landroidx/loader/content/Loader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroidx/loader/content/Loader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .param p1    # Landroidx/loader/content/Loader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setListener(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->mSearchListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;

    return-void
.end method

.method public setSearchContainer()V
    .locals 3

    const-string v0, "SearchSettings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "recent_searches"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->mFlexboxSearchView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->setSearchContainer()V

    :cond_1
    return-void
.end method

.method public setTagContainer()V
    .locals 3

    const-string v0, "SearchSettings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "recent_tags"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->mSearchListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;->isNeedToRemoveTagContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->mFlexboxHashTagView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->setTagContainer()V

    :cond_1
    :goto_0
    return-void
.end method
