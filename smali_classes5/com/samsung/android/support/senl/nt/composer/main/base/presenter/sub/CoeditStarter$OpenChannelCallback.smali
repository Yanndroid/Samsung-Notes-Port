.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$OpenChannelCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenChannelCallback"
.end annotation


# instance fields
.field public mPostCompletedAction:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$OpenChannelCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$OpenChannelCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$OpenChannelCallback;->mPostCompletedAction:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenChannelCallback# onCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$OpenChannelCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$OpenChannelCallback;->mPostCompletedAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$OpenChannelCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)V

    return-void
.end method

.method public onStartOfflineMode(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$OpenChannelCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)V

    return-void
.end method
