.class Lcom/samsung/vsf/util/PLMUtils$PdssReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/util/PLMUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PdssReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PLMUtils"

    const-string v1, "recieved PdssReceiver call back"

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const-string v1, "com.svoice.upload.WIPE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.svoice.upload.WIPE_ALL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string p2, "com.svoice.upload.UPLOAD_STARTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "recieved PLM upload started broadcast "

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string p2, "com.svoice.upload.UPLOAD_FINISHED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "recieved PLM upload finished broadcast"

    goto :goto_0

    :cond_2
    :goto_1
    const-string p1, "recieved pds wipe status broadcast"

    invoke-static {v0, p1}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v0, "success"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {}, Lcom/samsung/vsf/util/PLMUtils;->access$000()Lcom/samsung/vsf/util/PLMUtils$PdssCallbacks;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/samsung/vsf/util/PLMUtils;->access$000()Lcom/samsung/vsf/util/PLMUtils$PdssCallbacks;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/vsf/util/PLMUtils$PdssCallbacks;->onPdsWipe(Z)V

    :cond_3
    :goto_2
    return-void
.end method
