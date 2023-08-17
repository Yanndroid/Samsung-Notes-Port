.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->onChangedDocumentByUser(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;)Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;)Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->addSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;)Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ReloadDocListener;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ReloadDocListener;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ReloadDocListener$Contract;)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;->reload(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    :cond_0
    return-void
.end method
