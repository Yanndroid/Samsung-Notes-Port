.class public final Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel$Companion;",
        "",
        "()V",
        "COLOR_PICKER_MODE",
        "",
        "MODE_MASK",
        "MODE_SHIFT",
        "OBSV_BASECOLOR_MODEL_COLOR_CHANGED",
        "OBSV_BASECOLOR_MODEL_SELECTION_CHANGED",
        "OBSV_VM_COLOR_PICKER_COLOR_CHANGED",
        "PAGE_SHIFT",
        "PALETTE_INDEX_MASK",
        "PALETTE_MODE",
        "PALETTE_PAGE_MASK",
        "RECENT_COLOR_FROM_NOT_PALETTE",
        "RECENT_MODE",
        "UNKNOWN_MODE",
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
.field public static final synthetic $$INSTANCE:Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel$Companion;

.field public static final COLOR_PICKER_MODE:I = 0x4

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
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel$Companion;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
