.class public abstract Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;
.super Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u001f\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000 :2\u00020\u00012\u00020\u0002:\u0001:B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u0012H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0014J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0008\u0010\u001c\u001a\u00020\u0005H\u0016J\u0008\u0010\u001d\u001a\u00020\u0007H\u0016J\u0008\u0010\u001e\u001a\u00020\tH\u0016J\u0008\u0010\u001f\u001a\u00020\tH\u0016J\u0008\u0010 \u001a\u00020\tH\u0016J\u0008\u0010!\u001a\u00020\tH\u0016J\u0008\u0010\"\u001a\u00020\u0007H\u0016J\u0008\u0010#\u001a\u00020\u0005H\u0016J\u0008\u0010$\u001a\u00020\u0007H\u0016J\u0008\u0010%\u001a\u00020\tH\u0016J\u0010\u0010&\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u0012H\u0016J\u0008\u0010\'\u001a\u00020\u0019H\u0004J\u0010\u0010(\u001a\u00020\u00192\u0006\u0010)\u001a\u00020\u0005H\u0002J\u0010\u0010*\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020\u0007H\u0016J\u0010\u0010,\u001a\u00020\u00192\u0006\u0010-\u001a\u00020\tH\u0016J\u0010\u0010.\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020\tH\u0016J\u0010\u00100\u001a\u00020\u00192\u0006\u00101\u001a\u00020\tH\u0002J\u0010\u00102\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020\u0007H\u0016J\u0010\u00103\u001a\u00020\u00192\u0006\u0010)\u001a\u00020\u0005H\u0002J\u0010\u00104\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020\u0007H\u0016J\u0010\u00105\u001a\u00020\u00192\u0006\u00106\u001a\u00020\tH\u0016J\u0010\u00107\u001a\u00020\u00192\u0006\u00108\u001a\u000209H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006;"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;",
        "()V",
        "mContentResolution",
        "",
        "mContentScreenSize",
        "Landroid/util/Size;",
        "mDeviceScreenResolution",
        "",
        "mDeviceScreenSize",
        "mEnabledRotation",
        "",
        "mOrientation",
        "mPrevRotationInfo",
        "mRotationInfo",
        "mRotationListeners",
        "Ljava/util/ArrayList;",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;",
        "mWindowResolution",
        "mWindowSize",
        "mWindowType",
        "addRotationChangeListener",
        "listener",
        "close",
        "",
        "enableRotation",
        "enable",
        "getContentResolution",
        "getContentScreenSize",
        "getOrientation",
        "getPrevRotation",
        "getRotation",
        "getScreenResolution",
        "getScreenSize",
        "getWindowResolution",
        "getWindowSize",
        "getWindowType",
        "removeRotationChangeListener",
        "rotate",
        "setContentResolution",
        "dpi",
        "setContentScreenSize",
        "size",
        "setOrientation",
        "orientation",
        "setRotation",
        "degree",
        "setScreenResolution",
        "densityDpi",
        "setScreenSize",
        "setWindowResolution",
        "setWindowSize",
        "setWindowType",
        "windowType",
        "updateScreenData",
        "data",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mContentResolution:F

.field private mContentScreenSize:Landroid/util/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mDeviceScreenResolution:I

.field private mDeviceScreenSize:Landroid/util/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mEnabledRotation:Z

.field private mOrientation:I

.field private mPrevRotationInfo:I

.field private mRotationInfo:I

.field private final mRotationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mWindowResolution:F

.field private mWindowSize:Landroid/util/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mWindowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->Companion:Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel$Companion;

    const-string v0, "AbsScreenModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;-><init>()V

    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mDeviceScreenSize:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mContentScreenSize:Landroid/util/Size;

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mContentResolution:F

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mWindowType:I

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mWindowSize:Landroid/util/Size;

    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mWindowResolution:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mRotationListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private final setContentResolution(F)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mContentResolution:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mContentResolution:F

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setContentResolution : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mContentResolution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final setScreenResolution(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mDeviceScreenResolution:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mDeviceScreenResolution:I

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScreenResolution : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mDeviceScreenResolution:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final setWindowResolution(F)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mWindowResolution:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mWindowResolution:F

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWindowResolution : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mWindowResolution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addRotationChangeListener(Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;)Z
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mRotationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mRotationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public enableRotation(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->setRotation(I)Z

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mEnabledRotation:Z

    return-void
.end method

.method public getContentResolution()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mContentResolution:F

    return v0
.end method

.method public getContentScreenSize()Landroid/util/Size;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mContentScreenSize:Landroid/util/Size;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mOrientation:I

    return v0
.end method

.method public getPrevRotation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mPrevRotationInfo:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mRotationInfo:I

    return v0
.end method

.method public getScreenResolution()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mDeviceScreenResolution:I

    return v0
.end method

.method public getScreenSize()Landroid/util/Size;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mDeviceScreenSize:Landroid/util/Size;

    return-object v0
.end method

.method public getWindowResolution()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mWindowResolution:F

    return v0
.end method

.method public getWindowSize()Landroid/util/Size;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mWindowSize:Landroid/util/Size;

    return-object v0
.end method

.method public getWindowType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mWindowType:I

    return v0
.end method

.method public removeRotationChangeListener(Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;)Z
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mRotationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final rotate()V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/RotationEvent;

    iget v1, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mPrevRotationInfo:I

    iget v2, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mRotationInfo:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/RotationEvent;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mRotationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;

    invoke-interface {v2, v0}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;->onRotationChanged(Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setContentScreenSize(Landroid/util/Size;)Z
    .locals 2
    .param p1    # Landroid/util/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mContentScreenSize:Landroid/util/Size;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mContentScreenSize:Landroid/util/Size;

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setContentScreenSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mContentScreenSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setOrientation(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mOrientation:I

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOrientation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setRotation(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mEnabledRotation:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mRotationInfo:I

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed rotation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mRotationInfo:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mPrevRotationInfo:I

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mRotationInfo:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->rotate()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setScreenSize(Landroid/util/Size;)Z
    .locals 2
    .param p1    # Landroid/util/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mDeviceScreenSize:Landroid/util/Size;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mDeviceScreenSize:Landroid/util/Size;

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScreenSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mDeviceScreenSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setWindowSize(Landroid/util/Size;)Z
    .locals 2
    .param p1    # Landroid/util/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mWindowSize:Landroid/util/Size;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mWindowSize:Landroid/util/Size;

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWindowSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setWindowType(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mWindowType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mWindowType:I

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWindowType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->mWindowType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public updateScreenData(Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;->getWindowSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->setWindowSize(Landroid/util/Size;)Z

    move-result v0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;->getWindowResolution()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->setWindowResolution(F)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;->getScreenSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->setScreenSize(Landroid/util/Size;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;->getScreenResolution()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->setScreenResolution(I)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;->getContentScreenSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->setContentScreenSize(Landroid/util/Size;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;->getContentResolution()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/AbsScreenModel;->setContentResolution(F)V

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
