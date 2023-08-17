.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchMoreClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchMoreClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x800005

    invoke-direct {v0, v1, p1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$menu;->search_settings_popup_menu:I

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$5$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$5$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$5;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
