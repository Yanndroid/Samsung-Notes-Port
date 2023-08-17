.class public Lcom/samsung/android/sdk/pass/SpassFingerprint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;,
        Lcom/samsung/android/sdk/pass/SpassFingerprint$a;,
        Lcom/samsung/android/sdk/pass/SpassFingerprint$b;,
        Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;,
        Lcom/samsung/android/sdk/pass/SpassFingerprint$RegisterListener;
    }
.end annotation


# static fields
.field public static final ACTION_FINGERPRINT_ADDED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_ADDED"

.field public static final ACTION_FINGERPRINT_REMOVED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

.field public static final ACTION_FINGERPRINT_RESET:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_RESET"

.field public static final SENSOR_POSITION_HOMEKEY:I = 0x1

.field public static final SENSOR_POSITION_REAR:I = 0x3

.field public static final STATUS_AUTHENTIFICATION_FAILED:I = 0x10

.field public static final STATUS_AUTHENTIFICATION_PASSWORD_SUCCESS:I = 0x64

.field public static final STATUS_AUTHENTIFICATION_SUCCESS:I = 0x0

.field public static final STATUS_BUTTON_PRESSED:I = 0x9

.field public static final STATUS_OPERATION_DENIED:I = 0x33

.field public static final STATUS_QUALITY_FAILED:I = 0xc

.field public static final STATUS_SENSOR_FAILED:I = 0x7

.field public static final STATUS_TIMEOUT_FAILED:I = 0x4

.field public static final STATUS_USER_CANCELLED:I = 0x8

.field public static final STATUS_USER_CANCELLED_BY_TOUCH_OUTSIDE:I = 0xd

.field public static final TAG:Ljava/lang/String; = "SpassFingerprintSDK"

.field private static o:I = 0x0

.field private static p:Z = false

.field private static q:Z = false

.field private static r:Z = false

.field private static s:Z = false


# instance fields
.field private a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Ljava/util/ArrayList;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private t:Landroid/app/Dialog;

.field private u:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private v:Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

.field private w:Landroid/os/IBinder;

.field private x:Landroid/os/Handler;

