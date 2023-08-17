.class Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;->initListLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final selectedItemPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$2;->selectedItemPositions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;->access$000(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;)Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "ST$ImportDocumentView"

    const-string p2, "holder is null!!"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$2;->selectedItemPositions:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$2;->selectedItemPositions:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$2;->selectedItemPositions:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    :goto_0
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;->c(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/ImportDocumentPresenter;

    move-result-object p3

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/holder/ImportDocumentRecyclerViewHolder;

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/ImportDocumentPresenter;->setCheckItem(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/holder/ImportDocumentRecyclerViewHolder;Z)V

    return-void
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$2;->selectedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$2;->selectedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
