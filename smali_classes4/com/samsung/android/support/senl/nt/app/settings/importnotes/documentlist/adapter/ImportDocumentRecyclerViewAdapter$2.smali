.class Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportDocumentRecyclerViewAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportDocumentRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/holder/ImportDocumentRecyclerViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportDocumentRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportDocumentRecyclerViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportDocumentRecyclerViewAdapter$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportDocumentRecyclerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/holder/ImportDocumentRecyclerViewHolder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportDocumentRecyclerViewAdapter$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportDocumentRecyclerViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportDocumentRecyclerViewAdapter;->setCheckItem(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/holder/ImportDocumentRecyclerViewHolder;Ljava/lang/Boolean;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
