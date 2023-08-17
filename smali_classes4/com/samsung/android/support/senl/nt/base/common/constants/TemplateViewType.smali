.class public Lcom/samsung/android/support/senl/nt/base/common/constants/TemplateViewType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_ESSENTIAL_MENU:I = 0x0

.field public static final TYPE_ESSENTIAL_TEMPLATE:I = 0x1

.field public static final TYPE_IMAGE_MENU:I = 0x2

.field public static final TYPE_IMAGE_TEMPLATE:I = 0x3

.field public static final TYPE_PDF_DEFAULT_MENU:I = 0x6

.field public static final TYPE_PDF_DEFAULT_TEMPLATE:I = 0x7

.field public static final TYPE_PDF_MENU:I = 0x4

.field public static final TYPE_PDF_TEMPLATE:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMenuType(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPdfType(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
