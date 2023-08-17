.class public Lcom/samsung/android/sdk/pen/hwuicompat/util/SpenHwuiHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/hwuicompat/util/SpenHwuiHandler$SPenHwuiHandlerInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenHwuiHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(J)Lcom/samsung/android/sdk/pen/hwuicompat/util/SpenHwuiHandler$SPenHwuiHandlerInterface;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current Android SDK version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpenHwuiHandler"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1c

    if-gt v1, v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/hwuicompat/util/HwuiHandlerCompatApi21_28;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/pen/hwuicompat/util/HwuiHandlerCompatApi21_28;-><init>(J)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/hwuicompat/util/HwuiHandlerImpl;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/pen/hwuicompat/util/HwuiHandlerImpl;-><init>(J)V

    return-object v0
.end method

.method public static isHWUISupported()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/hwuicompat/util/HwuiHandlerCompatApi21_28;->isHWUISupported()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/hwuicompat/util/HwuiHandlerImpl;->isHWUISupported()Z

    move-result v0

    return v0
.end method
