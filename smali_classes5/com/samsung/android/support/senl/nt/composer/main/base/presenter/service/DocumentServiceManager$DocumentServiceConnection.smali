.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$DocumentServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DocumentServiceConnection"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$DocumentServiceConnection;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;->isAttachedToActivity()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->f()Ljava/lang/String;

    move-result-object p1

    const-string p2, "isAttachedToActivity false"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of p1, p2, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceBinder;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    check-cast p2, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceBinder;

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->COMPOSER_SERVICE_ID:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->getUser()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceBinder;->subscribe(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->registerDocumentServiceListener(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$DocumentServiceListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->registerSyncListener(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$SyncListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;->onServiceConnected()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->f()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V

    return-void
.end method
