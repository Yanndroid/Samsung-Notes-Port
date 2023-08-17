.class Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;->e(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/ImportDocumentView;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    return-void
.end method
