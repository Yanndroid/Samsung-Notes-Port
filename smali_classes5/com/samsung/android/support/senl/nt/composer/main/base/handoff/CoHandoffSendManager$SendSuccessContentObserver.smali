.class Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendSuccessContentObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "content://com.samsung.android.mcfds.HandoffProvider/DataSendingSuccess/com.samsung.android.app.notes"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DataSendingSuccess"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->requestViewMode(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getComposerActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
