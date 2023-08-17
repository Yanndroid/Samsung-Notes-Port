.class public abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$SystemPropertiesDelegateSdlImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$SystemPropertiesCompatPureImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;
    }
.end annotation


# static fields
.field private static SystemPropertiesClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static SystemPropertiesGet:Ljava/lang/reflect/Method; = null

.field private static final TAG:Ljava/lang/String; = "SystemPropertiesCompatImpl"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory;->SystemPropertiesClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory;->SystemPropertiesClass:Ljava/lang/Class;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory;->SystemPropertiesGet:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory;->SystemPropertiesClass:Ljava/lang/Class;

    const-string v4, "get"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory;->SystemPropertiesGet:Ljava/lang/reflect/Method;

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory;->SystemPropertiesGet:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory;->SystemPropertiesClass:Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    :goto_0
    const-string v0, "SystemPropertiesCompatImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemProperties, e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$SystemPropertiesDelegateSdlImpl;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$SystemPropertiesDelegateSdlImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/c;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$SystemPropertiesCompatPureImpl;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$SystemPropertiesCompatPureImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/b;)V

    return-object p1
.end method
