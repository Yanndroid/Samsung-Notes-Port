.class Lcom/samsung/android/penup/internal/sso/SsoManager$1$1;
.super Lcom/samsung/android/penup/internal/sso/IPenupAuthCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/penup/internal/sso/SsoManager$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/penup/internal/sso/SsoManager$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/internal/sso/SsoManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1$1;->this$1:Lcom/samsung/android/penup/internal/sso/SsoManager$1;

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/sso/IPenupAuthCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1$1;->this$1:Lcom/samsung/android/penup/internal/sso/SsoManager$1;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1$1;->this$1:Lcom/samsung/android/penup/internal/sso/SsoManager$1;

    iget-object v1, v1, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$000(Lcom/samsung/android/penup/internal/sso/SsoManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1$1;->this$1:Lcom/samsung/android/penup/internal/sso/SsoManager$1;

    iget-object v1, v1, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$100(Lcom/samsung/android/penup/internal/sso/SsoManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1$1;->this$1:Lcom/samsung/android/penup/internal/sso/SsoManager$1;

    iget-object v1, v1, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$200(Lcom/samsung/android/penup/internal/sso/SsoManager;)Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->dismissProgressDialog()V

    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1$1;->this$1:Lcom/samsung/android/penup/internal/sso/SsoManager$1;

    iget-object v1, v1, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$300(Lcom/samsung/android/penup/internal/sso/SsoManager;)V

    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1$1;->this$1:Lcom/samsung/android/penup/internal/sso/SsoManager$1;

    iget-object v1, v1, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$400(Lcom/samsung/android/penup/internal/sso/SsoManager;)Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    move-result-object v1

    const/16 v2, 0xbba

    const-string v3, "The authentication is canceled."

    invoke-static {v1, v2, v3}, Lcom/samsung/android/penup/internal/sso/AuthUtil;->sendErrorResult(Lcom/samsung/android/penup/PenupClient$ConnectionCallback;ILjava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCompleted(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1$1;->this$1:Lcom/samsung/android/penup/internal/sso/SsoManager$1;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1$1;->this$1:Lcom/samsung/android/penup/internal/sso/SsoManager$1;

    iget-object v1, v1, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$000(Lcom/samsung/android/penup/internal/sso/SsoManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1$1;->this$1:Lcom/samsung/android/penup/internal/sso/SsoManager$1;

    iget-object v1, v1, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$100(Lcom/samsung/android/penup/internal/sso/SsoManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1$1;->this$1:Lcom/samsung/android/penup/internal/sso/SsoManager$1;

    iget-object v1, v1, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$200(Lcom/samsung/android/penup/internal/sso/SsoManager;)Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->dismissProgressDialog()V

    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1$1;->this$1:Lcom/samsung/android/penup/internal/sso/SsoManager$1;

    iget-object v1, v1, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$300(Lcom/samsung/android/penup/internal/sso/SsoManager;)V

    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1$1;->this$1:Lcom/samsung/android/penup/internal/sso/SsoManager$1;

    iget-object v1, v1, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$500(Lcom/samsung/android/penup/internal/sso/SsoManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0xbb9

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1$1;->this$1:Lcom/samsung/android/penup/internal/sso/SsoManager$1;

    iget-object v1, v1, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$600(Lcom/samsung/android/penup/internal/sso/SsoManager;)Lcom/samsung/android/penup/PenupClient;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/penup/internal/sso/AuthUtil;->parseRedirectUrl(Ljava/lang/String;Lcom/samsung/android/penup/PenupClient;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/penup/internal/sso/SsoManager$1$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/penup/internal/sso/SsoManager$1$1$1;-><init>(Lcom/samsung/android/penup/internal/sso/SsoManager$1$1;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1$1;->this$1:Lcom/samsung/android/penup/internal/sso/SsoManager$1;

    iget-object p1, p1, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$400(Lcom/samsung/android/penup/internal/sso/SsoManager;)Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    move-result-object p1

    const-string v1, "The authentication error occurred."

    :goto_0
    invoke-static {p1, v2, v1}, Lcom/samsung/android/penup/internal/sso/AuthUtil;->sendErrorResult(Lcom/samsung/android/penup/PenupClient$ConnectionCallback;ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1$1;->this$1:Lcom/samsung/android/penup/internal/sso/SsoManager$1;

    iget-object v1, v1, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$700(Lcom/samsung/android/penup/internal/sso/SsoManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/samsung/android/penup/internal/sso/AuthUtil;->parseErrorUrl(Ljava/lang/String;)Lcom/samsung/android/penup/ResponseResult;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1$1;->this$1:Lcom/samsung/android/penup/internal/sso/SsoManager$1;

    iget-object v1, v1, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$400(Lcom/samsung/android/penup/internal/sso/SsoManager;)Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/penup/ResponseResult;->getCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/penup/ResponseResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/samsung/android/penup/internal/sso/AuthUtil;->sendErrorResult(Lcom/samsung/android/penup/PenupClient$ConnectionCallback;ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$1$1;->this$1:Lcom/samsung/android/penup/internal/sso/SsoManager$1;

    iget-object p1, p1, Lcom/samsung/android/penup/internal/sso/SsoManager$1;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$400(Lcom/samsung/android/penup/internal/sso/SsoManager;)Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    move-result-object p1

    const-string v1, "The authentication error occurred."

    goto :goto_0

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
