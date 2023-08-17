.class Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$1;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OldCategory LiveData onChanged# countEntries count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OldCategoryPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->getDocumentCount()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;-><init>(ILcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->b(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;)Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$Contract;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$Contract;->onDataChanged(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->c(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->c(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->c(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->a(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;)Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
