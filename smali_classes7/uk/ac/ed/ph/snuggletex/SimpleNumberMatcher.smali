.class public Luk/ac/ed/ph/snuggletex/SimpleNumberMatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/NumberMatcher;


# instance fields
.field private final decimalChar:C


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/ac/ed/ph/snuggletex/SimpleNumberMatcher;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, p1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result p1

    iput-char p1, p0, Luk/ac/ed/ph/snuggletex/SimpleNumberMatcher;->decimalChar:C

    return-void
.end method


# virtual methods
.method public getNumberEnd(Luk/ac/ed/ph/snuggletex/InputContext;I)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    invoke-interface {p1, p2}, Luk/ac/ed/ph/snuggletex/InputContext;->charAt(I)I

    move-result v3

    const/16 v4, 0x39

    const/16 v5, 0x30

    if-lt v3, v5, :cond_0

    if-gt v3, v4, :cond_0

    add-int/lit8 p2, p2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Luk/ac/ed/ph/snuggletex/InputContext;->charAt(I)I

    move-result v3

    iget-char v6, p0, Luk/ac/ed/ph/snuggletex/SimpleNumberMatcher;->decimalChar:C

    if-ne v3, v6, :cond_1

    add-int/lit8 p2, p2, 0x1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    const/4 v6, -0x1

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    return v6

    :cond_2
    :goto_2
    invoke-interface {p1, p2}, Luk/ac/ed/ph/snuggletex/InputContext;->charAt(I)I

    move-result v3

    if-lt v3, v5, :cond_3

    if-gt v3, v4, :cond_3

    add-int/lit8 p2, p2, 0x1

    move v0, v1

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    if-nez v0, :cond_4

    return v6

    :cond_4
    return p2
.end method
