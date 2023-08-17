.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/PdfImportHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/PdfImportHelper;->updateActionPdfMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/PdfImportHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/PdfImportHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/PdfImportHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/PdfImportHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/PdfImportHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/PdfImportHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/PdfImportHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/PdfImportHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/PdfImportHelper$IPresenter;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/PdfImportHelper$IPresenter;->setToolType(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
