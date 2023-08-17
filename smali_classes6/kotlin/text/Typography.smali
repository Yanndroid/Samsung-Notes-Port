.class public final Lkotlin/text/Typography;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlin/text/Typography;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final almostEqual:C = '\u2248'

.field public static final amp:C = '&'

.field public static final bullet:C = '\u2022'

.field public static final cent:C = '\u00a2'

.field public static final copyright:C = '\u00a9'

.field public static final dagger:C = '\u2020'

.field public static final degree:C = '\u00b0'

.field public static final dollar:C = '$'

.field public static final doubleDagger:C = '\u2021'

.field public static final doublePrime:C = '\u2033'

.field public static final ellipsis:C = '\u2026'

.field public static final euro:C = '\u20ac'

.field public static final greater:C = '>'

.field public static final greaterOrEqual:C = '\u2265'

.field public static final half:C = '\u00bd'

.field public static final leftDoubleQuote:C = '\u201c'

.field public static final leftGuillemet:C = '\u00ab'

.field public static final leftGuillemete:C = '\u00ab'

.field public static final leftSingleQuote:C = '\u2018'

.field public static final less:C = '<'

.field public static final lessOrEqual:C = '\u2264'

.field public static final lowDoubleQuote:C = '\u201e'

.field public static final lowSingleQuote:C = '\u201a'

.field public static final mdash:C = '\u2014'

.field public static final middleDot:C = '\u00b7'

.field public static final nbsp:C = '\u00a0'

.field public static final ndash:C = '\u2013'

.field public static final notEqual:C = '\u2260'

.field public static final paragraph:C = '\u00b6'

.field public static final plusMinus:C = '\u00b1'

.field public static final pound:C = '\u00a3'

.field public static final prime:C = '\u2032'

.field public static final quote:C = '\"'

.field public static final registered:C = '\u00ae'

.field public static final rightDoubleQuote:C = '\u201d'

.field public static final rightGuillemet:C = '\u00bb'

.field public static final rightGuillemete:C = '\u00bb'

.field public static final rightSingleQuote:C = '\u2019'

.field public static final section:C = '\u00a7'

.field public static final times:C = '\u00d7'

.field public static final tm:C = '\u2122'


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/text/Typography;

    invoke-direct {v0}, Lkotlin/text/Typography;-><init>()V

    sput-object v0, Lkotlin/text/Typography;->INSTANCE:Lkotlin/text/Typography;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getLeftGuillemet$annotations()V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.6"
    .end annotation

    return-void
.end method

.method public static synthetic getLeftGuillemete$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "This constant has a typo in the name. Use leftGuillemet instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Typography.leftGuillemet"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        warningSince = "1.6"
    .end annotation

    return-void
.end method

.method public static synthetic getRightGuillemet$annotations()V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.6"
    .end annotation

    return-void
.end method

.method public static synthetic getRightGuillemete$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "This constant has a typo in the name. Use rightGuillemet instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Typography.rightGuillemet"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        warningSince = "1.6"
    .end annotation

    return-void
.end method
