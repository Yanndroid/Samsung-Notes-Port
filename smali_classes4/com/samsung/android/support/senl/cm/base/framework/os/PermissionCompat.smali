.class public Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$UtilImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$ImplLessThanQ;,
        Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$ImplQ;,
        Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$ImplR;
    }
.end annotation


# static fields
.field public static FEATURE_ENABLED_MANAGE_EXTERNAL_STORAGE:Z = true

.field private static final FEATURE_ENABLED_MANAGE_EXTERNAL_STORAGE_R:Z = true

.field private static final TAG:Ljava/lang/String; = "PermissionUtils"

.field public static final TYPE_ALL_FILES_ACCESS_PERMISSION:I = 0x5

.field public static final TYPE_CAMERA:I = 0x8

.field public static final TYPE_READ_EXTERNAL_STORAGE_AUDIO:I = 0x2

.field public static final TYPE_READ_EXTERNAL_STORAGE_FILE:I = 0x3

.field public static final TYPE_READ_EXTERNAL_STORAGE_IMAGES:I = 0x1

.field public static final TYPE_WRITE_EXTERNAL_AUDIO:I = 0x7

.field public static final TYPE_WRITE_EXTERNAL_IMAGES:I = 0x6

.field public static final TYPE_WRITE_EXTERNAL_STORAGE:I = 0x4

.field private static final impl:Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$UtilImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-gt v0, v2, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$ImplLessThanQ;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$ImplLessThanQ;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/os/c;)V

    :goto_0
    sput-object v0, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->impl:Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$UtilImpl;

    goto :goto_2

    :cond_0
    const/16 v2, 0x1d

    if-ne v0, v2, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$ImplQ;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$ImplQ;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/os/d;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x20

    const/4 v2, 0x1

    if-gt v0, v1, :cond_2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$ImplR;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$ImplR;-><init>()V

    :goto_1
    sput-object v0, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->impl:Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$UtilImpl;

    sput-boolean v2, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->FEATURE_ENABLED_MANAGE_EXTERNAL_STORAGE:Z

    goto :goto_2

    :cond_2
    const/16 v1, 0x21

    if-gt v0, v1, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PermissionCompatImpl;->getImplT()Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$UtilImpl;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PermissionCompatImpl;->getImplU()Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$UtilImpl;

    move-result-object v0

    goto :goto_1

    :goto_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->impl:Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$UtilImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$UtilImpl;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getPermissionGroupName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->impl:Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$UtilImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$UtilImpl;->getPermissionGroupName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPermissionIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->impl:Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$UtilImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$UtilImpl;->getPermissionIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getPermissionsForPostNotification()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PermissionCompatImpl;->getPermissionsForPostNotification()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissionsForRecordAudio()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PermissionCompatImpl;->getPermissionsForRecordAudio()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStoragePermissions(I)[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->impl:Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$UtilImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$UtilImpl;->getStoragePermissions(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static putPostNotificationPermission(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PermissionCompatImpl;->putPostNotificationPermission(Landroid/util/ArrayMap;)V

    return-void
.end method
