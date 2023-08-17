.class final Lcom/samsung/android/sdk/composer/voice/VoiceManager$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const-string p1, "VoiceManager"

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/16 v1, 0x64

    if-eq p2, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: MEDIA_ERROR_SERVER_DIED extra : "

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: MEDIA_ERROR_UNKNOWN extra : "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/16 p1, 0x1397

    if-ne p2, v0, :cond_2

    const/16 p1, 0x1396

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$3200(I)V

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$3100()V

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1400()V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->access$1302(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    const/4 p1, 0x0

    return p1
.end method
