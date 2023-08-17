.class Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;->deleteEmptyDoc(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4$2;->this$1:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4$2;->this$1:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->b(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4$2;->this$1:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->b(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/model/R$string;->base_string_no_content_to_save_note_discarded:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method
