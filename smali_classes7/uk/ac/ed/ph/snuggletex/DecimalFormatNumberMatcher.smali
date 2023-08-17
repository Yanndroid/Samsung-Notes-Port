.class public Luk/ac/ed/ph/snuggletex/DecimalFormatNumberMatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/NumberMatcher;


# static fields
.field private static final READAHEAD_INCREMENT:I = 0x4


# instance fields
.field private decimalFormat:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/ac/ed/ph/snuggletex/DecimalFormatNumberMatcher;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/text/DecimalFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/DecimalFormatNumberMatcher;->decimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/DecimalFormatNumberMatcher;->decimalFormat:Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v1, p1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/DecimalFormatNumberMatcher;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    return-void
.end method


# virtual methods
.method public getDecimalFormat()Ljava/text/DecimalFormat;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/DecimalFormatNumberMatcher;->decimalFormat:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method public getNumberEnd(Luk/ac/ed/ph/snuggletex/InputContext;I)I
    .locals 5

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/DecimalFormatNumberMatcher;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setParseBigDecimal(Z)V

    invoke-interface {p1}, Luk/ac/ed/ph/snuggletex/InputContext;->length()I

    move-result v0

    sub-int/2addr v0, p2

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v1, :cond_3

    :goto_0
    add-int v2, p2, v1

    invoke-interface {p1, p2, v2}, Luk/ac/ed/ph/snuggletex/InputContext;->extract(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/ParsePosition;-><init>(I)V

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/DecimalFormatNumberMatcher;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4, v2, v3}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v2

    check-cast v2, Ljava/math/BigDecimal;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v2, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-ne v2, v1, :cond_2

    if-ge v1, v0, :cond_2

    add-int/lit8 v1, v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    add-int/2addr p2, p1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p2, -0x1

    :goto_2
    return p2
.end method

.method public setDecimalFormat(Ljava/text/DecimalFormat;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/DecimalFormatNumberMatcher;->decimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method
