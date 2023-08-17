.class Lcom/samsung/android/app/notes/handoff/HandoffActivity$1;
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

    iput-object p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$1;->this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$1;->this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

    new-instance v1, Lcom/samsung/android/app/notes/handoff/HandoffActivity$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/handoff/HandoffActivity$1$1;-><init>(Lcom/samsung/android/app/notes/handoff/HandoffActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
