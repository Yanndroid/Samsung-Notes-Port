.class Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest$2;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;->createImportTaskListener(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;

.field public final synthetic val$progressDialog:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest$2;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest$2;->val$progressDialog:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;)V

    return-void
.end method


# virtual methods
.method public onFinish(IILjava/util/Map;I)V
    .locals 0
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;->onFinish(IILjava/util/Map;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest$2;->val$progressDialog:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onProgress(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;->onProgress(II)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest$2;->val$progressDialog:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method
