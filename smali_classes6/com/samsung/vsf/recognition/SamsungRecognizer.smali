.class public Lcom/samsung/vsf/recognition/SamsungRecognizer;
.super Lcom/samsung/vsf/recognition/Recognizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;,
        Lcom/samsung/vsf/recognition/SamsungRecognizer$CancelThread;,
        Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;,
        Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceObjectDestroyable;,
        Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;,
        Lcom/samsung/vsf/recognition/SamsungRecognizer$State;
    }
.end annotation


# static fields
.field private static final REMOVE_INSTANCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "tickcount"

.field private static final TAGL:Ljava/lang/String; = "ASRProfiling"


# instance fields
.field private asrResponseQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/samsung/vsf/recognition/QueueItems;",
            ">;"
        }
    .end annotation
.end field

.field private deviceId:Ljava/lang/String;

.field private epdOffset:I

.field private firstSend:Z

.field private instanceList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mASRResultThread:Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;

.field private mAudioProcessor:Lcom/samsung/vsf/audio/AudioProcessor;

.field private mAudioRecorder:Lcom/samsung/vsf/audio/AudioRecorder;

.field private mCancelled:Z

.field private mCtx:Landroid/content/Context;

.field private mCurInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

.field private mHandler:Landroid/os/Handler;

.field private mInstId:I

.field private mNextInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

.field private mRecState:Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

.field private mState:Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

