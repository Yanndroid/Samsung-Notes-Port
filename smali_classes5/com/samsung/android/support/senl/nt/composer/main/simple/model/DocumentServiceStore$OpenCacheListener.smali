.class Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$OpenCacheListener;
.super Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenCacheListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener<",
        "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
        ">;"
    }
.end annotation


# instance fields
.field public mDocumentRepository:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$OpenCacheListener;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$OpenCacheListener;->mDocumentRepository:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    return-void
.end method


# virtual methods
.method public completed(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Ljava/lang/String;)V
    .locals 0
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

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$OpenCacheListener;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->f(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    return-void
.end method

.method public failed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$OpenCacheListener;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->b(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$OpenCacheListener;->mDocumentRepository:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$OpenDocumentListener;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$OpenCacheListener;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$OpenDocumentListener;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;)V

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;->open(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method
