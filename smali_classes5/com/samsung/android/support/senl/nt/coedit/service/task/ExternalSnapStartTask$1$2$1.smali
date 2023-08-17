.class Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2;->onError(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2;

.field public final synthetic val$message:Ljava/lang/String;

.field public final synthetic val$spenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2$1;->this$2:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2$1;->val$spenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2$1;->this$2:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2;->this$1:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2$1;->val$spenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "externalSnapStart, sync, onError, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2$1;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->closeDoc(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2$1;->this$2:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$ExternalBaseCallback;->callback:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;

    const/16 v1, 0xca

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;->onError(I)V

    return-void
.end method
