.class Lcom/samsung/android/penup/internal/sso/SsoManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/penup/internal/ProgressDialogHelper$ProgressDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/penup/internal/sso/SsoManager;-><init>(Lcom/samsung/android/penup/PenupClient;Lcom/samsung/android/penup/PenupClient$ConnectionCallback;)V
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

    iput-object p1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$2;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$2;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$2;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$000(Lcom/samsung/android/penup/internal/sso/SsoManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$2;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$100(Lcom/samsung/android/penup/internal/sso/SsoManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$2;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/sso/SsoManager;->access$300(Lcom/samsung/android/penup/internal/sso/SsoManager;)V

    iget-object v1, p0, Lcom/samsung/android/penup/internal/sso/SsoManager$2;->this$0:Lcom/samsung/android/penup/internal/sso/SsoManager;

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
