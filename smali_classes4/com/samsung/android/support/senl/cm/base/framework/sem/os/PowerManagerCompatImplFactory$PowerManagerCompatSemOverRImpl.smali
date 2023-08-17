.class Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory$PowerManagerCompatSemOverRImpl;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory$PowerManagerCompatSemOverQImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerManagerCompatSemOverRImpl"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory$PowerManagerCompatSemOverQImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public wakeUp(JI)Z
    .locals 2

    const-string v0, "PowerManagerCompatImpl"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory$PowerManagerCompatSemImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "semWakeUp: NoSuchMethodError] "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
