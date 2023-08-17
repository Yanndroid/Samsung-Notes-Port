.class Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$DocumentServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DocumentServiceConnection"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;Lcom/samsung/android/support/senl/nt/composer/main/simple/model/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$DocumentServiceConnection;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->i()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->a(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;)Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->i()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onServiceConnected# not available activity"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of p1, p2, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceBinder;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;

    check-cast p2, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceBinder;

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->COMPOSER_SERVICE_ID:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->getUser()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->c(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceBinder;->subscribe(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->d(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->b(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->e(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->h(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->i()Ljava/lang/String;

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

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->i()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->d(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V

    return-void
.end method
