.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationInfo;",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PIVOT_TYPE_BOTTOM:I = 0x2

.field public static final PIVOT_TYPE_CENTER:I = 0x0

.field public static final PIVOT_TYPE_LEFT:I = 0x4

.field public static final PIVOT_TYPE_RIGHT:I = 0x8

.field public static final PIVOT_TYPE_TOP:I = 0x1

.field public static final ROTATE_ANIMATION_TYPE_SET_POSITION:I = 0x1

.field public static final ROTATE_ANIMATION_TYPE_TRANSLATION:I = 0x0

.field public static final ROTATION_DEGREE_0:I = 0x0

.field public static final ROTATION_DEGREE_180:I = 0xb4

.field public static final ROTATION_DEGREE_270:I = 0x10e

.field public static final ROTATION_DEGREE_90:I = 0x5a

.field public static final ROTATION_DEGREE_UNDEFINED:I = -0x1

.field public static final ROTATION_MARGIN_DEGREE:I = 0x28


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationInfo$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationInfo$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationInfo;->Companion:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationInfo$Companion;

    return-void
.end method
