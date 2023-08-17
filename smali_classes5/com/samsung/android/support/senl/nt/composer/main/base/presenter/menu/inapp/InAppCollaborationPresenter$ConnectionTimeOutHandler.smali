.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$ConnectionTimeOutHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionTimeOutHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$ConnectionTimeOutHandler;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$ConnectionTimeOutHandler;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InAppCollaborationPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "MSG_DISCONNECT"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$ConnectionTimeOutHandler;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;->o(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;)Z

    :cond_0
    return-void
.end method
