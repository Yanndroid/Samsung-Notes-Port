.class public final Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAFont;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0018\u0010\t\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAFont;",
        "",
        "()V",
        "setFont",
        "",
        "textView",
        "Landroid/widget/TextView;",
        "fontName",
        "",
        "setTextSizeUntilLargeSize",
        "pixel",
        "",
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
.field public static final INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAFont;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAFont;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAFont;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAFont;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAFont;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setFont(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->setFont(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public final setTextSizeUntilLargeSize(Landroid/widget/TextView;F)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p2}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->convertPixelToSp(F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->applyTextSizeUntilLargeSize(Landroid/widget/TextView;F)V

    return-void
.end method
