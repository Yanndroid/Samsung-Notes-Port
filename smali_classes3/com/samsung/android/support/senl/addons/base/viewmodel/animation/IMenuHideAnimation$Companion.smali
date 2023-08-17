.class public final Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/IMenuHideAnimation$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/IMenuHideAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/IMenuHideAnimation$Companion;",
        "",
        "()V",
        "TYPE_ANIMATION_HIDE",
        "",
        "getTYPE_ANIMATION_HIDE",
        "()I",
        "setTYPE_ANIMATION_HIDE",
        "(I)V",
        "TYPE_ANIMATION_SHOW",
        "getTYPE_ANIMATION_SHOW",
        "setTYPE_ANIMATION_SHOW",
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
.field public static final synthetic $$INSTANCE:Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/IMenuHideAnimation$Companion;

.field private static TYPE_ANIMATION_HIDE:I

.field private static TYPE_ANIMATION_SHOW:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/IMenuHideAnimation$Companion;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/IMenuHideAnimation$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/IMenuHideAnimation$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/IMenuHideAnimation$Companion;

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/IMenuHideAnimation$Companion;->TYPE_ANIMATION_HIDE:I

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/IMenuHideAnimation$Companion;->TYPE_ANIMATION_SHOW:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTYPE_ANIMATION_HIDE()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/IMenuHideAnimation$Companion;->TYPE_ANIMATION_HIDE:I

    return v0
.end method

.method public final getTYPE_ANIMATION_SHOW()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/IMenuHideAnimation$Companion;->TYPE_ANIMATION_SHOW:I

    return v0
.end method

.method public final setTYPE_ANIMATION_HIDE(I)V
    .locals 0

    sput p1, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/IMenuHideAnimation$Companion;->TYPE_ANIMATION_HIDE:I

    return-void
.end method

.method public final setTYPE_ANIMATION_SHOW(I)V
    .locals 0

    sput p1, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/IMenuHideAnimation$Companion;->TYPE_ANIMATION_SHOW:I

    return-void
.end method
