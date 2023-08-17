.class Lcom/samsung/android/support/senl/nt/model/executor/task/CloseDocumentTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/data/DocumentUpdateManager$DocumentUpdateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/executor/task/CloseDocumentTask;->closeCoeditNote()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/executor/task/CloseDocumentTask;

.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/executor/task/CloseDocumentTask;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/CloseDocumentTask$1;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/task/CloseDocumentTask;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/CloseDocumentTask$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoeditDocumentClosed(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCoeditDocumentClosed, uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloseDocumentTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/CloseDocumentTask$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/data/DocumentUpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/data/DocumentUpdateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/support/senl/nt/base/common/data/DocumentUpdateManager;->removeObserver(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/data/DocumentUpdateManager$DocumentUpdateObserver;)V

    return-void
.end method
