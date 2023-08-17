.class Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->externalSnapStartToService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS7-1] externalSnapStartToService uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->val$uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceConnectHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->val$future:Ljava/util/concurrent/CompletableFuture;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public onError(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS7-2] externalSnapStartToService() fail to download, errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uuid : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->val$uuid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceConnectHandler"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;->val$future:Ljava/util/concurrent/CompletableFuture;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
