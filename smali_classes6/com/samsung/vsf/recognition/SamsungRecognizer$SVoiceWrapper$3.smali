.class Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->openAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;


# direct methods
.method public constructor <init>(Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;->this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "ASRProfiling"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SamsungRecognizer@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;->this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget v2, v2, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " openAsync()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tickcount"

    invoke-static {v2, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;->this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget-object v3, v1, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->access$800(Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;->this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget-object v1, v1, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x3

    if-ge v4, v6, :cond_5

    if-nez v5, :cond_5

    :try_start_0
    iget-object v6, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;->this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget-object v6, v6, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "open() starts in openAsync "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;->this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget-object v7, v6, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    invoke-virtual {v6, v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->getOpenDeviceInfo(Lcom/samsung/vsf/SpeechRecognizer$Config;)Ljava/util/Properties;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/sec/svoice/api/SVoice;->open(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "open() ends in openAsync "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;->this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-static {v7}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->access$900(Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "open() has failed for SamsungRecognizer@"

    if-eqz v6, :cond_3

    :try_start_1
    invoke-virtual {v6}, Ljava/util/Properties;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;->this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-virtual {v8, v6}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isValidEndpoint(Ljava/util/Properties;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v7, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;->this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    const-string v8, "sessionid"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVSessionId:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SamsungRecognizer sessionId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;->this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget-object v7, v7, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVSessionId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "open() successful for SamsungRecognizer@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;->this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget v7, v7, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;->this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget v7, v7, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "permission"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "open() Permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_2

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v6, "open() Device is BLOCKED "

    invoke-static {v2, v6}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v7, "serverEndpoint"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "open() serverEndpoint "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_4

    new-instance v7, Lcom/samsung/vsf/recognition/SamsungRecognizer$CancelThread;

    iget-object v8, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;->this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget-object v9, v8, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    iget v8, v8, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-direct {v7, v9, v8}, Lcom/samsung/vsf/recognition/SamsungRecognizer$CancelThread;-><init>(Lcom/sec/svoice/api/SVoice;I)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    iget-object v7, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;->this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getPortNumber()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setServerDetails(Ljava/lang/String;I)Lcom/samsung/vsf/SpeechRecognizer$Config;

    iget-object v6, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;->this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-static {v6}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->access$800(Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;)V

    iget-object v6, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;->this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget-object v6, v6, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v6, v3}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$602(Lcom/samsung/vsf/recognition/SamsungRecognizer;Z)Z

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;->this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget v7, v7, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    iget-object v7, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;->this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-static {v7, v6, v3}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->access$100(Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;Ljava/lang/Exception;Z)V

    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    iget-object v6, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;->this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iput-boolean v3, v6, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened:Z

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;->this$1:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iput-boolean v5, v0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened:Z

    return-void
.end method
