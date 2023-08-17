.class public interface abstract Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008f\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0000H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0005R\u0012\u0010\u000c\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;",
        "",
        "colorAlign",
        "",
        "getColorAlign",
        "()I",
        "colorRect",
        "Landroid/graphics/Rect;",
        "getColorRect",
        "()Landroid/graphics/Rect;",
        "penAlign",
        "getPenAlign",
        "penRect",
        "getPenRect",
        "isEquals",
        "",
        "info",
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
.field public static final ALIGN_BOTTOM:I = 0x0

.field public static final ALIGN_END:I = 0x1

.field public static final ALIGN_START:I = 0x2

.field public static final ALIGN_TOP:I = 0x3

.field public static final BRUSH_MENU_SMART_TIP:Ljava/lang/String; = "BrushMenuSmartTip"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo$Companion;

    return-void
.end method


# virtual methods
.method public abstract getColorAlign()I
.end method

.method public abstract getColorRect()Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPenAlign()I
.end method

.method public abstract getPenRect()Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract isEquals(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;)Z
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
