.class Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportDocumentRecyclerViewAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportDocumentRecyclerViewAdapter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportDocumentRecyclerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/holder/ImportDocumentRecyclerViewHolder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportDocumentRecyclerViewAdapter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportDocumentRecyclerViewAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportDocumentRecyclerViewAdapter;->a(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportDocumentRecyclerViewAdapter;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportDocumentAdapterContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportDocumentAdapterContract;->onItemLongPressed()V

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/holder/ImportDocumentRecyclerViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportDocumentRecyclerViewAdapter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportDocumentRecyclerViewAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportDocumentRecyclerViewAdapter;->setCheckItem(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/holder/ImportDocumentRecyclerViewHolder;Ljava/lang/Boolean;)V

    return v1
.end method
