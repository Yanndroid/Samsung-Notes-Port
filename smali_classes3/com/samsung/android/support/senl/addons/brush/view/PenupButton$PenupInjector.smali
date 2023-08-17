.class Lcom/samsung/android/support/senl/addons/brush/view/PenupButton$PenupInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$IPenupInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/brush/view/PenupButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PenupInjector"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0092\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/PenupButton$PenupInjector;",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$IPenupInjector;",
        "(Lcom/samsung/android/support/senl/addons/brush/view/PenupButton;)V",
        "createClientBuilder",
        "Lcom/samsung/android/penup/PenupClient$Builder;",
        "getClientId",
        "",
        "getSharePath",
        "prefix",
        "ext",
        "hideKeyboard",
        "",
        "isRestricted",
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


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/view/PenupButton;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/view/PenupButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/PenupButton$PenupInjector;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/PenupButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClientBuilder()Lcom/samsung/android/penup/PenupClient$Builder;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/penup/PenupClient$Builder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/PenupButton$PenupInjector;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/PenupButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/penup/PenupClient$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "6146111782834658"

    return-object v0
.end method

.method public getSharePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/PenupButton$PenupInjector;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/PenupButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/util/CommonUtil;->getImagePathByTimeInAppShare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hideKeyboard()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/PenupButton$PenupInjector;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/PenupButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->forceHideSoftInput(Landroid/content/Context;)Z

    return-void
.end method

.method public isRestricted()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/PenupButton$PenupInjector;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/PenupButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/PenupButton$PenupInjector;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/PenupButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
