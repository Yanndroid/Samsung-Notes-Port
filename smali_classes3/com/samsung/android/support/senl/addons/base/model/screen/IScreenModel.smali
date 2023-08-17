.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel;
.implements Lcom/samsung/android/support/senl/addons/base/model/screen/IWindowMode;
.implements Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenMode;
.implements Lcom/samsung/android/support/senl/addons/base/model/screen/IOrientationMode;
.implements Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00082\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0001\u0008J\u0008\u0010\u0006\u001a\u00020\u0007H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IWindowMode;",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenMode;",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IOrientationMode;",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;",
        "getWindowType",
        "",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OBSV_SCREEN_MODEL_ORIENTATION_CHANGED:I = 0x2

.field public static final OBSV_SCREEN_MODEL_SIZE_CHANGED:I = 0x1

.field public static final OBSV_SCREEN_MODEL_WINDOW_TYPE_CHANGED:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;->Companion:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel$Companion;

    return-void
.end method


# virtual methods
.method public abstract getWindowType()I
.end method
