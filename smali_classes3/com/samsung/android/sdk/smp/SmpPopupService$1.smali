.class Lcom/samsung/android/sdk/smp/SmpPopupService$1;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/smp/SmpPopupService;->getWrapperLayout()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/smp/SmpPopupService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/smp/SmpPopupService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupService$1;->this$0:Lcom/samsung/android/sdk/smp/SmpPopupService;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupService$1;->this$0:Lcom/samsung/android/sdk/smp/SmpPopupService;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/SmpPopupService;->access$000(Lcom/samsung/android/sdk/smp/SmpPopupService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/SmpPopupService$1;->this$0:Lcom/samsung/android/sdk/smp/SmpPopupService;

    invoke-static {v2}, Lcom/samsung/android/sdk/smp/SmpPopupService;->access$100(Lcom/samsung/android/sdk/smp/SmpPopupService;)I

    move-result v2

    const-string v3, "2"

    invoke-static {v0, v1, v3, v2}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->getDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/SmpPopupService$1;->this$0:Lcom/samsung/android/sdk/smp/SmpPopupService;

    invoke-virtual {v1, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupService$1;->this$0:Lcom/samsung/android/sdk/smp/SmpPopupService;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/SmpPopupService;->access$200(Lcom/samsung/android/sdk/smp/SmpPopupService;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupService$1;->this$0:Lcom/samsung/android/sdk/smp/SmpPopupService;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/SmpPopupService;->access$300(Lcom/samsung/android/sdk/smp/SmpPopupService;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
