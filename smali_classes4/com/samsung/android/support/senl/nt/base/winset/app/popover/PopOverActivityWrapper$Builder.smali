.class public Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final anchorPosition:[I

.field public final anchorType:I

.field public final height:[I

.field public final margin:[Landroid/graphics/Point;

.field public final opts:Landroid/app/ActivityOptions;

.field public final width:[I


# direct methods
.method public constructor <init>(Landroid/app/ActivityOptions;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->width:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->height:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->anchorPosition:[I

    new-array v0, v0, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->margin:[Landroid/graphics/Point;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->opts:Landroid/app/ActivityOptions;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->anchorType:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->initialize()V

    return-void
.end method

.method private flipLeftRight(I)I
    .locals 2

    and-int/lit8 v0, p1, 0x20

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    and-int/lit8 p1, p1, -0x21

    or-int/lit8 p1, p1, 0x10

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p1, 0x10

    if-le v0, v1, :cond_1

    and-int/lit8 p1, p1, -0x11

    or-int/lit8 p1, p1, 0x20

    :cond_1
    :goto_0
    return p1
.end method

.method private initMargin()V
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->setPopOverMargin(Landroid/graphics/Point;I)Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->setPopOverMargin(Landroid/graphics/Point;I)Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;

    return-void
.end method

.method private initPosition()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->anchorType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/16 v3, 0x65

    if-eq v0, v3, :cond_4

    const/16 v3, 0x66

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x22

    goto :goto_0

    :cond_1
    const/16 v0, 0x14

    goto :goto_0

    :cond_2
    const/16 v0, 0x42

    goto :goto_0

    :cond_3
    const/16 v0, 0x44

    goto :goto_0

    :cond_4
    const/16 v0, 0x21

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->setPopOverAnchor(II)Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->setPopOverAnchor(II)Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;

    :goto_1
    return-void
.end method

.method private initSize()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->anchorType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x168

    const/16 v4, 0x64

    if-le v0, v4, :cond_0

    const/16 v0, 0x1dc

    goto :goto_0

    :cond_0
    const/16 v0, 0x25b

    :goto_0
    invoke-virtual {p0, v3, v0, v2}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->setPopOverSize(III)Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;

    invoke-virtual {p0, v3, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->setPopOverSize(III)Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;

    return-void
.end method

.method private initialize()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->anchorType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->initSize()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->initMargin()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->initPosition()V

    return-void
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->opts:Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverUtils;->canSupportSemSetAnchor()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->anchorType:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->opts:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/app/ActivityOptions;->semSetPopOverOptions([I[I[Landroid/graphics/Point;[I)Landroid/app/ActivityOptions;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->opts:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->width:[I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->height:[I

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->margin:[Landroid/graphics/Point;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->anchorPosition:[I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityOptions;->semSetPopOverOptions([I[I[Landroid/graphics/Point;[I)Landroid/app/ActivityOptions;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->opts:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setPopOverAnchor(II)Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;
    .locals 1
    .param p2    # I
        .annotation build Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Orientation;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->flipLeftRight(I)I

    move-result p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->anchorPosition:[I

    aput p1, v0, p2

    return-object p0
.end method

.method public setPopOverMargin(Landroid/graphics/Point;I)Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;
    .locals 1
    .param p2    # I
        .annotation build Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Orientation;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->margin:[Landroid/graphics/Point;

    aput-object p1, v0, p2

    return-object p0
.end method

.method public setPopOverSize(III)Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;
    .locals 1
    .param p3    # I
        .annotation build Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Orientation;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->width:[I

    aput p1, v0, p3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->height:[I

    aput p2, p1, p3

    return-object p0
.end method
