.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$OnCreateNdefMessageListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateNdefMessage()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeamHelper, onCreateNdefMessage"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->save(ZZ)Z

    :cond_0
    return-void
.end method
