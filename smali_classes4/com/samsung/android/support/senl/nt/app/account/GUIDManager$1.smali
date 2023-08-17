.class Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->requestAndWaitGuidReceived(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$onError:Ljava/lang/Runnable;

.field public final synthetic val$onReceived:Ljava/lang/Runnable;

.field public final synthetic val$requestLogin:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;->val$onReceived:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;->val$requestLogin:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;->val$onError:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;->lambda$onError$0(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private getErrorMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "SAC_0301"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->network_error:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->cannot_login_samsung_account:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$onError$0(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestAndWaitGuidReceived# error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GUIDManager"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;->val$activity:Landroid/app/Activity;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->f(Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;Landroid/app/Activity;)V

    const-string p2, "SAC_0402"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;->val$requestLogin:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;->getErrorMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;->val$activity:Landroid/app/Activity;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/account/f;

    invoke-direct {v0, p2, p1}, Lcom/samsung/android/support/senl/nt/app/account/f;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;->val$onError:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "GUIDManager"

    const-string p2, "requestAndWaitGuidReceived# received"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->f(Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;->val$onReceived:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
