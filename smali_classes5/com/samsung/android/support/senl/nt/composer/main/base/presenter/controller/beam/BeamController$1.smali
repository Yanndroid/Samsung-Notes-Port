.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController;->init(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage, resume beamHelper"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->resume()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
