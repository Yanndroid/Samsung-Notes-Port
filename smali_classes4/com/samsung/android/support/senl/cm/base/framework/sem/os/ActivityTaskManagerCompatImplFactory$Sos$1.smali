.class Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory$Sos$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/SemTaskChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory$Sos;->registerTaskChangeCallback(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$TaskChangeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory$Sos;

.field public final synthetic val$taskChangeCallback:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$TaskChangeCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory$Sos;Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$TaskChangeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory$Sos$1;->this$0:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory$Sos;

    iput-object p2, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory$Sos$1;->val$taskChangeCallback:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$TaskChangeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityRequestedOrientationChanged(II)V
    .locals 0

    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public onTaskDisplayChanged(II)V
    .locals 0

    return-void
.end method

.method public onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory$Sos$1;->val$taskChangeCallback:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$TaskChangeCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$TaskChangeCallback;->onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 0

    return-void
.end method
