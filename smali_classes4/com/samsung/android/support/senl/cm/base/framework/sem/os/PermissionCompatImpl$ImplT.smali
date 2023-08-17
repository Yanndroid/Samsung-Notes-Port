.class Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PermissionCompatImpl$ImplT;
.super Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$ImplR;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PermissionCompatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImplT"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$ImplR;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PermissionCompatImpl$ImplT;-><init>()V

    return-void
.end method


# virtual methods
.method public getStoragePermissions(I)[Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x21
    .end annotation

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x2

    const-string v2, "android.permission.READ_MEDIA_AUDIO"

    if-ne v1, p1, :cond_1

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v1, 0x3

    if-ne v1, p1, :cond_2

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v1, 0x8

    if-ne v1, p1, :cond_3

    const-string p1, "android.permission.CAMERA"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 v1, 0x4

    if-ne v1, p1, :cond_4

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 v1, 0x6

    if-ne v1, p1, :cond_5

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 v0, 0x7

    if-ne v0, p1, :cond_6

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat$ImplR;->getStoragePermissions(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
