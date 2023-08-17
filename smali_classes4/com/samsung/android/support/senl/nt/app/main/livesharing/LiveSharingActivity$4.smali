.class Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->connectCoeditSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_connect_to_wifi_or_allow_mobile_data:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->q(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V

    return-void
.end method
