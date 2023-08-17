.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;->initRecentSearchLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isNeedToRemoveTagContainer()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView$Contract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView$Contract;->isNotSupportedTag()Z

    move-result v0

    return v0
.end method

.method public onHashTagSelected(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView$Contract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView$Contract;->isNotSupportedTag()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;->e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;->onTagSelectedFromTagActivity(Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    move-result-object p1

    const-string v1, "tag:///"

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;->onFolderSelected(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->onHashTagSelected(Ljava/util/Set;)V

    :goto_0
    return-void
.end method

.method public onKeywordSelected(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView$Contract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView$Contract;->onKeywordSelected(Ljava/lang/String;)V

    return-void
.end method
