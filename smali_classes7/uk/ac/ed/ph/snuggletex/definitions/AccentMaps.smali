.class public interface abstract Luk/ac/ed/ph/snuggletex/definitions/AccentMaps;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACCENT:Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

.field public static final CIRCUMFLEX:Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

.field public static final GRAVE:Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

.field public static final TILDE:Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

.field public static final UMLAUT:Luk/ac/ed/ph/snuggletex/definitions/AccentMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

    const/16 v1, 0x16

    new-array v2, v1, [C

    fill-array-data v2, :array_0

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Luk/ac/ed/ph/snuggletex/definitions/AccentMap;-><init>([CLjava/lang/String;)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/definitions/AccentMaps;->ACCENT:Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

    new-instance v0, Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

    const/16 v2, 0x14

    new-array v4, v2, [C

    fill-array-data v4, :array_1

    invoke-direct {v0, v4, v3}, Luk/ac/ed/ph/snuggletex/definitions/AccentMap;-><init>([CLjava/lang/String;)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/definitions/AccentMaps;->GRAVE:Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

    new-instance v0, Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

    new-array v1, v1, [C

    fill-array-data v1, :array_2

    invoke-direct {v0, v1, v3}, Luk/ac/ed/ph/snuggletex/definitions/AccentMap;-><init>([CLjava/lang/String;)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/definitions/AccentMaps;->CIRCUMFLEX:Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

    new-instance v0, Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_3

    invoke-direct {v0, v1, v3}, Luk/ac/ed/ph/snuggletex/definitions/AccentMap;-><init>([CLjava/lang/String;)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/definitions/AccentMaps;->TILDE:Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

    new-instance v0, Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

    new-array v1, v2, [C

    fill-array-data v1, :array_4

    invoke-direct {v0, v1, v3}, Luk/ac/ed/ph/snuggletex/definitions/AccentMap;-><init>([CLjava/lang/String;)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/definitions/AccentMaps;->UMLAUT:Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

    return-void

    nop

    :array_0
    .array-data 2
        0x41s
        0xc1s
        0x45s
        0xc9s
        0x49s
        0xcds
        0x4fs
        0xd3s
        0x55s
        0xdas
        0x61s
        0xe1s
        0x65s
        0xe9s
        0x69s
        0xeds
        0x6fs
        0xf3s
        0x75s
        0xfas
        0x79s
        0xfds
    .end array-data

    :array_1
    .array-data 2
        0x41s
        0xc0s
        0x45s
        0xc9s
        0x49s
        0xccs
        0x4fs
        0xd2s
        0x55s
        0xd9s
        0x61s
        0xe0s
        0x65s
        0xe8s
        0x69s
        0xecs
        0x6fs
        0xf2s
        0x75s
        0xf9s
    .end array-data

    :array_2
    .array-data 2
        0x41s
        0xc2s
        0x45s
        0xcas
        0x49s
        0xces
        0x4fs
        0xd4s
        0x55s
        0xdbs
        0x61s
        0xe2s
        0x65s
        0xeas
        0x69s
        0xees
        0x6as
        0x135s
        0x6fs
        0xf4s
        0x75s
        0xfbs
    .end array-data

    :array_3
    .array-data 2
        0x41s
        0xc3s
        0x4fs
        0xd5s
        0x61s
        0xe3s
        0x6es
        0xf1s
        0x6fs
        0xf5s
    .end array-data

    :array_4
    .array-data 2
        0x41s
        0xc4s
        0x45s
        0xcbs
        0x49s
        0xcfs
        0x4fs
        0xd6s
        0x55s
        0xdcs
        0x61s
        0xe4s
        0x65s
        0xebs
        0x69s
        0xefs
        0x6fs
        0xf6s
        0x75s
        0xfcs
    .end array-data
.end method
