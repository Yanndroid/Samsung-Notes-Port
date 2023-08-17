.class public Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandlerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDocumentHandler:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentUsecaseExecutorImpl;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/executor/scheduler/NotesDocumentServiceSchedulerRepository;->getInstance()Lcom/samsung/android/support/senl/nt/model/executor/scheduler/NotesDocumentServiceSchedulerRepository;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentUsecaseExecutorImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;)V

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->provideNotesDocumentIntentHandler(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;)Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->provideNotesDocumentHandler(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;)Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandlerWrapper;->mDocumentHandler:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    return-void
.end method


# virtual methods
.method public getDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandlerWrapper;->mDocumentHandler:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    return-object v0
.end method
