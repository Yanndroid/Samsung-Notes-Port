.class Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;
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

.field public final synthetic this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->mMaxDuration:I

    iput p1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->mMaxFileSize:I

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    invoke-static {p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->access$000(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->mMaxDuration:I

    iget v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->mMaxFileSize:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->prepareRecording(Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    invoke-static {p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->access$100(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    invoke-static {p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->access$200(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)V

    iget-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    invoke-static {p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->access$300(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    invoke-virtual {p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->reset()V

    iget-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    invoke-virtual {p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->release()V

    iget-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    iput-object v0, p1, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorderClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    invoke-static {v0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->access$400(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;Ljava/lang/Throwable;)V

    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->doInBackground([Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "SdlMediaRecorder"

    if-nez p1, :cond_1

    const-string p1, "onPostExecute: fail"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onError()V

    :cond_0
    return-void

    :cond_1
    const-string p1, "onPostExecute: success"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onStarted()V

    :cond_2
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

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

    invoke-virtual {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
