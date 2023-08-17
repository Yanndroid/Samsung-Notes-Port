.class public Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/StartPenDoubleTap;
.super Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/Task;
.source "SourceFile"


# static fields
.field private static final EXTRA_VALUE_PEN_DOUBLE_TAP:Ljava/lang/String; = "pen_doubletab"

.field private static final TAG:Ljava/lang/String; = "StartPenDoubleTap"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "StartPenDoubleTap"

    const-string v1, "run"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/Task;->getPenDetectMode()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/Task;->setPenDetectMode(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/Task;->turnOffScreen()V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/StartPenDoubleTap$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/StartPenDoubleTap$1;-><init>(Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/StartPenDoubleTap;I)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
