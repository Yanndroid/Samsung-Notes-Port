.class final Lio/netty/util/internal/CleanerJava9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/internal/Cleaner;


# static fields
.field private static final INVOKE_CLEANER:Ljava/lang/reflect/Method;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-class v0, Lio/netty/util/internal/CleanerJava9;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/CleanerJava9;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->hasUnsafe()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v3, Lio/netty/util/internal/CleanerJava9$1;

    invoke-direct {v3, v1}, Lio/netty/util/internal/CleanerJava9$1;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    check-cast v1, Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    check-cast v1, Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v3, "sun.misc.Unsafe unavailable"

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_1
    if-nez v2, :cond_2

    const-string v2, "java.nio.ByteBuffer.cleaner(): available"

    invoke-interface {v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v3, "java.nio.ByteBuffer.cleaner(): unavailable"

    invoke-interface {v0, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    sput-object v1, Lio/netty/util/internal/CleanerJava9;->INVOKE_CLEANER:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lio/netty/util/internal/CleanerJava9;->INVOKE_CLEANER:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static freeDirectBufferPrivileged(Ljava/nio/ByteBuffer;)V
    .locals 1

    new-instance v0, Lio/netty/util/internal/CleanerJava9$2;

    invoke-direct {v0, p0}, Lio/netty/util/internal/CleanerJava9$2;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent0;->throwException(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static isSupported()Z
    .locals 1

    sget-object v0, Lio/netty/util/internal/CleanerJava9;->INVOKE_CLEANER:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public freeDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    sget-object v0, Lio/netty/util/internal/CleanerJava9;->INVOKE_CLEANER:Ljava/lang/reflect/Method;

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent0;->throwException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lio/netty/util/internal/CleanerJava9;->freeDirectBufferPrivileged(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method
