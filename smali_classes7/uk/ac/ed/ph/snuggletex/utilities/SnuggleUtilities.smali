.class public final Luk/ac/ed/ph/snuggletex/utilities/SnuggleUtilities;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final charsToBackslashPattern:Ljava/util/regex/Pattern;

.field private static final charsToVerbPattern:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "([\\\\^~<>|]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Luk/ac/ed/ph/snuggletex/utilities/SnuggleUtilities;->charsToVerbPattern:Ljava/util/regex/Pattern;

    const-string v0, "([%#_$&\\{\\}])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Luk/ac/ed/ph/snuggletex/utilities/SnuggleUtilities;->charsToBackslashPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractSnuggleTeXAnnotation(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 1

    const-string v0, "SnuggleTeX"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->extractAnnotationString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quoteTextForInput(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/utilities/SnuggleUtilities;->charsToVerbPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "\\\\verb-$1-"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Luk/ac/ed/ph/snuggletex/utilities/SnuggleUtilities;->charsToBackslashPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "\\\\$1"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
