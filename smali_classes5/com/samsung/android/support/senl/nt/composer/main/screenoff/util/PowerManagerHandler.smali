.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/PowerManagerHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/PowerManagerHandler$MessageHandler;
    }
.end annotation


# static fields
.field private static final HANDLER:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/PowerManagerHandler$MessageHandler;

.field private static final MESSAGE_REQUEST_GO_TO_SLEEP:I = 0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "PowerManagerHandler"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/PowerManagerHandler;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/PowerManagerHandler$MessageHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/PowerManagerHandler$MessageHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/PowerManagerHandler;->HANDLER:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/PowerManagerHandler$MessageHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static release()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/PowerManagerHandler;->TAG:Ljava/lang/String;

    const-string v1, "release#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/PowerManagerHandler;->HANDLER:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/PowerManagerHandler$MessageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public static requestGoToSleep(I)V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/PowerManagerHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestGoToSleep# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/PowerManagerHandler;->HANDLER:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/PowerManagerHandler$MessageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static requestStopGoToSleep()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/PowerManagerHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestStopGoToSleep#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/PowerManagerHandler;->HANDLER:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/PowerManagerHandler$MessageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
