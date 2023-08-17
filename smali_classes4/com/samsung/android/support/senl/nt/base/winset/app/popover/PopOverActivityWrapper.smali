.class public Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$ChooserBuilder;,
        Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;,
        Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$AnchorType;,
        Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Orientation;,
        Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$AnchorPosition;
    }
.end annotation


# static fields
.field public static final DEFAULT_HEIGHT:I = 0x25b

.field public static final DEFAULT_WIDTH:I = 0x168

.field public static final HEIGHT_FOR_COEDIT_PICKER:I = 0x1dc

.field public static final KEY_ANCHOR_TYPE:Ljava/lang/String; = "key_anchor_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentLayoutAnchorType(Landroid/app/Activity;)I
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverUtils;->canSupportSemSetAnchor()Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const-string v0, "key_anchor_type"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static isPopOverLayout(Landroid/content/Intent;Landroid/content/res/Configuration;)Ljava/lang/Boolean;
    .locals 3
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverUtils;->canSupportSemSetAnchor()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p0, :cond_4

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "key_anchor_type"

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_2

    return-object v1

    :cond_2
    iget p0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 p1, 0x168

    if-ne p0, p1, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public static isShownAsPopOverLayout(Landroid/app/Activity;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper;->isPopOverLayout(Landroid/content/Intent;Landroid/content/res/Configuration;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper;->startActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 2
    .param p2    # I
        .annotation build Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$AnchorType;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;-><init>(Landroid/app/ActivityOptions;I)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->build()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_anchor_type"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;II)V

    return-void
.end method

.method public static startActivityForResult(Landroid/content/Context;Landroid/content/Intent;II)V
    .locals 2
    .param p3    # I
        .annotation build Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$AnchorType;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;-><init>(Landroid/app/ActivityOptions;I)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->build()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_anchor_type"

    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;II)V
    .locals 2
    .param p3    # I
        .annotation build Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$AnchorType;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;-><init>(Landroid/app/ActivityOptions;I)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$Builder;->build()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_anchor_type"

    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static startChooserActivity(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 2
    .param p2    # I
        .annotation build Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$AnchorType;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$ChooserBuilder;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$ChooserBuilder;-><init>(Landroid/app/ActivityOptions;I)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$ChooserBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_anchor_type"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static startChooserActivityForResult(Landroid/content/Context;Landroid/content/Intent;II)V
    .locals 2
    .param p3    # I
        .annotation build Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$AnchorType;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$ChooserBuilder;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$ChooserBuilder;-><init>(Landroid/app/ActivityOptions;I)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper$ChooserBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_anchor_type"

    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method
