.class Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask$LoadTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->open(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$1;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCache(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$1;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->getSpenSDocDataSource(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;

    move-result-object p1

    return-object p1
.end method

.method public onLoaded(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$1;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->h(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;)V

    return-void
.end method
