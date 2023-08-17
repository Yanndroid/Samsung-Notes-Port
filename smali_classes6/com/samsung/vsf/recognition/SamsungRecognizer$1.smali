.class Lcom/samsung/vsf/recognition/SamsungRecognizer$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/recognition/SamsungRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;


# direct methods
.method public constructor <init>(Lcom/samsung/vsf/recognition/SamsungRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$1;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage called for Instance # : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget v1, v1, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tickcount"

    invoke-static {v1, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$1;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$200(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove Instance # : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget v2, v2, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$1;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$200(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Ljava/util/Map;

    move-result-object v0

    iget p1, p1, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
