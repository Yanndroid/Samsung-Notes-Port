.class public Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final USER_CURRENT:I = -0x2

.field private static mInstance:Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;


# instance fields
.field private mALLUser:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectWrapper<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$IUserHandleCompatImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$IUserHandleCompatImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->mALLUser:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectWrapper;

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$IUserHandleCompatImpl;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/UserHandleCompatImplFactory;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/UserHandleCompatImplFactory;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getDeviceType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/UserHandleCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$IUserHandleCompatImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$IUserHandleCompatImpl;)V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public allUser()Landroid/os/UserHandle;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->mALLUser:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.UserHandle"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectWrapper;

    const-string v3, "ALL"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-direct {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->mALLUser:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectWrapper;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_0
    const-string v2, "UserHandleCompat"

    const-string v3, "initUserHandle"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectWrapper;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->mALLUser:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectWrapper;

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->mALLUser:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    return-object v0
.end method

.method public getUriWithUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$IUserHandleCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$IUserHandleCompatImpl;->getUriWithUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getUserId(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$IUserHandleCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$IUserHandleCompatImpl;->getUserId(I)I

    move-result p1

    return p1
.end method

.method public isKnoxMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$IUserHandleCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$IUserHandleCompatImpl;->isKnoxMode()Z

    move-result v0

    return v0
.end method

.method public isSecureFolderMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$IUserHandleCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$IUserHandleCompatImpl;->isSecureFolderMode()Z

    move-result v0

    return v0
.end method

.method public isUserOwner()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$IUserHandleCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$IUserHandleCompatImpl;->isUserOwner()Z

    move-result v0

    const-string v1, "UserHandleCompat"

    if-eqz v0, :cond_0

    const-string v0, "Main user!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "Not main user!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
