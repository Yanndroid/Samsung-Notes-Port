.class public abstract Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;
.super Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008&\u0018\u0000 \u00142\u00020\u00012\u00020\u0002:\u0001\u0014B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0017\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0000J\u0008\u0010\u0010\u001a\u00020\u0004H\u0016J\u0008\u0010\u0011\u001a\u00020\u0004H\u0016J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u0004H\u0016R\u001a\u0010\u0008\u001a\u00020\u0004X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u0005R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;",
        "color",
        "",
        "(I)V",
        "position",
        "(II)V",
        "mColor",
        "getMColor",
        "()I",
        "setMColor",
        "mPosition",
        "copy",
        "",
        "source",
        "getColor",
        "getPosition",
        "setColor",
        "setPosition",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final UNKNOWN_MODE:I = -0x100000


# instance fields
.field private mColor:I

.field private mPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->Companion:Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, -0x100000

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->mColor:I

    iput p2, p0, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->mPosition:I

    return-void
.end method


# virtual methods
.method public final copy(Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->mColor:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->setColor(I)V

    return-void
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->mColor:I

    return v0
.end method

.method public final getMColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->mColor:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->mPosition:I

    return v0
.end method

.method public setColor(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->mColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->mColor:I

    const/16 p1, 0xc9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setMColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->mColor:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->mPosition:I

    return-void
.end method
