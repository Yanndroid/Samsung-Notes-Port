.class public final Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IColorMenuViewModel$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IColorMenuViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IColorMenuViewModel$Companion;",
        "",
        "()V",
        "OBSV_VIEW_COLOR_GRADATION_COLOR_SELECTED",
        "",
        "OBSV_VIEW_COLOR_PICKER_COLOR_CHANGED",
        "OBSV_VIEW_COLOR_PICKER_COLOR_UPDATED",
        "OBSV_VIEW_PALETTE_LIST_CHANGED",
        "OBSV_VIEW_RECENT_PALETTE_ITEM_CHANGED",
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
.field public static final synthetic $$INSTANCE:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IColorMenuViewModel$Companion;

.field public static final OBSV_VIEW_COLOR_GRADATION_COLOR_SELECTED:Ljava/lang/String; = "color_gradation_color_select"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OBSV_VIEW_COLOR_PICKER_COLOR_CHANGED:Ljava/lang/String; = "color_picker_color_change"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OBSV_VIEW_COLOR_PICKER_COLOR_UPDATED:Ljava/lang/String; = "color_picker_color_update"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OBSV_VIEW_PALETTE_LIST_CHANGED:Ljava/lang/String; = "palette_list_change"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OBSV_VIEW_RECENT_PALETTE_ITEM_CHANGED:Ljava/lang/String; = "recent_palette_item_change"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IColorMenuViewModel$Companion;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IColorMenuViewModel$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IColorMenuViewModel$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IColorMenuViewModel$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
