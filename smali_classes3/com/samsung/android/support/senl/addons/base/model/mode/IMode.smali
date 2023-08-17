.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/mode/ISpenOnlyMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/mode/IMode$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \n2\u00020\u0001:\u0001\nJ\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H&J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0003H&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;",
        "Lcom/samsung/android/support/senl/addons/base/model/mode/ISpenOnlyMode;",
        "getCurrentMode",
        "",
        "getPrevMode",
        "isMode",
        "",
        "mode",
        "setMode",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/mode/IMode$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MODE_CHANGESTYLE:I = 0x9

.field public static final MODE_COLOR_PICKER:I = 0x5

.field public static final MODE_ERASER:I = 0x4

.field public static final MODE_NONE:I = 0x0

.field public static final MODE_PEN:I = 0x2

.field public static final MODE_RECOGNITION:I = 0x8

.field public static final MODE_RECOGNITION_PREVIEW:I = 0xa

.field public static final MODE_SELECTION:I = 0x6

.field public static final MODE_TEXT:I = 0xb

.field public static final OBSV_PROPERTY_MODE_CHANGED:I = 0x192


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/mode/IMode$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/model/mode/IMode$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/mode/IMode;->Companion:Lcom/samsung/android/support/senl/addons/base/model/mode/IMode$Companion;

    return-void
.end method


# virtual methods
.method public abstract getCurrentMode()I
.end method

.method public abstract getPrevMode()I
.end method

.method public abstract isMode(I)Z
.end method

.method public abstract setMode(I)V
.end method
