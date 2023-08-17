.class Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->startAudioRecorder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->a(Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->e(Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->f(Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;J)V

    const/16 v0, 0x140

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->c(Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;)Z

    move-result v4

    const-string v5, "RecognitionEngine"

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->a(Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;)Landroid/media/AudioRecord;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v0}, Landroid/media/AudioRecord;->read([BII)I

    move-result v4

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;

    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->d(Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;)Ljava/io/PipedOutputStream;

    move-result-object v6

    invoke-virtual {v6, v1, v2, v4}, Ljava/io/PipedOutputStream;->write([BII)V

    add-int/2addr v3, v4

    const v4, 0x4e200

    rem-int v4, v3, v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "total byte size "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startAudioRecorder recording error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "total sent byte size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->d(Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;)Ljava/io/PipedOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;->b(Lcom/samsung/android/support/senl/nt/stt/base/record/RecognitionEngine;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const-string v0, "recording stopped"

    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAudioRecorder close stream error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
