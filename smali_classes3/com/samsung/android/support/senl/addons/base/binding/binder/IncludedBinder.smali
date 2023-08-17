.class public final Lcom/samsung/android/support/senl/addons/base/binding/binder/IncludedBinder;
.super Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0011\u0008\u0000\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IncludedBinder;",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;",
        "root",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
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


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;-><init>(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/CompositeBinder;->enableMapper()V

    return-void
.end method
