.class Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PermissionCompatImpl$ImplU;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PermissionCompatImpl$ImplT;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PermissionCompatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImplU"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PermissionCompatImpl$ImplT;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/f;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PermissionCompatImpl$ImplU;-><init>()V

    return-void
.end method


# virtual methods
.method public getStoragePermissions(I)[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x22
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PermissionCompatImpl$ImplT;->getStoragePermissions(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method
