.class final Lcom/samsung/android/sdk/composer/voice/VoiceManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/composer/voice/VoiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/16 v1, 0x138a

    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$200(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPaused()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$700()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onResumed()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$800()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStarted()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$500()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStopped()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$600()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
