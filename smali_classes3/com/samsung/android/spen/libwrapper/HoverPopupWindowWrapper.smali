.class public Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper$Gravity;
    }
.end annotation


# static fields
.field public static final TYPE_NONE:I

.field public static final TYPE_TOOLTIP:I

.field public static final TYPE_USER_CUSTOM:I

.field public static final TYPE_WIDGET_DEFAULT:I


# instance fields
.field private instance:Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSemDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->TYPE_NONE:I

    sput v0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;->TYPE_NONE:I

    sget v0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->TYPE_TOOLTIP:I

    sput v0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;->TYPE_TOOLTIP:I

    sget v0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->TYPE_USER_CUSTOM:I

    sput v0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;->TYPE_USER_CUSTOM:I

    sget v0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->TYPE_WIDGET_DEFAULT:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow;->TYPE_NONE:I

    sput v0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;->TYPE_NONE:I

    sget v0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow;->TYPE_TOOLTIP:I

    sput v0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;->TYPE_TOOLTIP:I

    sget v0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow;->TYPE_USER_CUSTOM:I

    sput v0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;->TYPE_USER_CUSTOM:I

    sget v0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow;->TYPE_WIDGET_DEFAULT:I

    :goto_0
    sput v0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;->TYPE_WIDGET_DEFAULT:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;->instance:Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;
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


# virtual methods
.method public setContent(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;->instance:Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;->setContent(Landroid/view/View;)V
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

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;->instance:Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;->setContent(Ljava/lang/CharSequence;)V
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

.method public setGravity(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;->instance:Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;->setGravity(I)V
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

.method public setHoverPopupListener(Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface$HoverPopupWindowListenerCallback;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;->instance:Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;->setHoverPopupListener(Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface$HoverPopupWindowListenerCallback;)V
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

.method public setOffset(II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;->instance:Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;->setOffset(II)V
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

.method public show()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;->instance:Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;

    invoke-interface {v0}, Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;->show()V
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

.method public show(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;->instance:Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;->show(I)V
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
