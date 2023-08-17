.class Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;->initSpinnerLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5;)V

    const-wide/16 p4, 0x64

    invoke-virtual {p2, p1, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;->c(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/ImportDocumentPresenter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/ImportDocumentPresenter;->getCategorySpinnerItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p2, 0xd

    const-string p4, "5524"

    const-string p5, "555"

    if-nez p3, :cond_1

    const/16 p1, 0xb

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;->b(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentViewContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentViewContract;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;->c(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/ImportDocumentPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/ImportDocumentPresenter;->getDefaultCategoryText()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    :goto_0
    invoke-static {p5, p4, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;->c(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/ImportDocumentPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/ImportDocumentPresenter;->getCategorySpinnerCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_2

    const/16 p1, 0xc

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;->b(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentViewContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentViewContract;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->uncategorised:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "c"

    goto :goto_0

    :cond_2
    const-string v0, "b"

    invoke-static {p5, p4, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    move p1, p2

    :goto_1
    if-eq p1, p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;->c(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/ImportDocumentPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/ImportDocumentPresenter;->getSelectedCategoryType()I

    move-result p2

    if-ne p1, p2, :cond_3

    return-void

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;->d(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;)I

    move-result p2

    if-ne p3, p2, :cond_4

    return-void

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mSpinnerPopupMenu onItemClick(). position : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "ST$ImportDocumentView"

    invoke-static {p4, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;->c(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/ImportDocumentPresenter;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/ImportDocumentPresenter;->setSelectedCategory(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;->updateSelectedItemCount()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;->g(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;->f(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;->updateNoNotes()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;->access$100(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;)Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
