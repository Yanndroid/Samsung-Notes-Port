.class Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory$Sos;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$SemActivityTaskManagerDelegateImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sos"
.end annotation


# instance fields
.field public mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$TaskChangeCallback;",
            "Landroid/app/SemTaskChangeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory$Sos;->mCallbackMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public registerTaskChangeCallback(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$TaskChangeCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory$Sos;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemTaskChangeCallback;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory$Sos$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory$Sos$1;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory$Sos;Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$TaskChangeCallback;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory$Sos;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/app/SemActivityTaskManager;->getInstance()Landroid/app/SemActivityTaskManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/SemActivityTaskManager;->registerTaskChangeCallback(Landroid/app/SemTaskChangeCallback;)Z

    return-void
.end method

.method public unregisterTaskChangeCallback(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$TaskChangeCallback;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory$Sos;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemTaskChangeCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory$Sos;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/app/SemActivityTaskManager;->getInstance()Landroid/app/SemActivityTaskManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/SemActivityTaskManager;->unregisterTaskChangeCallback(Landroid/app/SemTaskChangeCallback;)Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterTaskChangeCallback, e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTaskManagerCompatImplFactory"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
