.class public final enum Lorg/apache/poi/common/usermodel/fonts/FontGroup;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;,
        Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/common/usermodel/fonts/FontGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontGroup;

.field public static final enum COMPLEX_SCRIPT:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

.field public static final enum EAST_ASIAN:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

.field public static final enum LATIN:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

.field public static final enum SYMBOL:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

.field private static UCS_RANGES:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    const-string v1, "LATIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->LATIN:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    const-string v3, "EAST_ASIAN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->EAST_ASIAN:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    new-instance v3, Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    const-string v5, "SYMBOL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->SYMBOL:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    new-instance v5, Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    const-string v7, "COMPLEX_SCRIPT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->COMPLEX_SCRIPT:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->$VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    sput-object v4, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0x7f

    invoke-direct {v6, v7, v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v4, v2, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0xa6

    invoke-direct {v6, v7, v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0xa9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0xaf

    invoke-direct {v6, v7, v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0xb2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0xb3

    invoke-direct {v6, v7, v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0xb5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0xd6

    invoke-direct {v6, v7, v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0xd8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0xf6

    invoke-direct {v6, v7, v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0xf8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0x58f

    invoke-direct {v6, v7, v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0x590

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0x74f

    invoke-direct {v6, v7, v5}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0x780

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0x7bf

    invoke-direct {v6, v7, v5}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0x900

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0x109f

    invoke-direct {v6, v7, v5}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0x10a0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0x10ff

    invoke-direct {v6, v7, v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0x1200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0x137f

    invoke-direct {v6, v7, v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0x13a0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0x177f

    invoke-direct {v6, v7, v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0x1d00

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0x1d7f

    invoke-direct {v6, v7, v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0x1e00

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0x1fff

    invoke-direct {v6, v7, v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0x1780

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0x18af

    invoke-direct {v6, v7, v5}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0x2000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0x200b

    invoke-direct {v6, v7, v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0x200c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0x200f

    invoke-direct {v6, v7, v5}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0x2010

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0x2029

    invoke-direct {v6, v7, v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0x202a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0x202f

    invoke-direct {v6, v7, v5}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0x2030

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0x2046

    invoke-direct {v6, v7, v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0x204a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0x245f

    invoke-direct {v6, v7, v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0x2670

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0x2671

    invoke-direct {v6, v7, v5}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0x27c0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0x2bff

    invoke-direct {v6, v7, v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const/16 v4, 0x3099

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const/16 v7, 0x309a

    invoke-direct {v6, v7, v1}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v2, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const v2, 0xd835

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    invoke-direct {v6, v2, v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v1, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const v2, 0xf000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const v6, 0xf0ff

    invoke-direct {v4, v6, v3}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v1, v2, v4}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const v2, 0xfb00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const v4, 0xfb17

    invoke-direct {v3, v4, v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v1, v2, v3}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const v2, 0xfb1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const v4, 0xfb4f

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v1, v2, v3}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    const v2, 0xfe50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    const v4, 0xfe6f

    invoke-direct {v3, v4, v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;-><init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-interface {v1, v2, v3}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getFontGroupFirst(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->lookup(I)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->LATIN:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    :goto_1
    return-object p0
.end method

.method public static getFontGroupRanges(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    if-eqz v3, :cond_1

    const-string v6, " \n\r"

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_1

    invoke-static {v3}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->access$000(Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object v4

    goto :goto_2

    :cond_1
    invoke-static {v4}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->lookup(I)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object v4

    :goto_2
    if-eqz v3, :cond_2

    invoke-static {v3}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->access$000(Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object v6

    if-eq v6, v4, :cond_3

    :cond_2
    new-instance v3, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;

    invoke-direct {v3}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;-><init>()V

    invoke-static {v3, v4}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->access$002(Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {v3, v5}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->access$112(Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;I)I

    add-int/2addr v1, v5

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private static lookup(I)Lorg/apache/poi/common/usermodel/fonts/FontGroup;
    .locals 2

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->UCS_RANGES:Ljava/util/NavigableMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;->upper:I

    if-gt p0, v1, :cond_1

    iget-object p0, v0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;->fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    goto :goto_1

    :cond_1
    sget-object p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->EAST_ASIAN:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    :goto_1
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;
    .locals 1

    const-class v0, Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/common/usermodel/fonts/FontGroup;
    .locals 1

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->$VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-virtual {v0}, [Lorg/apache/poi/common/usermodel/fonts/FontGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    return-object v0
.end method
