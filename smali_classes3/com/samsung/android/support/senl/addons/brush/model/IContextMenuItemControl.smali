.class public interface abstract Lcom/samsung/android/support/senl/addons/brush/model/IContextMenuItemControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/model/IContextMenuItemControl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/IContextMenuItemControl;",
        "Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl;",
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
.field public static final CTX_MENU_NONE:I = 0xbb9

.field public static final CTX_MENU_REDO:I = 0xbbb

.field public static final CTX_MENU_UNDO:I = 0xbba

.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/model/IContextMenuItemControl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/IContextMenuItemControl$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/IContextMenuItemControl$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/IContextMenuItemControl;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/IContextMenuItemControl$Companion;

    return-void
.end method
