.class final Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParseData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;",
        "",
        "()V",
        "mName",
        "",
        "getMName",
        "()Ljava/lang/String;",
        "setMName",
        "(Ljava/lang/String;)V",
        "mType",
        "getMType",
        "setMType",
        "mViewId",
        "",
        "getMViewId",
        "()I",
        "setMViewId",
        "(I)V",
        "mViewKey",
        "getMViewKey",
        "setMViewKey",
        "mVmId",
        "getMVmId",
        "setMVmId",
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
.field private mName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mViewId:I

.field private mViewKey:I

.field private mVmId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->mType:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->mViewKey:I

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->mVmId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getMType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public final getMViewId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->mViewId:I

    return v0
.end method

.method public final getMViewKey()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->mViewKey:I

    return v0
.end method

.method public final getMVmId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->mVmId:Ljava/lang/String;

    return-object v0
.end method

.method public final setMName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->mName:Ljava/lang/String;

    return-void
.end method

.method public final setMType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->mType:Ljava/lang/String;

    return-void
.end method

.method public final setMViewId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->mViewId:I

    return-void
.end method

.method public final setMViewKey(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->mViewKey:I

    return-void
.end method

.method public final setMVmId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser$ParseData;->mVmId:Ljava/lang/String;

    return-void
.end method
