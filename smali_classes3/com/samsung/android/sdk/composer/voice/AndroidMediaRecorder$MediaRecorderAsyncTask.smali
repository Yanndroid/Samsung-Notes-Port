.class Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaRecorderAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

.field public mMaxDuration:I

.field public mMaxFileSize:I

.field private mState:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

.field public final synthetic this$0:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->mMaxDuration:I

    iput p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->mMaxFileSize:I

    sget-object p1, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;->IDLE:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->mState:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Ljava/lang/Boolean;
    .locals 4

    const-string v0, "AndroidMediaRecorder"

    const-string v1, "doInBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->mState:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;->READY:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    if-eq v0, v1, :cond_0

    const-string p1, "AndroidMediaRecorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid RecorderTask state("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->mState:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "). Skip doInBackground."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    monitor-exit p0

    return-object p1

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;->DO_IN_BACKGROUND:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->mState:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->access$000(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->mMaxDuration:I

    iget v3, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->mMaxFileSize:I

    invoke-virtual {p1, v1, v2, v3}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->prepareRecording(Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->access$100(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->access$300(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)Landroid/media/MediaRecorder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->access$200(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->access$300(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)Landroid/media/MediaRecorder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->access$400(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->release()V

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->access$302(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    :goto_0
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    sget-object p1, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;->ON_POST_EXECUTE:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->mState:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->doInBackground([Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onCancelled()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method public onCancelled(Ljava/lang/Boolean;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->mState:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;->ON_POST_EXECUTE:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    const-string v2, "AndroidMediaRecorder"

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid RecorderTask state("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->mState:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "). Skip onPostExecute."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "onPostExecute: fail"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onError()V

    goto :goto_0

    :cond_1
    const-string p1, "onPostExecute: success"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->access$500(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->access$600(J)V

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    invoke-interface {p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onStarted()V

    :cond_2
    :goto_0
    sget-object p1, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;->IDLE:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->mState:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public run(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const-string p1, "AndroidMediaRecorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "previous RecorderTask is not finished("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "). Skip run."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;->READY:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->mState:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;->access$700(Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v3, v1, [Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    aput-object p1, v3, v2

    invoke-virtual {p0, v0, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
