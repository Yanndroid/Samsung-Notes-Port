.class Lcom/samsung/vsf/recognition/SamsungRecognizer$CancelThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/recognition/SamsungRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelThread"
.end annotation


# instance fields
.field private id:I

.field private mClient:Lcom/sec/svoice/api/SVoice;


# direct methods
.method public constructor <init>(Lcom/sec/svoice/api/SVoice;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$CancelThread;->mClient:Lcom/sec/svoice/api/SVoice;

    iput p2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$CancelThread;->id:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CancelThread@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$CancelThread;->mClient:Lcom/sec/svoice/api/SVoice;

    const-string v1, "SamsungRecognizer@"

    const-string v2, "tickcount"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$CancelThread;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cancel()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$CancelThread;->mClient:Lcom/sec/svoice/api/SVoice;

    invoke-virtual {v0}, Lcom/sec/svoice/api/SVoice;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$CancelThread;->mClient:Lcom/sec/svoice/api/SVoice;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$CancelThread;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " destroy()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$CancelThread;->mClient:Lcom/sec/svoice/api/SVoice;

    invoke-virtual {v0}, Lcom/sec/svoice/api/SVoice;->destroy()Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$CancelThread;->mClient:Lcom/sec/svoice/api/SVoice;

    return-void
.end method
