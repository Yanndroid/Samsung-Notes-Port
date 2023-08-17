.class Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/recognition/SamsungRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ASRResultThread"
.end annotation


# instance fields
.field private currentId:I

.field private isRunning:Z

.field private recognizerLockObject:Ljava/lang/Object;

.field private tempFrameCount:I

.field public final synthetic this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;


# direct methods
.method public constructor <init>(Lcom/samsung/vsf/recognition/SamsungRecognizer;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->isRunning:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->recognizerLockObject:Ljava/lang/Object;

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    invoke-static {p1, v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1802(Lcom/samsung/vsf/recognition/SamsungRecognizer;Ljava/util/PriorityQueue;)Ljava/util/PriorityQueue;

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->currentId:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->tempFrameCount:I

    return-void
.end method

.method public static synthetic access$002(Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->currentId:I

    return p1
.end method

.method public static synthetic access$1700(Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;)I
    .locals 0

    iget p0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->tempFrameCount:I

    return p0
.end method

.method public static synthetic access$1702(Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->tempFrameCount:I

    return p1
.end method

.method private checkForNextElement()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1800(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Ljava/util/PriorityQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vsf/recognition/QueueItems;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In ASRResultThread Item\'s Priority :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/QueueItems;->getPriority()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tickcount"

    invoke-static {v3, v2}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->currentId:I

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/QueueItems;->getPriority()I

    move-result v0

    if-ne v2, v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->currentId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public addResponseToqueue(ILjava/util/Properties;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->isRunning:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->currentId:I

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1800(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Ljava/util/PriorityQueue;

    move-result-object v0

    new-instance v1, Lcom/samsung/vsf/recognition/QueueItems;

    invoke-direct {v1, p1, p2}, Lcom/samsung/vsf/recognition/QueueItems;-><init>(ILjava/util/Properties;)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->notifyRecognizerObject()V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "received id : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " currentId : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->currentId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "tickcount"

    invoke-static {v0, p2}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reject the response for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public notifyRecognizerObject()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->recognizerLockObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->recognizerLockObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 14

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->isRunning:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->recognizerLockObject:Ljava/lang/Object;

    if-eqz v0, :cond_c

    monitor-enter v0

    :try_start_0
    const-string v1, "tickcount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In ASRResultThread :currrenID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->currentId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "isRunning:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->isRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1800(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Ljava/util/PriorityQueue;

    move-result-object v1

    if-eqz v1, :cond_a

    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->isRunning:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1800(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Ljava/util/PriorityQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->checkForNextElement()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1800(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Ljava/util/PriorityQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vsf/recognition/QueueItems;

    if-eqz v1, :cond_8

    const-string v2, "tickcount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In ASRResultThread SamsungRecognizer@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/QueueItems;->getPriority()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " metadata:-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/QueueItems;->getASRResult()Ljava/util/Properties;

    move-result-object v4

    const-string v5, "metadata"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/vsf/util/SVoiceLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/QueueItems;->getPriority()I

    move-result v2

    iput v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->currentId:I

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/QueueItems;->getASRResult()Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Properties;->isEmpty()Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/QueueItems;->getASRResult()Ljava/util/Properties;

    move-result-object v2

    const-string v4, "startSequenceNumber"

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/QueueItems;->getASRResult()Ljava/util/Properties;

    move-result-object v4

    const-string v5, "startSequenceNumber"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "tickcount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start Seq number associated with the instance for which ASRresult is received : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/QueueItems;->getASRResult()Ljava/util/Properties;

    move-result-object v4

    const-string v5, "islast"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/QueueItems;->getASRResult()Ljava/util/Properties;

    move-result-object v7

    const-string v8, "metadata"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "nbest"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v8, "tickcount"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In ASRResultThread SamsungRecognizer@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/QueueItems;->getPriority()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " nbest:-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/vsf/util/SVoiceLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "numFrames"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "metrics"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v9, :cond_1

    const-string v9, "frameCount"

    :goto_2
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    :cond_1
    const-string v9, "metrics"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v9, "frameCount"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    :try_start_2
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "numSpeechFrames"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "firstSpeechFrame"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "lastSpeechFrame"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "tickcount"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In ASRResultThread SamsungRecognizer@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/QueueItems;->getPriority()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " numFrames: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " frameCount: "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", numSpeechFrames: "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "firstSpeechFrame: "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", lastSpeechFrame: "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v6, v5

    goto :goto_5

    :catch_0
    move-exception v6

    move-object v13, v6

    move v6, v5

    move-object v5, v13

    goto :goto_4

    :catch_1
    move-exception v5

    :goto_4
    :try_start_3
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_5
    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/QueueItems;->getASRResult()Ljava/util/Properties;

    move-result-object v5

    const-string v7, "itn"

    invoke-virtual {v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/QueueItems;->getASRResult()Ljava/util/Properties;

    move-result-object v6

    const-string v7, "itn"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-static {v5, v6, v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1900(Lcom/samsung/vsf/recognition/SamsungRecognizer;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_3
    iget-object v5, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0_to_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :goto_7
    const-string v5, "tickcount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In ASRResultThread SamsungRecognizer@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/QueueItems;->getPriority()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ITN value after processing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/QueueItems;->getASRResult()Ljava/util/Properties;

    move-result-object v5

    const-string v6, "itn"

    invoke-virtual {v5, v6, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$2000(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    move-result-object v2

    sget-object v5, Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;->END:Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/QueueItems;->getASRResult()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/vsf/recognition/Recognizer;->notifyResult(Ljava/util/Properties;)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$2000(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;->LAST:Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v1, v5}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->setRecState(Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;)V

    goto :goto_8

    :cond_5
    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$2000(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    move-result-object v2

    sget-object v5, Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;->END:Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    if-eq v2, v5, :cond_6

    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/QueueItems;->getASRResult()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/vsf/recognition/Recognizer;->notifyPartialResult(Ljava/util/Properties;)V

    :cond_6
    :goto_8
    const-string v1, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getSessionMode()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->currentId:I

    :goto_9
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->currentId:I

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getSessionMode()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->currentId:I

    goto :goto_9

    :cond_8
    const-string v1, "tickcount"

    const-string v2, "ASRResponseQueue is empty"

    invoke-static {v1, v2}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    iget-boolean v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->isRunning:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_b

    :try_start_4
    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->recognizerLockObject:Ljava/lang/Object;

    if-eqz v1, :cond_b

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    :catch_2
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_a

    :cond_a
    const-string v1, "tickcount"

    const-string v2, "ASRResponseQueue is null"

    invoke-static {v1, v2}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_a
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    :cond_c
    const-string v0, "tickcount"

    const-string v1, "Lock object is NULL. Exit ASRResultThread"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "tickcount"

    const-string v1, "Exiting ASRResultThread"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopASRResultThread()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->isRunning:Z

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->notifyRecognizerObject()V

    iput v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->currentId:I

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1800(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Ljava/util/PriorityQueue;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1800(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Ljava/util/PriorityQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v0, v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1802(Lcom/samsung/vsf/recognition/SamsungRecognizer;Ljava/util/PriorityQueue;)Ljava/util/PriorityQueue;

    :cond_0
    iput-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->recognizerLockObject:Ljava/lang/Object;

    return-void
.end method
