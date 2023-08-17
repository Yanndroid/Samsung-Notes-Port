.class public interface abstract Lcom/samsung/android/support/senl/addons/base/common/IWindowType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/common/IWindowType$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/common/IWindowType;",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/common/IWindowType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final WINDOW_TYPE_FREEFORM:I = 0x1

.field public static final WINDOW_TYPE_NORMAL:I = 0x0

.field public static final WINDOW_TYPE_SAMSUNG_DEX:I = 0x400

.field public static final WINDOW_TYPE_SPLIT:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/common/IWindowType$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/common/IWindowType$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/common/IWindowType;->Companion:Lcom/samsung/android/support/senl/addons/base/common/IWindowType$Companion;

    return-void
.end method
