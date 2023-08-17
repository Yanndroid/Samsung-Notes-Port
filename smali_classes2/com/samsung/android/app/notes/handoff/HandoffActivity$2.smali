.class Lcom/samsung/android/app/notes/handoff/HandoffActivity$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/handoff/HandoffActivity;->createTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/handoff/HandoffActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$2;->this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "HandoffActivity"

    const-string v1, "can not receive data from HandoffContentObserver in 30000ms"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$2;->this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->i(Lcom/samsung/android/app/notes/handoff/HandoffActivity;Lorg/json/JSONObject;)V

    return-void
.end method
