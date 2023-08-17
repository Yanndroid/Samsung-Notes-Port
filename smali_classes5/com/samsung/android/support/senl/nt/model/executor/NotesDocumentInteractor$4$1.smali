.class Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;->successForceSave()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4$1;->this$1:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4$1;->this$1:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;->val$user:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->notifyTaskSavedListener(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Z)V

    return-void
.end method