.field private y:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->h:I

    iput-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->i:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->k:Z

    iput-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->m:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->n:Z

    iput-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/app/Dialog;

    iput-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Lcom/samsung/android/fingerprint/IFingerprintClient;

    iput-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->v:Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    iput-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->w:Landroid/os/IBinder;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->y:Ljava/lang/Object;

    if-eqz p1, :cond_3

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    sget-boolean v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->q:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->r:Z

    invoke-static {}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->s:Z

    sput-boolean v2, Lcom/samsung/android/sdk/pass/SpassFingerprint;->q:Z

    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->r:Z

    const-string v3, "SpassFingerprintSDK"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/support/v1/FingerprintManagerProxyFactory;->create(Landroid/content/Context;)Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->x:Landroid/os/Handler;

    iget-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    if-eqz p1, :cond_2

    :try_start_0
    const-class p1, Lcom/samsung/android/fingerprint/FingerprintManager;

    const-string v0, "SENSOR_TYPE_TOUCH"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getSensorType()I

    move-result v0

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    if-ne v0, p1, :cond_1

    sput-boolean v2, Lcom/samsung/android/sdk/pass/SpassFingerprint;->p:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpassFingerprint : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getVersion()I

    move-result p1

    sput p1, Lcom/samsung/android/sdk/pass/SpassFingerprint;->o:I

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "SpassFingerprint : 1.2.8, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->o:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->p:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x33

    if-eq p0, v0, :cond_0

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x7

    return p0

    :pswitch_0
    const/16 p0, 0xd

    return p0

    :pswitch_1
    const/16 p0, 0xc

    return p0

    :pswitch_2
    const/16 p0, 0x10

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->x:Landroid/os/Handler;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const-string v1, "SpassFingerprintSDK"

    if-eqz v0, :cond_0

    const-string p0, "insertLog :  No permission"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-class v2, Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "#14"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "feature"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string v2, "extra"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "insertLog : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/pass/SpassFingerprint;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c:I

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/pass/SpassFingerprint;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/pass/SpassFingerprint;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()Z
    .locals 2

    sget v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->o:I

    const v1, 0x1010100

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    return v1

    :cond_0
    :try_start_1
    const-string v3, "drawable"

    invoke-virtual {v2, p1, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_3
    :goto_0
    return v1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v1
.end method

.method public static synthetic b(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Lcom/samsung/android/fingerprint/IFingerprintClient;

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    return-object p0
.end method

.method public static synthetic d()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->p:Z

    return v0
.end method

.method public static synthetic e(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    return-object p0
.end method

.method private declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->r:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    if-nez v0, :cond_1

    const-string v0, "SpassFingerprintSDK"

    const-string v1, "ensureServiceSupported : proxy is null, retry to create proxy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/support/v1/FingerprintManagerProxyFactory;->create(Landroid/content/Context;)Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Fingerprint Service is not running on the device."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Fingerprint Service is not supported in the platform."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->w:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->unregisterClient(Landroid/os/IBinder;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->w:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->resetListener()V

    return-void
.end method

.method public static synthetic f(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->n:Z

    return p0
.end method

.method public static synthetic g(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->n:Z

    return-void
.end method

.method private static g()Z
    .locals 12

    const-string v0, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    const-class v1, Ljava/lang/String;

    const-string v2, "getInstance"

    const-string v3, "Survey Mode : "

    const-string v4, "SpassFingerprintSDK"

    sget-boolean v5, Lcom/samsung/android/sdk/pass/SpassFingerprint;->q:Z

    if-eqz v5, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->s:Z

    return v0

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    const-string v8, "com.samsung.android.feature.FloatingFeature"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Class;

    invoke-virtual {v8, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    invoke-virtual {v9, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "getEnableStatus"

    new-array v11, v6, [Ljava/lang/Class;

    aput-object v1, v11, v7

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v0, v10, v7

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string v8, "com.samsung.android.feature.SemFloatingFeature"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Class;

    invoke-virtual {v8, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "getBoolean"

    new-array v9, v6, [Ljava/lang/Class;

    aput-object v1, v9, v7

    invoke-virtual {v8, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public static synthetic h(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/app/Dialog;

    return-object p0
.end method

.method public static synthetic i(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic j(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->y:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final b()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    :try_start_0
    const-string v0, "com.samsung.android.fingerprint.FingerprintManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isSupportFingerprintIds"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->isSupportFingerprintIds()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SpassFingerprintSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    :try_start_0
    const-string v0, "com.samsung.android.fingerprint.FingerprintManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isSupportBackupPassword"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->isSupportBackupPassword()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SpassFingerprintSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    return v0
.end method

.method public cancelIdentify()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->w:Landroid/os/IBinder;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Lcom/samsung/android/fingerprint/IFingerprintClient;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No Identify request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->cancel(Landroid/os/IBinder;)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Lcom/samsung/android/fingerprint/IFingerprintClient;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->notifyAppActivityState(ILandroid/os/Bundle;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Lcom/samsung/android/fingerprint/IFingerprintClient;

    iput-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/app/Dialog;

    :cond_4
    return-void
.end method

.method public changeStandbyString(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->m:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "the standby text passed is longer than 100 characters."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "the standby text passed is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setStandbyString is not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkBackupPassword(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->verifyPassword(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "password passed is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGuideForPoorQuality()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FingerprintGuide is Invalid. This API must be called inside IdentifyListener.onFinished() with STATUS_QUALITY_FAILED only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGuideImageForPoorQuality()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FingerprintGuideImage is Invalid. This API must be called inside IdentifyListener.onFinished() with STATUS_QUALITY_FAILED only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIdentifiedFingerprintIndex()I
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    iget v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FingerprintIndex is Invalid. This API must be called inside IdentifyListener.onFinished() only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRegisteredFingerprintName()Landroid/util/SparseArray;
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getEnrolledFingers()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    move v3, v2

    :goto_0
    const/16 v4, 0xa

    if-le v3, v4, :cond_1

    :goto_1
    return-object v0

    :cond_1
    shl-int v4, v2, v3

    and-int/2addr v4, v1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v4, v3}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getIndexName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getRegisteredFingerprintUniqueID()Landroid/util/SparseArray;
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getEnrolledFingers()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    move v3, v2

    :goto_0
    const/16 v4, 0xa

    if-le v3, v4, :cond_1

    :goto_1
    return-object v0

    :cond_1
    shl-int v4, v2, v3

    and-int/2addr v4, v1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v4, v3}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getFingerprintId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getRegisteredFingerprintUniqueID is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSensorPosition()I
    .locals 4

    const-string v0, "SpassFingerprintSDK"

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "veyron"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getSensorPosition()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "getSensorPosition : failed "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSensorPosition : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasDisabledFingerprint()Z
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    sget-boolean v0, Lcom/samsung/android/sdk/pass/Spass;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getEnrolledFingers()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    const-string v2, "fingerprint"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "semHasDisabledFingerprints"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hasDisabledFingerprint : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpassFingerprintSDK"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method public hasRegisteredFinger()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getEnrolledFingers()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSensorReady()Z
    .locals 4

    const-string v0, "SpassFingerprintSDK"

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->isSensorReady()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "isSensorReady : failed "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isSensorReady : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTouchType()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->p:Z

    return v0
.end method

.method public registerFinger(Landroid/content/Context;Lcom/samsung/android/sdk/pass/SpassFingerprint$RegisterListener;)V
    .locals 3

    const-string v0, "activityContext is invalid"

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->isEnrolling()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->notifyEnrollEnd()Z

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->isSensorReady()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    new-instance v2, Lcom/samsung/android/sdk/pass/b;

    invoke-direct {v2, p2}, Lcom/samsung/android/sdk/pass/b;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint$RegisterListener;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, v2, p2}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "An error has occurred with the fingerprint sensor."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener passed is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "activityContext passed is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resetListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->v:Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V

    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    invoke-static {}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->k:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setCanceledOnTouchOutside is not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDialogBgTransparency(I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    invoke-static {}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "the transparency passed is not valid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setDialogBGTransparency is not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDialogButton(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->l:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "the title text passed is longer than 32 characters."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "the buttonText passed is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setDialogButton is not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDialogIcon(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    invoke-static {}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->i:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "the iconName passed is not valid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "the iconName passed is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setDialogIcon is not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDialogTitle(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    invoke-static {}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_1

    ushr-int/lit8 v0, p2, 0x18

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:Ljava/lang/String;

    const/high16 p1, -0x1000000

    add-int/2addr p2, p1

    iput p2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->h:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "alpha value is not supported in the titleColor."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "the title text passed is longer than 256 characters."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "the titletext passed is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "setDialogTitle is not supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIntendedFingerprintIndex(Ljava/util/ArrayList;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    if-nez p1, :cond_0

    const-string p1, "SpassFingerprintSDK"

    const-string v0, "requestedIndex is null. Identify is carried out for all indexes."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setIntendedFingerprintIndex is not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startIdentify(Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->startIdentify(Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;)V

    return-void
.end method

.method public startIdentify(Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->v:Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;B)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->v:Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;

    const-string v0, "samsung-hidden-common"

    invoke-direct {p2, v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;-><init>(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    iput-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;->setAllowFingers([I)Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appName"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->v:Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->w:Landroid/os/IBinder;

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v0, p2, v2}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->identify(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "startIdentify : failed, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpassFingerprintSDK"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    if-eq p2, p1, :cond_5

    const/16 p1, 0x33

    if-ne p2, p1, :cond_4

    new-instance p1, Lcom/samsung/android/sdk/pass/SpassInvalidStateException;

    const-string p2, "Identify request is denied because 5 identify attempts are failed."

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/sdk/pass/SpassInvalidStateException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Identify operation is failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Identify request is denied because a previous request is still in progress."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iget-object p2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->v:Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "failed because registerClient returned null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener passed is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startIdentifyWithDialog(Landroid/content/Context;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;Z)V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e()V

    if-eqz p1, :cond_f

    if-eqz p2, :cond_e

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, "SpassFingerprintSDK"

    const-string/jumbo v1, "startIdentifyWithDialog : No Actvity Context"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a()Z

    move-result v0

    const-string v1, "Identify operation is failed."

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    move v4, v2

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_1
    new-instance v4, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    invoke-direct {v4, p0, p2, v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;B)V

    iput-object v4, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Lcom/samsung/android/fingerprint/IFingerprintClient;

    const/4 p2, -0x1

    :try_start_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "password"

    invoke-virtual {v4, v5, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "sdk_version"

    const-string v5, "Pass-v1.2.8"

    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "demandExtraEvent"

    const/4 v5, 0x1

    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v0, :cond_3

    const-string p3, "request_template_index_list"

    invoke-virtual {v4, p3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_3
    iget-object p3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:Ljava/lang/String;

    if-eqz p3, :cond_4

    const-string/jumbo v0, "titletext"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget p3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->h:I

    if-eq p3, p2, :cond_5

    const-string/jumbo v0, "titlecolor"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    iget-object p3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->i:Ljava/lang/String;

    if-eqz p3, :cond_6

    const-string v0, "iconname"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget p3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:I

    if-eq p3, p2, :cond_7

    const-string/jumbo v0, "transparency"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    iget-boolean p3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->k:Z

    if-eqz p3, :cond_8

    const-string/jumbo v0, "touchoutside"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    iget-object p3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->l:Ljava/lang/String;

    if-eqz p3, :cond_9

    const-string v0, "button_name"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object p3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->m:Ljava/lang/String;

    if-eqz p3, :cond_a

    const-string/jumbo v0, "standby_string"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object p3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Lcom/samsung/android/fingerprint/IFingerprintClient;

    invoke-interface {p3, p1, v0, v4}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_b

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->h:I

    iput p2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:I

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->i:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->k:Z

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->m:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->l:Ljava/lang/String;

    return-void

    :cond_b
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->h:I

    iput p2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:I

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->i:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->k:Z

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->m:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->l:Ljava/lang/String;

    throw p1

    :cond_c
    new-instance v0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-direct {v0, p0, p2, v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;B)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {p2, p1, v0, v3, p3}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/app/Dialog;

    if-eqz p1, :cond_d

    new-instance p2, Lcom/samsung/android/sdk/pass/a;

    invoke-direct {p2, v0}, Lcom/samsung/android/sdk/pass/a;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "activityContext is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener passed is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "activityContext passed is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateActiveUser()V
    .locals 7

    const-string v0, "SpassFingerprintSDK"

    const-string/jumbo v1, "updateActiveUser : waiting for active user"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/sdk/pass/Spass;->a:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SpassSdk-updateActiveUser"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/samsung/android/sdk/pass/c;

    invoke-direct {v4, p0, v3}, Lcom/samsung/android/sdk/pass/c;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->y:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->y:Ljava/lang/Object;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    const-string v2, "SpassFingerprintSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateActiveUser : t = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :goto_2
    return-void
.end method
