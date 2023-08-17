.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008f\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;",
        "getExtraData",
        "",
        "getExtraDataType",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_DESCRIPTION:I = 0x1

.field public static final TYPE_PIVOT:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;->Companion:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent$Companion;

    return-void
.end method


# virtual methods
.method public abstract getExtraData()I
.end method

.method public abstract getExtraDataType()I
.end method
