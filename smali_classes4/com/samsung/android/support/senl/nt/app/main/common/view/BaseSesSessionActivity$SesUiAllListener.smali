.class Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SesUiAllListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;Lcom/samsung/android/support/senl/nt/app/main/common/view/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;)V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    const-string v0, "BaseSesSessionActivity"

    const-string v1, "onConnected() start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->onSesSessionConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "create Social SessionInstance : onConnected() requestSync "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;

    const-string v1, "SesUiAllListener : onConnected"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->j(Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDisConnected(I)V
    .locals 3

    sget v0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$ConnectionResultCallback;->CAUSE_AGENT_NOT_INSTALLED:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDisConnected(). Agent is not installed properly."

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget v0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$ConnectionResultCallback;->CAUSE_AGENT_FORCE_UPDATE_REQUIRED:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDisConnected(). Force update required."

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisConnected() reason code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
