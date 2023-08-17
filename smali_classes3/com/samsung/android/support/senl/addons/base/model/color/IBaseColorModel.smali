.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008f\u0018\u0000 \n2\u00020\u0001:\u0001\nJ\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H&J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0003H&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;",
        "",
        "getColor",
        "",
        "getPosition",
        "setColor",
        "",
        "color",
        "setPosition",
        "position",
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
.field public static final COLOR_PICKER_MODE:I = 0x4

.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MODE_MASK:I = -0x100000

.field public static final MODE_SHIFT:I = 0x14

.field public static final OBSV_BASECOLOR_MODEL_COLOR_CHANGED:I = 0xc9

.field public static final OBSV_BASECOLOR_MODEL_SELECTION_CHANGED:I = 0xca

.field public static final OBSV_VM_COLOR_PICKER_COLOR_CHANGED:I = 0xcb

.field public static final PAGE_SHIFT:I = 0x8

.field public static final PALETTE_INDEX_MASK:I = 0xff

.field public static final PALETTE_MODE:I = 0x2

.field public static final PALETTE_PAGE_MASK:I = 0xfff00

.field public static final RECENT_COLOR_FROM_NOT_PALETTE:I = 0x1fffff

.field public static final RECENT_MODE:I = 0x1

.field public static final UNKNOWN_MODE:I = -0x100000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->Companion:Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel$Companion;

    return-void
.end method


# virtual methods
.method public abstract getColor()I
.end method

.method public abstract getPosition()I
.end method

.method public abstract setColor(I)V
.end method

.method public abstract setPosition(I)V
.end method
