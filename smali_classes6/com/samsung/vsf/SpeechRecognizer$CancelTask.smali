.class Lcom/samsung/vsf/SpeechRecognizer$CancelTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/samsung/vsf/recognition/Recognizer;",
        "Ljava/lang/Void;",
        "Lcom/samsung/vsf/recognition/Recognizer;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/samsung/vsf/recognition/Recognizer;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/vsf/SpeechRecognizer$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/vsf/SpeechRecognizer$CancelTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Lcom/samsung/vsf/recognition/Recognizer;)Lcom/samsung/vsf/recognition/Recognizer;
    .locals 1

    iget-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$CancelTask;->result:Lcom/samsung/vsf/recognition/Recognizer;

    if-eqz p1, :cond_0

    const-string p1, "tickcount"

    const-string v0, "SamsungSpeechRecognizer : CancelTask : calling abort from doInBackground"

    invoke-static {p1, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$CancelTask;->result:Lcom/samsung/vsf/recognition/Recognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/Recognizer;->abort()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$CancelTask;->result:Lcom/samsung/vsf/recognition/Recognizer;

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lcom/samsung/vsf/recognition/Recognizer;

    invoke-virtual {p0, p1}, Lcom/samsung/vsf/SpeechRecognizer$CancelTask;->doInBackground([Lcom/samsung/vsf/recognition/Recognizer;)Lcom/samsung/vsf/recognition/Recognizer;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lcom/samsung/vsf/recognition/Recognizer;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$CancelTask;->result:Lcom/samsung/vsf/recognition/Recognizer;

    if-eqz p1, :cond_0

    const-string p1, "tickcount"

    const-string v0, "SamsungSpeechRecognizer : CancelTask : posting cancel command"

    invoke-static {p1, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$CancelTask;->result:Lcom/samsung/vsf/recognition/Recognizer;

    new-instance v0, Lcom/samsung/vsf/recognition/cmds/CancelCmd;

    invoke-direct {v0}, Lcom/samsung/vsf/recognition/cmds/CancelCmd;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/vsf/recognition/Recognizer;->postCommand2(Lcom/samsung/vsf/recognition/Cmd;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$CancelTask;->result:Lcom/samsung/vsf/recognition/Recognizer;

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/vsf/recognition/Recognizer;

    invoke-virtual {p0, p1}, Lcom/samsung/vsf/SpeechRecognizer$CancelTask;->onPostExecute(Lcom/samsung/vsf/recognition/Recognizer;)V

    return-void
.end method

.method public setRecognizer(Lcom/samsung/vsf/recognition/Recognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$CancelTask;->result:Lcom/samsung/vsf/recognition/Recognizer;

    return-void
.end method
