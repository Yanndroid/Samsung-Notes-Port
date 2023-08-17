.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$SesUiAllListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SesUiAllListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$SesUiAllListener;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$SesUiAllListener;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;)V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    const-string v0, "GcsBaseMode"

    const-string v1, "SesUiAllListener# onConnected() start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$SesUiAllListener;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;->onSesSessionConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$SesUiAllListener;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SesUiAllListener# create Social SessionInstance : onConnected() requestSync "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$SesUiAllListener;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;

    const-string v1, "SesUiAllListener# onConnected"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;->g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDisConnected(I)V
    .locals 3

    sget v0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$ConnectionResultCallback;->CAUSE_AGENT_NOT_INSTALLED:I

    const-string v1, "GcsBaseMode"

    if-ne p1, v0, :cond_0

    const-string p1, "SesUiAllListener#onDisConnected : Agent is not installed properly."

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget v0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$ConnectionResultCallback;->CAUSE_AGENT_FORCE_UPDATE_REQUIRED:I

    if-ne p1, v0, :cond_1

    const-string p1, "SesUiAllListener#onDisConnected : Force update required."

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SesUiAllListener#onDisConnected reason code : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method
