.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->search_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->tag_container:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "recent_searches"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->setSearchContainer()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string v0, "recent_tags"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->setTagContainer()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment;)V

    :cond_5
    :goto_1
    return-void
.end method
