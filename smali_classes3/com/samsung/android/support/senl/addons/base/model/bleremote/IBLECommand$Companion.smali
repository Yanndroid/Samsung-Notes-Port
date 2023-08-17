.class public final Lcom/samsung/android/support/senl/addons/base/model/bleremote/IBLECommand$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/model/bleremote/IBLECommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/bleremote/IBLECommand$Companion;",
        "",
        "()V",
        "BLE_DOUBLE_PRESS",
        "",
        "BLE_NONE",
        "BLE_SINGLE_PRESS",
        "BLE_SINGLE_PRESS_TYPE2",
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
.field public static final synthetic $$INSTANCE:Lcom/samsung/android/support/senl/addons/base/model/bleremote/IBLECommand$Companion;

.field public static final BLE_DOUBLE_PRESS:I = 0x64

.field public static final BLE_NONE:I = -0x1

.field public static final BLE_SINGLE_PRESS:I = 0x0

.field public static final BLE_SINGLE_PRESS_TYPE2:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/bleremote/IBLECommand$Companion;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/model/bleremote/IBLECommand$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/bleremote/IBLECommand$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/model/bleremote/IBLECommand$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
