.class public Lcom/samsung/android/support/senl/cm/base/framework/media/BitmapCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapCompat"

.field private static mInstance:Lcom/samsung/android/support/senl/cm/base/framework/media/BitmapCompat;


# instance fields
.field private final mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsBitmapCompatImplFactory$IBitmapCompatImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsBitmapCompatImplFactory$IBitmapCompatImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/media/BitmapCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsBitmapCompatImplFactory$IBitmapCompatImpl;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/framework/media/BitmapCompat;
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/media/BitmapCompat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/media/BitmapCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/media/BitmapCompat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/media/BitmapCompat;

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/BitmapCompatImplFactory;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/BitmapCompatImplFactory;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getDeviceType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/BitmapCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsBitmapCompatImplFactory$IBitmapCompatImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/media/BitmapCompat;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsBitmapCompatImplFactory$IBitmapCompatImpl;)V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/media/BitmapCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/media/BitmapCompat;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/media/BitmapCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/media/BitmapCompat;
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
.method public decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "BitmapCompat"

    const-string p2, "decodeFile#: pathName is empty"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/media/BitmapCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsBitmapCompatImplFactory$IBitmapCompatImpl;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsBitmapCompatImplFactory$IBitmapCompatImpl;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "BitmapCompat"

    const-string p2, "decodeStream#: stream is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/media/BitmapCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsBitmapCompatImplFactory$IBitmapCompatImpl;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsBitmapCompatImplFactory$IBitmapCompatImpl;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
