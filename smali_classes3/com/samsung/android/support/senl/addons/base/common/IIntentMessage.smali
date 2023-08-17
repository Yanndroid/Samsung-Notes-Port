.class public interface abstract Lcom/samsung/android/support/senl/addons/base/common/IIntentMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/common/IIntentMessage$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/common/IIntentMessage;",
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
.field public static final ARG_DATA_HANDLER_CLASS:Ljava/lang/String; = "data_handler_class"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARG_TOOL_TYPE:Ljava/lang/String; = "tool_type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/common/IIntentMessage$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/common/IIntentMessage$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/common/IIntentMessage$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/common/IIntentMessage;->Companion:Lcom/samsung/android/support/senl/addons/base/common/IIntentMessage$Companion;

    return-void
.end method
