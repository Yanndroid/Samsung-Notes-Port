.class Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/audio/AudioProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReleaseHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/vsf/audio/AudioProcessor;


# direct methods
.method private constructor <init>(Lcom/samsung/vsf/audio/AudioProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;->this$0:Lcom/samsung/vsf/audio/AudioProcessor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/vsf/audio/AudioProcessor;Lcom/samsung/vsf/audio/AudioProcessor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;-><init>(Lcom/samsung/vsf/audio/AudioProcessor;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;->this$0:Lcom/samsung/vsf/audio/AudioProcessor;

    invoke-static {p1, v0}, Lcom/samsung/vsf/audio/AudioProcessor;->access$202(Lcom/samsung/vsf/audio/AudioProcessor;Z)Z

    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;->this$0:Lcom/samsung/vsf/audio/AudioProcessor;

    invoke-static {p1}, Lcom/samsung/vsf/audio/AudioProcessor;->access$400(Lcom/samsung/vsf/audio/AudioProcessor;)Lcom/samsung/vsf/audio/IAudioEncoder;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;->this$0:Lcom/samsung/vsf/audio/AudioProcessor;

    invoke-static {p1}, Lcom/samsung/vsf/audio/AudioProcessor;->access$300(Lcom/samsung/vsf/audio/AudioProcessor;)Lcom/samsung/vsf/audio/AudioProcessorConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->shouldPerformEncoding()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;->this$0:Lcom/samsung/vsf/audio/AudioProcessor;

    invoke-static {p1}, Lcom/samsung/vsf/audio/AudioProcessor;->access$300(Lcom/samsung/vsf/audio/AudioProcessor;)Lcom/samsung/vsf/audio/AudioProcessorConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/vsf/audio/EncoderFactory;->getEncoderInstance(Lcom/samsung/vsf/audio/AudioProcessorConfig;)Lcom/samsung/vsf/audio/IAudioEncoder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/vsf/audio/AudioProcessor;->access$402(Lcom/samsung/vsf/audio/AudioProcessor;Lcom/samsung/vsf/audio/IAudioEncoder;)Lcom/samsung/vsf/audio/IAudioEncoder;

    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;->this$0:Lcom/samsung/vsf/audio/AudioProcessor;

    invoke-static {p1}, Lcom/samsung/vsf/audio/AudioProcessor;->access$400(Lcom/samsung/vsf/audio/AudioProcessor;)Lcom/samsung/vsf/audio/IAudioEncoder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;->this$0:Lcom/samsung/vsf/audio/AudioProcessor;

    invoke-static {v0}, Lcom/samsung/vsf/audio/AudioProcessor;->access$300(Lcom/samsung/vsf/audio/AudioProcessor;)Lcom/samsung/vsf/audio/AudioProcessorConfig;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/vsf/audio/IAudioEncoder;->init(Lcom/samsung/vsf/audio/AudioProcessorConfig;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;->this$0:Lcom/samsung/vsf/audio/AudioProcessor;

    invoke-static {p1, v1}, Lcom/samsung/vsf/audio/AudioProcessor;->access$102(Lcom/samsung/vsf/audio/AudioProcessor;Z)Z

    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;->this$0:Lcom/samsung/vsf/audio/AudioProcessor;

    invoke-static {p1, v1}, Lcom/samsung/vsf/audio/AudioProcessor;->access$202(Lcom/samsung/vsf/audio/AudioProcessor;Z)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;->this$0:Lcom/samsung/vsf/audio/AudioProcessor;

    invoke-static {p1}, Lcom/samsung/vsf/audio/AudioProcessor;->access$100(Lcom/samsung/vsf/audio/AudioProcessor;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;->this$0:Lcom/samsung/vsf/audio/AudioProcessor;

    invoke-static {p1}, Lcom/samsung/vsf/audio/AudioProcessor;->access$200(Lcom/samsung/vsf/audio/AudioProcessor;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;->this$0:Lcom/samsung/vsf/audio/AudioProcessor;

    invoke-static {p1}, Lcom/samsung/vsf/audio/AudioProcessor;->access$300(Lcom/samsung/vsf/audio/AudioProcessor;)Lcom/samsung/vsf/audio/AudioProcessorConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->shouldPerformEncoding()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;->this$0:Lcom/samsung/vsf/audio/AudioProcessor;

    invoke-static {p1}, Lcom/samsung/vsf/audio/AudioProcessor;->access$400(Lcom/samsung/vsf/audio/AudioProcessor;)Lcom/samsung/vsf/audio/IAudioEncoder;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;->this$0:Lcom/samsung/vsf/audio/AudioProcessor;

    invoke-static {p1}, Lcom/samsung/vsf/audio/AudioProcessor;->access$400(Lcom/samsung/vsf/audio/AudioProcessor;)Lcom/samsung/vsf/audio/IAudioEncoder;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/vsf/audio/IAudioEncoder;->destroy()V

    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;->this$0:Lcom/samsung/vsf/audio/AudioProcessor;

    invoke-static {p1, v1}, Lcom/samsung/vsf/audio/AudioProcessor;->access$402(Lcom/samsung/vsf/audio/AudioProcessor;Lcom/samsung/vsf/audio/IAudioEncoder;)Lcom/samsung/vsf/audio/IAudioEncoder;

    :cond_4
    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;->this$0:Lcom/samsung/vsf/audio/AudioProcessor;

    invoke-static {p1, v1}, Lcom/samsung/vsf/audio/AudioProcessor;->access$502(Lcom/samsung/vsf/audio/AudioProcessor;Lcom/samsung/vsf/recognition/Recognizer;)Lcom/samsung/vsf/recognition/Recognizer;

    iget-object p1, p0, Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;->this$0:Lcom/samsung/vsf/audio/AudioProcessor;

    invoke-static {p1, v0}, Lcom/samsung/vsf/audio/AudioProcessor;->access$202(Lcom/samsung/vsf/audio/AudioProcessor;Z)Z

    :goto_0
    return-void

    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isInitDone : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/vsf/audio/AudioProcessor$ReleaseHandler;->this$0:Lcom/samsung/vsf/audio/AudioProcessor;

    invoke-static {v0}, Lcom/samsung/vsf/audio/AudioProcessor;->access$200(Lcom/samsung/vsf/audio/AudioProcessor;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioProcessor"

    invoke-static {v0, p1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
