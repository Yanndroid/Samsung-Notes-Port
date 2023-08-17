.class Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->startRecognitionMonitor(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;

.field public final synthetic val$recognizeLatch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$workerInfoContract:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;Ljava/util/concurrent/CountDownLatch;Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager$1;->this$0:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager$1;->val$recognizeLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager$1;->val$workerInfoContract:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startRecognitionMonitor$run, start cancel monitor"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager$1;->val$recognizeLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startRecognitionMonitor$run, await recognize, true"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager$1;->val$workerInfoContract:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;->isCanceled()Z

    move-result v0

    :cond_2
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startRecognitionMonitor$run, call cancel"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager$1;->this$0:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->a(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;)Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->cancel()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startRecognitionMonitor$run, InterruptedException"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startRecognitionMonitor$run, done"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
