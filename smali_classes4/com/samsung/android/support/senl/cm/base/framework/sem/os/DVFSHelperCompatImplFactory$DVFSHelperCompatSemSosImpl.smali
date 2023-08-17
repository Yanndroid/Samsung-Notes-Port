.class Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory$DVFSHelperCompatSemSosImpl;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$DVFSHelperCompatPureImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DVFSHelperCompatSemSosImpl"
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.samsung.android.os.SemDvfsManager"

.field private static final SCENARIO_SPENSDK_FLING:Ljava/lang/String; = "SPENSDK_FLING"


# instance fields
.field private mClassSemDvfsManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$DVFSHelperCompatPureImpl;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory$DVFSHelperCompatSemSosImpl;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    :try_start_0
    const-string p1, "com.samsung.android.os.SemDvfsManager"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory$DVFSHelperCompatSemSosImpl;->mClassSemDvfsManager:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DVFSHelperDelegateSemSosImpl: Exception] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DVFSHelperCompatImpl"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public acquire()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory$DVFSHelperCompatSemSosImpl;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v1, 0x0

    const-string v2, "DVFSHelperCompatImpl"

    if-nez v0, :cond_0

    const-string v0, "mSemDvfsManager is null"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire: NoSuchMethodError] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public acquire(I)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory$DVFSHelperCompatSemSosImpl;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v1, 0x0

    const-string v2, "DVFSHelperCompatImpl"

    if-nez v0, :cond_0

    const-string p1, "mSemDvfsManager is null"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquire timeout: NoSuchMethodError] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public initScenarioType(Landroid/content/Context;I)V
    .locals 8

    const-string v0, "DVFSHelperCompatImpl"

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory$DVFSHelperCompatSemSosImpl;->mClassSemDvfsManager:Ljava/lang/Class;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x5dc

    if-eq p2, v2, :cond_1

    return-void

    :cond_1
    :try_start_0
    const-string p2, "createInstance"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v6

    const-string p1, "SPENSDK_FLING"

    aput-object p1, v1, v7

    const/4 p1, 0x0

    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p1, "initScenarioType: instance is null "

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    check-cast p2, Lcom/samsung/android/os/SemDvfsManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory$DVFSHelperCompatSemSosImpl;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    iget-object p2, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory$DVFSHelperCompatSemSosImpl;->mClassSemDvfsManager:Ljava/lang/Class;

    const-string v1, "checkHintSupported"

    new-array v3, v7, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {p2, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory$DVFSHelperCompatSemSosImpl;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {p2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory$DVFSHelperCompatSemSosImpl;->mClassSemDvfsManager:Ljava/lang/Class;

    const-string p2, "setHint"

    new-array v1, v7, [Ljava/lang/Class;

    aput-object v4, v1, v6

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory$DVFSHelperCompatSemSosImpl;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string p2, "setHint: failed "

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory$DVFSHelperCompatSemSosImpl;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initScenarioType: Exception] "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initScenarioType: NoSuchMethodException] "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public release()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory$DVFSHelperCompatSemSosImpl;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v1, 0x0

    const-string v2, "DVFSHelperCompatImpl"

    if-nez v0, :cond_0

    const-string v0, "mSemDvfsManager is null"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release: NoSuchMethodError] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
