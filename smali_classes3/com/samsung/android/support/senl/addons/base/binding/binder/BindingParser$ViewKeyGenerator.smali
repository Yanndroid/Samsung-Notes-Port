.class final Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewKeyGenerator"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;",
        "",
        "()V",
        "mKey",
        "",
        "generate",
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
.field private mKey:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;->mKey:I

    return-void
.end method


# virtual methods
.method public final generate()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;->mKey:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ViewKeyGenerator;->mKey:I

    return v0
.end method
