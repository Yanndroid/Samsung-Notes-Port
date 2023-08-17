.class Lcom/samsung/android/penup/internal/sso/SsoManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/penup/internal/sso/SsoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/internal/sso/SsoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-static {p2}, Lcom/samsung/android/penup/internal/sso/IPenupAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/penup/internal/sso/IPenupAuthenticator;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {p2}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$200(Lcom/samsung/android/penup/internal/sso/SsoManager;)Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->showProgressDialog(Z)V

    new-instance p2, Lcom/samsung/android/penup/internal/sso/SsoManager$1$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/penup/internal/sso/SsoManager$1$1;-><init>(Lcom/samsung/android/penup/internal/sso/SsoManager$1;)V

    invoke-interface {p1, p2}, Lcom/samsung/android/penup/internal/sso/IPenupAuthenticator;->registerCallback(Lcom/samsung/android/penup/internal/sso/IPenupAuthCallback;)Z

    iget-object p2, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {p2}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$600(Lcom/samsung/android/penup/internal/sso/SsoManager;)Lcom/samsung/android/penup/PenupClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/penup/PenupClient;->getClientId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$500(Lcom/samsung/android/penup/internal/sso/SsoManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$600(Lcom/samsung/android/penup/internal/sso/SsoManager;)Lcom/samsung/android/penup/PenupClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/penup/PenupClient;->getScopeList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$800(Lcom/samsung/android/penup/internal/sso/SsoManager;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/samsung/android/penup/internal/sso/IPenupAuthenticator;->requestAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    monitor-enter p1

    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {p2}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$000(Lcom/samsung/android/penup/internal/sso/SsoManager;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {p2}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$100(Lcom/samsung/android/penup/internal/sso/SsoManager;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {p2}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$200(Lcom/samsung/android/penup/internal/sso/SsoManager;)Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->dismissProgressDialog()V

    iget-object p2, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {p2}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$300(Lcom/samsung/android/penup/internal/sso/SsoManager;)V

    iget-object p2, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {p2}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$400(Lcom/samsung/android/penup/internal/sso/SsoManager;)Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    move-result-object p2

    const/16 v0, 0xbb9

    const-string v1, "The authentication error occurred."

    invoke-static {p2, v0, v1}, Lcom/samsung/android/penup/internal/sso/AuthUtil;->sendErrorResult(Lcom/samsung/android/penup/PenupClient$ConnectionCallback;ILjava/lang/String;)V

    :cond_0
    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$000(Lcom/samsung/android/penup/internal/sso/SsoManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$100(Lcom/samsung/android/penup/internal/sso/SsoManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$200(Lcom/samsung/android/penup/internal/sso/SsoManager;)Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$300(Lcom/samsung/android/penup/internal/sso/SsoManager;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$400(Lcom/samsung/android/penup/internal/sso/SsoManager;)Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    move-result-object v0

    const/16 v1, 0xbba

    const-string v2, "The authentication is canceled."

    invoke-static {v0, v1, v2}, Lcom/samsung/android/penup/internal/sso/AuthUtil;->sendErrorResult(Lcom/samsung/android/penup/PenupClient$ConnectionCallback;ILjava/lang/String;)V

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
