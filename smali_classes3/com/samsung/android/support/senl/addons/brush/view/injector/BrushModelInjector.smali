.class public final Lcom/samsung/android/support/senl/addons/brush/view/injector/BrushModelInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/injector/BrushModelInjector;",
        "Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector;",
        "res",
        "Landroid/content/res/Resources;",
        "(Landroid/content/res/Resources;)V",
        "mThumbnailMargin",
        "Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector$Margin;",
        "thumbnailMargin",
        "getThumbnailMargin",
        "()Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector$Margin;",
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
.field private final mThumbnailMargin:Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector$Margin;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "res"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_default_thumbnail_horizontal_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_default_thumbnail_vertical_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    new-instance v1, Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector$Margin;

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector$Margin;-><init>(II)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/BrushModelInjector;->mThumbnailMargin:Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector$Margin;

    return-void
.end method


# virtual methods
.method public getThumbnailMargin()Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector$Margin;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/BrushModelInjector;->mThumbnailMargin:Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector$Margin;

    return-object v0
.end method
