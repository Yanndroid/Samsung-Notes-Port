.class Lcom/samsung/android/app/notes/handoff/HandoffActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/handoff/HandoffActivity;->handleComposer(Lorg/json/JSONObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

.field public final synthetic val$metaData:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/handoff/HandoffActivity;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$5;->this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

    iput-object p2, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$5;->val$metaData:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "HandoffActivity"

    const-string v0, "showWiFiSyncOnlyAndNotWiFiConnected# onDismiss"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$5;->this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

    invoke-static {p1}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->d(Lcom/samsung/android/app/notes/handoff/HandoffActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$5;->this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

    iget-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$5;->val$metaData:Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->i(Lcom/samsung/android/app/notes/handoff/HandoffActivity;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method
