.class Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->save(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;ZZLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

.field public final synthetic val$doNotShowSavedToast:Z

.field public final synthetic val$user:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$3;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$3;->val$user:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$3;->val$doNotShowSavedToast:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$3;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$3;->val$user:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$3;->val$doNotShowSavedToast:Z

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->notifyTaskSavedListener(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Z)V

    return-void
.end method
