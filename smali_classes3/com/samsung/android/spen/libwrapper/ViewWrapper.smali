.class public Lcom/samsung/android/spen/libwrapper/ViewWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private instance:Lcom/samsung/android/spen/libinterface/ViewInterface;

.field private isSetIconNotSupportedPlatform:Z


# direct methods
.method private constructor <init>(Lcom/samsung/android/spen/libinterface/ViewInterface;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->isSetIconNotSupportedPlatform:Z

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->instance:Lcom/samsung/android/spen/libinterface/ViewInterface;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->isSetIconNotSupportedPlatform:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {p2, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static create(Landroid/content/Context;Landroid/view/View;)Lcom/samsung/android/spen/libwrapper/ViewWrapper;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSamsungDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSemDevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;

    new-instance v0, Lcom/samsung/android/spen/libse/SeView;

    invoke-direct {v0, p1}, Lcom/samsung/android/spen/libse/SeView;-><init>(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/spen/libwrapper/ViewWrapper;-><init>(Lcom/samsung/android/spen/libinterface/ViewInterface;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance p1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    const-string v0, "SE"

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :try_start_1
    new-instance p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;

    new-instance v0, Lcom/samsung/android/spen/libsdl/SdlView;

    invoke-direct {v0, p1}, Lcom/samsung/android/spen/libsdl/SdlView;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/spen/libwrapper/ViewWrapper;-><init>(Lcom/samsung/android/spen/libinterface/ViewInterface;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    :goto_1
    new-instance p1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    const-string v0, "SDL"

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>()V

    throw p0
.end method


# virtual methods
.method public getHoverPopupWindow()Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;

    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->instance:Lcom/samsung/android/spen/libinterface/ViewInterface;

    invoke-interface {v1}, Lcom/samsung/android/spen/libinterface/ViewInterface;->getHoverPopupWindow()Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;-><init>(Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public performHapticFeedback(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->instance:Lcom/samsung/android/spen/libinterface/ViewInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spen/libinterface/ViewInterface;->performHapticFeedback(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v0, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public requestAccessibilityFocus()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->instance:Lcom/samsung/android/spen/libinterface/ViewInterface;

    invoke-interface {v0}, Lcom/samsung/android/spen/libinterface/ViewInterface;->requestAccessibilityFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setHoverPopupType(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->instance:Lcom/samsung/android/spen/libinterface/ViewInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spen/libinterface/ViewInterface;->setHoverPopupType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v0, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setPointerIcon(ILandroid/view/PointerIcon;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->isSetIconNotSupportedPlatform:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->instance:Lcom/samsung/android/spen/libinterface/ViewInterface;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/spen/libinterface/ViewInterface;->setPointerIcon(ILandroid/view/PointerIcon;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {p2, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setPointerIcon(Landroid/content/Context;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->isSetIconNotSupportedPlatform:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->instance:Lcom/samsung/android/spen/libinterface/ViewInterface;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/spen/libinterface/ViewInterface;->setPointerIcon(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {p2, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setPointerIcon(Landroid/content/res/Resources;Landroid/graphics/Bitmap;FF)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->isSetIconNotSupportedPlatform:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->instance:Lcom/samsung/android/spen/libinterface/ViewInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/spen/libinterface/ViewInterface;->setPointerIcon(Landroid/content/res/Resources;Landroid/graphics/Bitmap;FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {p2, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
