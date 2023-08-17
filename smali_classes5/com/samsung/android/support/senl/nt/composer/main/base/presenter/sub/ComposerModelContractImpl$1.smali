.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl$1;
.super Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->getSavingListener()Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener<",
        "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->g()Ljava/lang/String;

    move-result-object p1

    const-string v0, "completed# quickSavingDoc"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->requestSyncUpFirst(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;Z)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getHandoffManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;->sendHandoffData()V

    :cond_1
    return-void
.end method

.method public failed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->g()Ljava/lang/String;

    move-result-object p1

    const-string p2, "failed# quickSavingDoc"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;)V

    return-void
.end method
