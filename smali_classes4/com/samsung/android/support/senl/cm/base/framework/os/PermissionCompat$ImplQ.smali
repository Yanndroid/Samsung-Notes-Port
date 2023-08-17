.class Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$ImplQ;
.super Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$ImplLessThanQ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImplQ"
.end annotation


# static fields
.field private static final PLATFORM_PERMISSIONS:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$ImplQ;->PLATFORM_PERMISSIONS:Landroid/util/ArrayMap;

    const-string v1, "android.permission.CAMERA"

    const-string v2, "android.permission-group.CAMERA"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.permission.GET_ACCOUNTS"

    const-string v2, "android.permission-group.CONTACTS"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.permission.RECORD_AUDIO"

    const-string v2, "android.permission-group.MICROPHONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission-group.STORAGE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "android.permission-group.PHONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->putPostNotificationPermission(Landroid/util/ArrayMap;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$ImplLessThanQ;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/os/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/os/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$ImplQ;-><init>()V

    return-void
.end method


# virtual methods
.method public getPermissionName(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 0

    sget-object p2, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$ImplQ;->PLATFORM_PERMISSIONS:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStoragePermissions(I)[Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$ImplLessThanQ;->isReadExternalStorage(I)Z

    move-result v0

    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    if-eqz v0, :cond_0

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    :goto_0
    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$ImplLessThanQ;->isWriteExternalStorage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$ImplLessThanQ;->getStoragePermissions(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
