.class public Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$ChooserBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooserBuilder"
.end annotation


# instance fields
.field public anchorPosition:I

.field public final anchorType:I

.field public final opts:Landroid/app/ActivityOptions;


# direct methods
.method public constructor <init>(Landroid/app/ActivityOptions;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$ChooserBuilder;->opts:Landroid/app/ActivityOptions;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$ChooserBuilder;->anchorType:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$ChooserBuilder;->initPosition()V

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

.method private initPosition()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$ChooserBuilder;->anchorType:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x14

    goto :goto_0

    :cond_1
    const/16 v0, 0x42

    goto :goto_0

    :cond_2
    const/16 v0, 0x44

    goto :goto_0

    :cond_3
    const/16 v0, 0x21

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$ChooserBuilder;->setPopOverAnchor(I)V

    :goto_1
    return-void
.end method

.method private setPopOverAnchor(I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$ChooserBuilder;->flipLeftRight(I)I

    move-result p1

    :cond_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$ChooserBuilder;->anchorPosition:I

    return-void
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$ChooserBuilder;->opts:Landroid/app/ActivityOptions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverUtils;->canSupportSemSetAnchor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$ChooserBuilder;->opts:Landroid/app/ActivityOptions;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$ChooserBuilder;->anchorPosition:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->semSetChooserPopOverPosition(I)Landroid/app/ActivityOptions;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$ChooserBuilder;->opts:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
