.class Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoteSPenBindServiceConnected# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InAppActivityAttributes"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->a(Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;Landroid/os/Messenger;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->b(Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoteSPenBindServiceDisconnected# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InAppActivityAttributes"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->a(Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;Landroid/os/Messenger;)V

    return-void
.end method
