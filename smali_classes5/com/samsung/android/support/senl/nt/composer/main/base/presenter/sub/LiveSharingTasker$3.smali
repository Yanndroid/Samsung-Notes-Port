.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/livesharing/MeetingDisconnectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->registerMeetingDisconnectHandler(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeetingEnded(Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;)V
    .locals 1
    .param p1    # Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;Lcom/google/android/livesharing/MeetingDisconnectHandler;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/LiveSharingContract$Listener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/LiveSharingContract$Listener;->onLiveSharingDisconnected()V

    goto :goto_0

    :cond_0
    return-void
.end method
