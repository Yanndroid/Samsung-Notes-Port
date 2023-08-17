.class Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IDataStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$DocumentServiceConnection;,
        Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$OpenDocumentListener;,
        Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$OpenCacheListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComposer:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mLoadListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;

.field private mOpenParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;

.field private mSDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

.field private mSubscriptionId:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "DocumentServiceStore"

    const-string v1, "SCV"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;)Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->mComposer:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->mSubscriptionId:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    return-object p0
.end method

.method private connect(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->mComposer:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$DocumentServiceConnection;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$DocumentServiceConnection;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;Lcom/samsung/android/support/senl/nt/composer/main/simple/model/a;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->mConnection:Landroid/content/ServiceConnection;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->mComposer:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    return-void
.end method

.method private disconnect(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->TAG:Ljava/lang/String;

    const-string v0, "disconnect# service is not connected"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->TAG:Ljava/lang/String;

    const-string v1, "disconnect# unsubscribe service"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->unsubscribe()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->TAG:Ljava/lang/String;

    const-string v1, "disconnect unbindService"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->mSubscriptionId:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->onLoadDocCompleted(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->onLoadDocFailed(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->openDocument()V

    return-void
.end method

.method public static bridge synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private onLoadDocCompleted(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadDocCompleted# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->mSDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->mLoadListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;->onLoadNoteCompleted(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    :cond_0
    return-void
.end method

.method private onLoadDocFailed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadDocFailed# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->mLoadListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;->onLoadNoteFailed(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private openDocument()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openDocument# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->mOpenParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->mOpenParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    const-string v2, "DocumentServiceConnection"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->makeDocRepository(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$OpenCacheListener;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$OpenCacheListener;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)V

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;->openCache(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method


# virtual methods
.method public loadDocument(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;)V
    .locals 0

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->mOpenParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->connect(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;)V

    return-void
.end method

.method public onDestroyed()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->mComposer:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->disconnect(Landroid/content/Context;)V

    return-void
.end method

.method public setLoadListener(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->mLoadListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;

    return-void
.end method
