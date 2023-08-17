.class public final Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002J\u0010\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000bH\u0016J\u0006\u0010\u0011\u001a\u00020\rJ\u0006\u0010\u0012\u001a\u00020\rJ\u0012\u0010\u0013\u001a\u00020\r2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0007J\u0008\u0010\u0014\u001a\u00020\rH\u0007J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u000bH\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;",
        "Landroid/view/OrientationEventListener;",
        "context",
        "Landroid/content/Context;",
        "model",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;",
        "(Landroid/content/Context;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;)V",
        "mModel",
        "mRotationAngle",
        "",
        "mSurfaceType",
        "",
        "initialize",
        "",
        "onConfigurationChanged",
        "onOrientationChanged",
        "degree",
        "onPause",
        "onResume",
        "start",
        "stop",
        "updateRotationAngleMap",
        "surfaceType",
        "Companion",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ANGLE_0:I = 0x0

.field private static final ANGLE_180:I = 0x2

.field private static final ANGLE_270:I = 0x3

.field private static final ANGLE_90:I = 0x1

.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mModel:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mRotationAngle:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mSurfaceType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->Companion:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener$Companion;

    const-string v0, "ScreenLockRotationListener"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->mModel:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;

    const/4 p1, 0x4

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->mRotationAngle:[I

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->mSurfaceType:I

    return-void
.end method

.method private final initialize(Landroid/content/Context;)V
    .locals 1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->updateRotationAngleMap(I)V

    return-void
.end method

.method private final updateRotationAngleMap(I)V
    .locals 8

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->mSurfaceType:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->mSurfaceType:I

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update rotation angle map : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x5a

    const/16 v1, 0xb4

    const/16 v2, 0x10e

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_4

    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->mRotationAngle:[I

    aput v0, v7, v6

    aput v6, v7, v5

    aput v2, v7, v4

    aput v1, v7, v3

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->mRotationAngle:[I

    aput v1, v7, v6

    aput v0, v7, v5

    aput v6, v7, v4

    aput v2, v7, v3

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->mRotationAngle:[I

    aput v2, v7, v6

    aput v1, v7, v5

    aput v0, v7, v4

    aput v6, v7, v3

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->mRotationAngle:[I

    aput v6, v7, v6

    aput v2, v7, v5

    aput v1, v7, v4

    aput v0, v7, v3

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->mModel:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->mRotationAngle:[I

    aget p1, v1, p1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;->setRotation(I)Z

    :cond_5
    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->mModel:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->TAG:Ljava/lang/String;

    const-string v0, "orientation is changed, but model is null"

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v1, 0x28

    if-gez p1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->TAG:Ljava/lang/String;

    const-string v0, "laid on desk!"

    goto :goto_0

    :cond_1
    if-le p1, v1, :cond_6

    const/16 v1, 0x140

    if-lt p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x32

    if-lt p1, v1, :cond_3

    const/16 v1, 0x82

    if-gt p1, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->mRotationAngle:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    goto :goto_2

    :cond_3
    const/16 v1, 0x8c

    if-lt p1, v1, :cond_4

    const/16 v1, 0xdc

    if-gt p1, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->mRotationAngle:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    goto :goto_2

    :cond_4
    const/16 v1, 0xe6

    if-lt p1, v1, :cond_5

    const/16 v1, 0x136

    if-gt p1, v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->mRotationAngle:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->mRotationAngle:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;->setRotation(I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orientation changed by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " degree, "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final onPause()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public final start(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->mModel:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;->enableRotation(Z)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public final stop()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->mModel:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;->enableRotation(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method
