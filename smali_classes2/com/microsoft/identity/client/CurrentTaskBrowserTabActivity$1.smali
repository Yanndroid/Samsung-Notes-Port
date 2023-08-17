.class Lcom/microsoft/identity/client/CurrentTaskBrowserTabActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/CurrentTaskBrowserTabActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/client/CurrentTaskBrowserTabActivity;

.field public final synthetic val$methodTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/CurrentTaskBrowserTabActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/CurrentTaskBrowserTabActivity$1;->this$0:Lcom/microsoft/identity/client/CurrentTaskBrowserTabActivity;

    iput-object p2, p0, Lcom/microsoft/identity/client/CurrentTaskBrowserTabActivity$1;->val$methodTag:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object p1, p0, Lcom/microsoft/identity/client/CurrentTaskBrowserTabActivity$1;->this$0:Lcom/microsoft/identity/client/CurrentTaskBrowserTabActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/identity/client/CurrentTaskBrowserTabActivity$1;->this$0:Lcom/microsoft/identity/client/CurrentTaskBrowserTabActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    move v0, p1

    goto :goto_1

    :catch_0
    iget-object p1, p0, Lcom/microsoft/identity/client/CurrentTaskBrowserTabActivity$1;->val$methodTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package name not found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/identity/client/CurrentTaskBrowserTabActivity$1;->this$0:Lcom/microsoft/identity/client/CurrentTaskBrowserTabActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/microsoft/identity/client/CurrentTaskBrowserTabActivity$1;->this$0:Lcom/microsoft/identity/client/CurrentTaskBrowserTabActivity;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->finishActivity(I)V

    iget-object p1, p0, Lcom/microsoft/identity/client/CurrentTaskBrowserTabActivity$1;->this$0:Lcom/microsoft/identity/client/CurrentTaskBrowserTabActivity;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void
.end method
