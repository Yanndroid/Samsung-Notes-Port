.class public final Lkotlin/ranges/URangesKt;
.super Lkotlin/ranges/URangesKt___URangesKt;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/ranges/URangesKt___URangesKt;-><init>()V

    return-void
.end method

.method public static bridge synthetic until-J1ME1BU(II)Lkotlin/ranges/UIntRange;
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lkotlin/ranges/URangesKt___URangesKt;->until-J1ME1BU(II)Lkotlin/ranges/UIntRange;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic until-eb3DHEI(JJ)Lkotlin/ranges/ULongRange;
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lkotlin/ranges/URangesKt___URangesKt;->until-eb3DHEI(JJ)Lkotlin/ranges/ULongRange;

    move-result-object p0

    return-object p0
.end method
