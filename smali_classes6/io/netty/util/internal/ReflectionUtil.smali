.class public final Lio/netty/util/internal/ReflectionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static handleInaccessibleObjectException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    .locals 2

    const-string v0, "java.lang.reflect.InaccessibleObjectException"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    throw p0
.end method

.method public static trySetAccessible(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/Throwable;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->isExplicitTryReflectionSetAccessible()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Reflective setAccessible(true) disabled"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lio/netty/util/internal/ReflectionUtil;->handleInaccessibleObjectException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    return-object p0
.end method
