.class Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester$CopyDocumentRunnable;
    }
.end annotation


# instance fields
.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDestFolderPath:Ljava/lang/String;

.field private mProgressDialog:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;->mContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;)Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;->mProgressDialog:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;->mProgressDialog:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    return-void
.end method

.method private getDestFolderPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;->mDestFolderPath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public copyToSdcard()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;->mProgressDialog:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    const-string v2, "Copying to external storage..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;->mProgressDialog:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester$CopyDocumentRunnable;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;->getDestFolderPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester$CopyDocumentRunnable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler;->callable(Ljava/util/concurrent/Callable;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->executeOn(Ljava/util/concurrent/Executor;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->observeOn(Ljava/util/concurrent/Executor;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester$1;-><init>(Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->observe(Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->execute()V

    return-void
.end method

.method public setDestFolder(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;->mDestFolderPath:Ljava/lang/String;

    return-object p0
.end method
