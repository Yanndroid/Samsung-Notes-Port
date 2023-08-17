.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PermissionCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PermissionCompatImpl$ImplU;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PermissionCompatImpl$ImplT;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImplT()Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$UtilImpl;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PermissionCompatImpl$ImplT;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PermissionCompatImpl$ImplT;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/f;)V

    return-object v0
.end method

.method public static getImplU()Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$UtilImpl;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PermissionCompatImpl$ImplU;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PermissionCompatImpl$ImplU;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/g;)V

    return-object v0
.end method

.method public static getPermissionsForPostNotification()[Ljava/lang/String;
    .locals 1

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissionsForRecordAudio()[Ljava/lang/String;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "android.permission.RECORD_AUDIO"

    const/16 v2, 0x21

    if-lt v0, v2, :cond_0

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static putPostNotificationPermission(Landroid/util/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    const-string v1, "android.permission-group.NOTIFICATIONS"

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