.field private total:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/vsf/SpeechRecognizer$Config;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/vsf/recognition/Recognizer;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/vsf/SpeechRecognizer$Config;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->total:I

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->deviceId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->firstSend:Z

    new-instance p3, Lcom/samsung/vsf/recognition/SamsungRecognizer$1;

    invoke-direct {p3, p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$1;-><init>(Lcom/samsung/vsf/recognition/SamsungRecognizer;)V

    iput-object p3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->getAndroidContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/vsf/util/DeviceInfo;->getInstance(Landroid/content/Context;)Lcom/samsung/vsf/util/DeviceInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/vsf/util/DeviceInfo;->getUniqueDeviceIdentifier()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->deviceId:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->deviceId:Ljava/lang/String;

    div-int/lit8 v2, p3, 0x2

    invoke-virtual {v1, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->deviceId:Ljava/lang/String;

    invoke-virtual {p3, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->deviceId:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCtx:Landroid/content/Context;

    sget-object p1, Lcom/samsung/vsf/recognition/SamsungRecognizer$State;->IDLE:Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    invoke-virtual {p0, p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->setState(Lcom/samsung/vsf/recognition/SamsungRecognizer$State;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->instanceList:Ljava/util/Map;

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->newSVoiceInstance()V

    new-instance p1, Lcom/samsung/vsf/recognition/SamsungCmdHandler;

    invoke-direct {p1, p0}, Lcom/samsung/vsf/recognition/SamsungCmdHandler;-><init>(Lcom/samsung/vsf/recognition/SamsungRecognizer;)V

    invoke-virtual {p0, p1}, Lcom/samsung/vsf/recognition/Recognizer;->setCmdHandler(Lcom/samsung/vsf/recognition/Recognizer$CmdHandler;)V

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->startProcessingAudio()V

    new-instance p1, Lcom/samsung/vsf/audio/AudioRecorder;

    invoke-direct {p1, p0}, Lcom/samsung/vsf/audio/AudioRecorder;-><init>(Lcom/samsung/vsf/recognition/Recognizer;)V

    iput-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mAudioRecorder:Lcom/samsung/vsf/audio/AudioRecorder;

    const-string p2, "Thread-AudioRecorder"

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mAudioRecorder:Lcom/samsung/vsf/audio/AudioRecorder;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;

    invoke-direct {p1, p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;-><init>(Lcom/samsung/vsf/recognition/SamsungRecognizer;)V

    iput-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mASRResultThread:Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;

    const-string p2, "Thread-ASRResultThread"

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mASRResultThread:Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const-string p1, "tickcount"

    const-string p2, "SDK Version:: 20191001.1.35"

    invoke-static {p1, p2}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->checkIfCancelledCalledAlready()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1100(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Lcom/samsung/vsf/audio/AudioProcessor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mAudioProcessor:Lcom/samsung/vsf/audio/AudioProcessor;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->firstSend:Z

    return p0
.end method

.method public static synthetic access$1202(Lcom/samsung/vsf/recognition/SamsungRecognizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->firstSend:Z

    return p1
.end method

.method public static synthetic access$1300(Lcom/samsung/vsf/recognition/SamsungRecognizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->setCancelled()V

    return-void
.end method

.method public static synthetic access$1400(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCtx:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/samsung/vsf/recognition/SamsungRecognizer;)I
    .locals 0

    iget p0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->total:I

    return p0
.end method

.method public static synthetic access$1602(Lcom/samsung/vsf/recognition/SamsungRecognizer;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->total:I

    return p1
.end method

.method public static synthetic access$1800(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Ljava/util/PriorityQueue;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->asrResponseQueue:Ljava/util/PriorityQueue;

    return-object p0
.end method

.method public static synthetic access$1802(Lcom/samsung/vsf/recognition/SamsungRecognizer;Ljava/util/PriorityQueue;)Ljava/util/PriorityQueue;
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->asrResponseQueue:Ljava/util/PriorityQueue;

    return-object p1
.end method

.method public static synthetic access$1900(Lcom/samsung/vsf/recognition/SamsungRecognizer;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->replaceITNValues(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->instanceList:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->getRecState()Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mASRResultThread:Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/vsf/recognition/SamsungRecognizer;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->checkIfCancelledCalledParallely(Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$602(Lcom/samsung/vsf/recognition/SamsungRecognizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCancelled:Z

    return p1
.end method

.method public static synthetic access$700(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method private checkIfCancelledCalledAlready()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCancelled:Z

    return v0
.end method

.method private checkIfCancelledCalledParallely(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCancelled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private closeAllInstances()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start Total Instances : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->instanceList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tickcount"

    invoke-static {v1, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->instanceList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeAllInstances CALLED for instance # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closing instance # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->close()Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End Total Instances : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->instanceList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->instanceList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->instanceList:Ljava/util/Map;

    return-void
.end method

.method private getNumber(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getRecState()Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mRecState:Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    return-object v0
.end method

.method private newSVoiceInstance()V
    .locals 3

    new-instance v0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mInstId:I

    invoke-direct {v0, p0, v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;-><init>(Lcom/samsung/vsf/recognition/SamsungRecognizer;I)V

    iput-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCurInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->instanceList:Ljava/util/Map;

    iget v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mInstId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCurInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mInstId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mInstId:I

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getSessionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mInstId:I

    invoke-direct {v0, p0, v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;-><init>(Lcom/samsung/vsf/recognition/SamsungRecognizer;I)V

    iput-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mNextInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->instanceList:Ljava/util/Map;

    iget v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mInstId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mNextInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mInstId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mInstId:I

    :cond_0
    return-void
.end method

.method private replaceITNValues(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replace ITN VALUES:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " seqNumber :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tickcount"

    invoke-static {v1, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->getNumber(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v3, p2, -0x1

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    const-string v2, "_to_"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v2, " "

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private replaceITNValues(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replace ITN VALUES:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalFrames::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isLast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tickcount"

    invoke-static {v1, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->getNumber(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/16 v2, 0x32

    if-lt p2, v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->getRecState()Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    move-result-object v2

    sget-object v3, Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;->START:Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    if-ne v2, v3, :cond_0

    add-int/lit8 p2, p2, -0x32

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->total:I

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_1

    const-string v4, "_to_"

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_2

    const-string v4, " "

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mASRResultThread:Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v3, p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->access$1702(Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;I)I

    if-eqz p3, :cond_4

    iget p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->total:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->total:I

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mASRResultThread:Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;

    invoke-static {p1, v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->access$1702(Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;I)I

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "offset to be added for next ITN value:: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->total:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private reset()V
    .locals 1

    sget-object v0, Lcom/samsung/vsf/recognition/SamsungRecognizer$State;->IDLE:Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    invoke-virtual {p0, v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->setState(Lcom/samsung/vsf/recognition/SamsungRecognizer$State;)V

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->clearAudioQueue()V

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->clearCmds()V

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->clearCancelled()V

    return-void
.end method

.method private setCancelled()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCancelled:Z

    if-nez v0, :cond_0

    const-string v0, "tickcount"

    const-string v1, "Cancel flag set"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCancelled:Z

    return-void
.end method

.method private startProcessingAudio()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mAudioProcessor:Lcom/samsung/vsf/audio/AudioProcessor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "tickcount"

    const-string v1, "AudioProcessor is non null and alive!!"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcom/samsung/vsf/audio/AudioProcessorConfig;

    invoke-direct {v0}, Lcom/samsung/vsf/audio/AudioProcessorConfig;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getIsEnableNoiseSeparation()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->enableNS(Z)Lcom/samsung/vsf/audio/AudioProcessorConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getIsSpeechDetectionRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->enableSpeechDetection(Z)Lcom/samsung/vsf/audio/AudioProcessorConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getEPDThresholdDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->setEPDThresholdDuration(I)Lcom/samsung/vsf/audio/AudioProcessorConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getEncodingType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->enableEncoding(I)Lcom/samsung/vsf/audio/AudioProcessorConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getSamplingRate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->setSamplingRate(I)Lcom/samsung/vsf/audio/AudioProcessorConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getIsRecordedBufferNeeded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->setIsRecordedBufferRequired(Z)Lcom/samsung/vsf/audio/AudioProcessorConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getIsRecordingRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->enableRecording(Z)Lcom/samsung/vsf/audio/AudioProcessorConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getIsRMSrequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->enableRMS(Z)Lcom/samsung/vsf/audio/AudioProcessorConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getIsPCMDumpRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->setIsPCMDumpRequired(Z)Lcom/samsung/vsf/audio/AudioProcessorConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getIsDumpRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->setIsDumpRequired(Z)Lcom/samsung/vsf/audio/AudioProcessorConfig;

    move-result-object v0

    new-instance v1, Lcom/samsung/vsf/audio/AudioProcessor;

    invoke-direct {v1, v0, p0}, Lcom/samsung/vsf/audio/AudioProcessor;-><init>(Lcom/samsung/vsf/audio/AudioProcessorConfig;Lcom/samsung/vsf/recognition/Recognizer;)V

    iput-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mAudioProcessor:Lcom/samsung/vsf/audio/AudioProcessor;

    const-string v0, "Thread-AudioProcessor-sdk"

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mAudioProcessor:Lcom/samsung/vsf/audio/AudioProcessor;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_1
    return-void
.end method

.method private stopProcessingAudio()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mAudioProcessor:Lcom/samsung/vsf/audio/AudioProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioProcessor;->exit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mAudioProcessor:Lcom/samsung/vsf/audio/AudioProcessor;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->clearAudioQueue()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    const-string v0, "tickcount"

    const-string v1, "abort()"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCurInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isClosing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCurInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget-boolean v1, v1, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isProcessing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCurInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->cancel()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mNextInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isClosing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mNextInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget-boolean v1, v1, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isProcessing:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mNextInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->cancel()Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mASRResultThread:Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->access$002(Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;I)I

    :cond_2
    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->asrResponseQueue:Ljava/util/PriorityQueue;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    :cond_3
    return-void
.end method

.method public clearCancelled()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCancelled:Z

    if-eqz v0, :cond_0

    const-string v0, "tickcount"

    const-string v1, "Cancel flag cleared"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCancelled:Z

    return-void
.end method

.method public createInstanceIfDestroyed()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCurInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->newSVoiceInstance()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->asrResponseQueue:Ljava/util/PriorityQueue;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mASRResultThread:Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCurInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget v1, v1, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-static {v0, v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->access$002(Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;I)I

    :cond_3
    return-void
.end method

.method public getCurrentID()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCurInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget v0, v0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    return v0
.end method

.method public getCurrentSessionID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCurInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget-object v0, v0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/samsung/vsf/recognition/SamsungRecognizer$State;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mState:Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    return-object v0
.end method

.method public notifyCCLError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCurInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, v1, p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->access$100(Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;Ljava/lang/Exception;Z)V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCurInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened:Z

    :cond_0
    return-void
.end method

.method public openNextInstance()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mNextInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mNextInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpening()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mNextInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->openAsync()V

    :cond_0
    return-void
.end method

.method public setRecState(Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mRecState:Lcom/samsung/vsf/recognition/SamsungRecognizer$RecState;

    return-void
.end method

.method public setStartSeqNumber(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCurInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-static {v0, p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->access$300(Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;I)V

    return-void
.end method

.method public setState(Lcom/samsung/vsf/recognition/SamsungRecognizer$State;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mState:Lcom/samsung/vsf/recognition/SamsungRecognizer$State;

    return-void
.end method

.method public shutdown()V
    .locals 2

    const-string v0, "tickcount"

    const-string v1, "Shutting down recognizer"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->stopProcessingAudio()V

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->reset()V

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->closeAllInstances()V

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->stopRecordingIfRequired()V

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mAudioRecorder:Lcom/samsung/vsf/audio/AudioRecorder;

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioRecorder;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mAudioRecorder:Lcom/samsung/vsf/audio/AudioRecorder;

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mASRResultThread:Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->stopASRResultThread()V

    iput-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mASRResultThread:Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->total:I

    iput-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCurInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iput-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mNextInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-super {p0}, Lcom/samsung/vsf/recognition/Recognizer;->shutdown()V

    return-void
.end method

.method public speechTimeLimitExceeded()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCurInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isSpeechTimeLimitExceeded()Z

    move-result v0

    return v0
.end method

.method public startRecordingIfRequired()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getIsRecordingRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mAudioRecorder:Lcom/samsung/vsf/audio/AudioRecorder;

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioRecorder;->startRecording()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mAudioProcessor:Lcom/samsung/vsf/audio/AudioProcessor;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/vsf/audio/AudioProcessor;->init()V

    :cond_0
    if-nez v0, :cond_2

    const-string v1, "tickcount"

    const-string v2, "Notifying ERROR_RECORDER"

    invoke-static {v1, v2}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "recorder_error"

    invoke-virtual {p0, v1}, Lcom/samsung/vsf/recognition/Recognizer;->notifyErrorString(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public stopRecordingIfRequired()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mAudioRecorder:Lcom/samsung/vsf/audio/AudioRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mAudioRecorder:Lcom/samsung/vsf/audio/AudioRecorder;

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioRecorder;->stopRecording()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mASRResultThread:Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->notifyRecognizerObject()V

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mAudioProcessor:Lcom/samsung/vsf/audio/AudioProcessor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/vsf/audio/AudioProcessor;->reset()V

    :cond_1
    return-void
.end method

.method public svoiceOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCurInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->open()Z

    move-result v0

    return v0
.end method

.method public svoiceOpenAsync()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCurInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->openAsync()V

    return-void
.end method

.method public svoicePrepare()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCurInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->prepare()Z

    move-result v0

    return v0
.end method

.method public svoiceProcess(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getEPDThresholdDuration()I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->epdOffset:I

    :cond_1
    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCurInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->process()Z

    move-result p1

    return p1
.end method

.method public svoiceSend([B)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCurInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->send([B)Z

    move-result p1

    return p1
.end method

.method public switchInstance()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getSessionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mNextInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iput-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mCurInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    new-instance v0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mInstId:I

    invoke-direct {v0, p0, v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;-><init>(Lcom/samsung/vsf/recognition/SamsungRecognizer;I)V

    iput-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mNextInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->instanceList:Ljava/util/Map;

    iget v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mInstId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mNextInstance:Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mInstId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer;->mInstId:I

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->openNextInstance()V

    :cond_0
    return-void
.end method
