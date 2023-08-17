.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;
.super Landroidx/appcompat/widget/SearchView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchMoreClickListener;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchEnterClickListener;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchVoiceClickListener;
    }
.end annotation


# instance fields
.field private mBackKeyListener:Lcom/samsung/android/support/senl/nt/app/common/listener/OnBackKeyListener;

.field private final mContext:Landroid/content/Context;

.field private mInit:Z

.field private mIsCollapsing:Z

.field private mOnSearchEnterClickListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchEnterClickListener;

.field private mOnSearchMoreClickListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchMoreClickListener;

.field private mOnSearchVoiceClickListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchVoiceClickListener;

.field private mSearchBox:Landroid/widget/EditText;

.field private mSearchData:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mInit:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mIsCollapsing:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mInit:Z

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mIsCollapsing:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mInit:Z

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mIsCollapsing:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->init()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;)Lcom/samsung/android/support/senl/nt/app/common/listener/OnBackKeyListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mBackKeyListener:Lcom/samsung/android/support/senl/nt/app/common/listener/OnBackKeyListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchEnterClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mOnSearchEnterClickListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchEnterClickListener;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchMoreClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mOnSearchMoreClickListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchMoreClickListener;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchVoiceClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mOnSearchVoiceClickListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchVoiceClickListener;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mSearchBox:Landroid/widget/EditText;

    return-object p0
.end method


# virtual methods
.method public clearSearchData()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mSearchData:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->setSavedSearchQuery(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->setSavedText(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->setSkipQuery(Z)Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;

    :cond_0
    return-void
.end method

.method public getSavedSearchQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mSearchData:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->getSavedSearchQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSavedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mSearchData:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->getSavedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchBoxText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mSearchBox:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSkipQuery()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mSearchData:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->getSkipQuery()Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mSearchBox:Landroid/widget/EditText;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mInit:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setSaveEnabled(Z)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->search_close_btn:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->search_clear_button_description:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->search_voice_btn:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->search_src_text:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mSearchBox:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$color;->search_hint_text_color:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mSearchBox:Landroid/widget/EditText;

    new-array v2, v0, [Landroid/text/InputFilter;

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$2;

    const/16 v4, 0xc7

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mSearchBox:Landroid/widget/EditText;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->seslGetUpButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->setSearchMoreVisibility(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->seslGetOverflowMenuButton()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$5;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->action_search:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    const v1, 0x10000003

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SearchView;->setImeOptions(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mSearchBox:Landroid/widget/EditText;

    const-string v2, "disableImage=true"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mInit:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public initSearchData(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mSearchData:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->setSavedSearchQuery(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->setSavedText(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->setSkipQuery(Z)Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->setComponentName(Landroid/content/ComponentName;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mSearchData:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->setComponentName()V

    return-void
.end method

.method public isCollapsing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mIsCollapsing:Z

    return v0
.end method

.method public onActionViewCollapsed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mIsCollapsing:Z

    invoke-super {p0}, Landroidx/appcompat/widget/SearchView;->onActionViewCollapsed()V

    return-void
.end method

.method public onActionViewExpanded()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mIsCollapsing:Z

    invoke-super {p0}, Landroidx/appcompat/widget/SearchView;->onActionViewExpanded()V

    return-void
.end method

.method public postQuery(Ljava/lang/CharSequence;Z)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$6;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setComponentName()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mSearchData:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    :cond_0
    return-void
.end method

.method public setOnBackKeyListener(Lcom/samsung/android/support/senl/nt/app/common/listener/OnBackKeyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mBackKeyListener:Lcom/samsung/android/support/senl/nt/app/common/listener/OnBackKeyListener;

    return-void
.end method

.method public setOnSearchEnterClickListener(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchEnterClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mOnSearchEnterClickListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchEnterClickListener;

    return-void
.end method

.method public setOnSearchMoreClickListener(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchMoreClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mOnSearchMoreClickListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchMoreClickListener;

    return-void
.end method

.method public setOnSearchVoiceClickListener(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchVoiceClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mOnSearchVoiceClickListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchVoiceClickListener;

    return-void
.end method

.method public setSavedSearchQuery(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mSearchData:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->setSavedSearchQuery(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;

    return-void
.end method

.method public setSavedText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mSearchData:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->setSavedText(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;

    return-void
.end method

.method public setSearchBoxText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mSearchBox:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSearchMoreVisibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->seslSetOverflowMenuButtonVisibility(I)V

    return-void
.end method

.method public setSkipQuery(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->mSearchData:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->setSkipQuery(Z)Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;

    return-void
.end method

.method public updateSearchViewMargin()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->getViewMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->isSimpleViewMode(I)Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$dimen;->noteslist_recycler_padding_left_right:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$dimen;->noteslist_recycler_padding_left_right_grid:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->search_plate:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->search_settings_margin_end:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    return-void
.end method
