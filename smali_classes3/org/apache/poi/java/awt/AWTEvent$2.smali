.class final Lorg/apache/poi/java/awt/AWTEvent$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/AWTEvent;->get_InputEvent_CanAccessSystemClipboard()Ljava/lang/reflect/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3

    const/16 v0, 0x1f4

    :try_start_0
    const-class v1, Lorg/apache/poi/java/awt/event/InputEvent;

    const-string v2, "canAccessSystemClipboard"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-static {}, Lorg/apache/poi/java/awt/AWTEvent;->access$200()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/AWTEvent;->access$200()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    const-string v2, "AWTEvent.get_InputEvent_CanAccessSystemClipboard() got NoSuchFieldException "

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {}, Lorg/apache/poi/java/awt/AWTEvent;->access$200()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/AWTEvent;->access$200()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    const-string v2, "AWTEvent.get_InputEvent_CanAccessSystemClipboard() got SecurityException "

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
