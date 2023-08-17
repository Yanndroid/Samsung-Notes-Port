.class Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator$1;->this$0:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OCRServiceCreator"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator$1;->this$0:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    invoke-static {p2}, Lcom/samsung/android/sdk/ocr/service/IOCRService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/ocr/service/IOCRService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->access$002(Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;Lcom/samsung/android/sdk/ocr/service/IOCRService;)Lcom/samsung/android/sdk/ocr/service/IOCRService;

    iget-object p1, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator$1;->this$0:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    invoke-static {p1}, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->access$100(Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator$1;->this$0:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->access$202(Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "connected, signal all : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator$1;->this$0:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    invoke-static {p2}, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->access$300(Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;)Landroid/content/ServiceConnection;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator$1;->this$0:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    invoke-static {p1}, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->access$400(Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator$1;->this$0:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    invoke-static {p1}, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->access$100(Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator$1;->this$0:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    invoke-static {p2}, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->access$100(Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OCRServiceCreator"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator$1;->this$0:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    invoke-static {p1}, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->access$100(Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator$1;->this$0:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->access$202(Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnected, signal all : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator$1;->this$0:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    invoke-static {v1}, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->access$300(Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator$1;->this$0:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    invoke-static {p1}, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->access$400(Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator$1;->this$0:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    invoke-static {p1}, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->access$100(Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object p1, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator$1;->this$0:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->access$002(Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;Lcom/samsung/android/sdk/ocr/service/IOCRService;)Lcom/samsung/android/sdk/ocr/service/IOCRService;

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator$1;->this$0:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    invoke-static {v0}, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->access$100(Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
