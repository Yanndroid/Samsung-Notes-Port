.class public final Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;",
        "",
        "()V",
        "OBSV_VM_PEN_CHANGED",
        "",
        "getOBSV_VM_PEN_CHANGED",
        "()Ljava/lang/String;",
        "setOBSV_VM_PEN_CHANGED",
        "(Ljava/lang/String;)V",
        "OBSV_VM_PEN_DESTORYED",
        "getOBSV_VM_PEN_DESTORYED",
        "setOBSV_VM_PEN_DESTORYED",
        "OBSV_VM_PEN_RESELECTED",
        "getOBSV_VM_PEN_RESELECTED",
        "setOBSV_VM_PEN_RESELECTED",
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
.field public static final synthetic $$INSTANCE:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;

.field private static OBSV_VM_PEN_CHANGED:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static OBSV_VM_PEN_DESTORYED:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static OBSV_VM_PEN_RESELECTED:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;

    const-string v0, "pen_changed"

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;->OBSV_VM_PEN_CHANGED:Ljava/lang/String;

    const-string v0, "pen_reselected"

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;->OBSV_VM_PEN_RESELECTED:Ljava/lang/String;

    const-string v0, "pen_destroyed"

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;->OBSV_VM_PEN_DESTORYED:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOBSV_VM_PEN_CHANGED()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;->OBSV_VM_PEN_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method public final getOBSV_VM_PEN_DESTORYED()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;->OBSV_VM_PEN_DESTORYED:Ljava/lang/String;

    return-object v0
.end method

.method public final getOBSV_VM_PEN_RESELECTED()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;->OBSV_VM_PEN_RESELECTED:Ljava/lang/String;

    return-object v0
.end method

.method public final setOBSV_VM_PEN_CHANGED(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;->OBSV_VM_PEN_CHANGED:Ljava/lang/String;

    return-void
.end method

.method public final setOBSV_VM_PEN_DESTORYED(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;->OBSV_VM_PEN_DESTORYED:Ljava/lang/String;

    return-void
.end method

.method public final setOBSV_VM_PEN_RESELECTED(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;->OBSV_VM_PEN_RESELECTED:Ljava/lang/String;

    return-void
.end method
