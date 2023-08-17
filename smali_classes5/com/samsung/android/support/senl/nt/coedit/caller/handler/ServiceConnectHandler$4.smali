.class Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;
.super Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;->externalSnapStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;

.field public final synthetic val$appContext:Landroid/content/Context;

.field public final synthetic val$future:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic val$groupId:Ljava/lang/String;

.field public final synthetic val$originFilePath:Ljava/lang/String;

.field public final synthetic val$resourceId:Ljava/lang/String;

.field public final synthetic val$tempFilePath:Ljava/lang/String;

.field public final synthetic val$userId:Ljava/lang/String;

.field public final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->val$future:Ljava/util/concurrent/CompletableFuture;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->val$uuid:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->val$appContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->val$originFilePath:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->val$tempFilePath:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->val$groupId:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->val$resourceId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;-><init>()V

    return-void
.end method

.method private externalSnapStartToService()V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS7] externalSnapStartToService() uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->val$uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceConnectHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    new-instance v9, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->val$appContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->val$originFilePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->val$tempFilePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->val$uuid:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->val$groupId:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->val$resourceId:Ljava/lang/String;

    new-instance v8, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4$1;

    invoke-direct {v8, p0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;)V

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;)V

    invoke-virtual {v0, v9}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->executeExternalTask(Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;)V

    return-void
.end method


# virtual methods
.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->val$future:Ljava/util/concurrent/CompletableFuture;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "ServiceConnectHandler"

    const-string v0, "[CS7-1] externalSnapStart, ServiceConnection, onServiceConnected()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    check-cast p2, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$LocalBinder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$LocalBinder;->getService()Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->val$userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->subscribe(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->externalSnapStartToService()V

    goto :goto_0

    :cond_0
    const-string p2, "externalSnapStart, ServiceConnection, onServiceConnected() CoeditService is unavailable"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->val$future:Ljava/util/concurrent/CompletableFuture;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "ServiceConnectHandler"

    const-string v0, "[CS7-2] externalSnapStart, ServiceConnection, onServiceDisconnected()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    return-void
.end method
