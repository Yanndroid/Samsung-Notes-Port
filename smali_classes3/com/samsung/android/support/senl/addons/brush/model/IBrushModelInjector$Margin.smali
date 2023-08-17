.class public final Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector$Margin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Margin"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector$Margin;",
        "",
        "horizontal",
        "",
        "vertical",
        "(II)V",
        "getHorizontal",
        "()I",
        "getVertical",
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
.field private final horizontal:I

.field private final vertical:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector$Margin;->horizontal:I

    iput p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector$Margin;->vertical:I

    return-void
.end method


# virtual methods
.method public final getHorizontal()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector$Margin;->horizontal:I

    return v0
.end method

.method public final getVertical()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector$Margin;->vertical:I

    return v0
.end method
