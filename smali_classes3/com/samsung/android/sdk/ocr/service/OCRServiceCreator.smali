.class public Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "OCRServiceCreator"


# instance fields
.field private final mConnectionCondition:Ljava/util/concurrent/locks/Condition;

.field private final mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mContext:Landroid/content/Context;

.field private mIOCRService:Lcom/samsung/android/sdk/ocr/service/IOCRService;

.field private mIsConnected:Z

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mConnectionCondition:Ljava/util/concurrent/locks/Condition;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mIsConnected:Z

    new-instance v0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator$1;-><init>(Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$002(Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;Lcom/samsung/android/sdk/ocr/service/IOCRService;)Lcom/samsung/android/sdk/ocr/service/IOCRService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mIOCRService:Lcom/samsung/android/sdk/ocr/service/IOCRService;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mIsConnected:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mConnectionCondition:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method private getIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "sdk.ocr.service.intent.action.BIND_OCR_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.sdk.ocr"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close() : connected? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mIsConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OCRServiceCreator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mIsConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mContext:Landroid/content/Context;

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public connect()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mIsConnected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mIsConnected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mConnectionCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getService()Lcom/samsung/android/sdk/ocr/service/IOCRService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->mIOCRService:Lcom/samsung/android/sdk/ocr/service/IOCRService;

    return-object v0
.end method
