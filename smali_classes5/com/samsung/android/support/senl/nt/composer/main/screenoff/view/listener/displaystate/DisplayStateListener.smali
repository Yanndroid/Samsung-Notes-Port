.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayState:I

.field private mIDisplayStateListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/IDisplayStateListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DisplayStateListener"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;)Landroid/hardware/display/DisplayManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->mDisplayState:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/IDisplayStateListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->mIDisplayStateListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/IDisplayStateListener;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->mDisplayState:I

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;Landroid/view/Display;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->isMainDisplay(Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private isMainDisplay(Landroid/view/Display;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DisplayUtils;->getMainScreenSize()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public registerListener(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/IDisplayStateListener;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->TAG:Ljava/lang/String;

    const-string v1, "registerListener#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->mIDisplayStateListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/IDisplayStateListener;

    const-string p2, "display"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterListener()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->TAG:Ljava/lang/String;

    const-string v1, "unregisterListener#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method
