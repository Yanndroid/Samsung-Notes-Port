.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocCacheListener;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
        ">",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocListener<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDocService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

.field private final mOpenDocListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mOpenParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;

.field private final mSaveStrategy:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OpenDocCacheListener"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocCacheListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocListener$Contract;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocListener;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocListener$Contract<",
            "TT;>;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocListener<",
            "TT;>;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocListener;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocListener$Contract;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocCacheListener;->mOpenDocListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocCacheListener;->mDocService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocCacheListener;->mOpenParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocCacheListener;->mSaveStrategy:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;

    return-void
.end method


# virtual methods
.method public failed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocCacheListener;->TAG:Ljava/lang/String;

    const-string p2, "failed# "

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocCacheListener;->mOpenParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocCacheListener;->mDocService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object p2

    const-string v0, "OpenDocCacheListener"

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->makeDocRepository(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocCacheListener;->mSaveStrategy:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;->onCacheLoadFailed(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocCacheListener;->mDocService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocCacheListener;->mOpenDocListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocListener;

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;->open(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method
