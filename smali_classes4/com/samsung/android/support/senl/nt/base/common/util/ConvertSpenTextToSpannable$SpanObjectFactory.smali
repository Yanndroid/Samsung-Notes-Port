.class public Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpanObjectFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAbsoluteSizeSpan(I)Landroid/text/style/AbsoluteSizeSpan;
    .locals 2

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    return-object v0
.end method

.method public createBackgroundColorSpan(I)Landroid/text/style/BackgroundColorSpan;
    .locals 1

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    return-object v0
.end method

.method public createForegroundColorSpan(I)Landroid/text/style/ForegroundColorSpan;
    .locals 1

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    return-object v0
.end method

.method public createSpannableStringBuilder(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public createStrikethroughSpan()Landroid/text/style/StrikethroughSpan;
    .locals 1

    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    return-object v0
.end method

.method public createStyleSpan(I)Landroid/text/style/StyleSpan;
    .locals 1

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, p1}, Landroid/text/style/StyleSpan;-><init>(I)V

    return-object v0
.end method

.method public createTaskSpan(I)Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;-><init>(I)V

    return-object v0
.end method

.method public createUnderlineSpan()Landroid/text/style/UnderlineSpan;
    .locals 1

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    return-object v0
.end method

.method public getSpanText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    if-lez p2, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->subSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_0
    return-object p1
.end method
