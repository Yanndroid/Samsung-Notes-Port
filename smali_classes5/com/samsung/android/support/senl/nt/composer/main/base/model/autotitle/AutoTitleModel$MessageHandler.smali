.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$MessageHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$MessageHandler;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$MessageHandler;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$MessageHandler;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)V

    :goto_0
    return-void
.end method
