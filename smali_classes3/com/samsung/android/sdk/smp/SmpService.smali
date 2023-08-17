.class public Lcom/samsung/android/sdk/smp/SmpService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "SmpService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/task/STask;->fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/sdk/smp/task/STask;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/taskhandler/STaskHandler;->handle(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    :cond_0
    return-void
.end method
