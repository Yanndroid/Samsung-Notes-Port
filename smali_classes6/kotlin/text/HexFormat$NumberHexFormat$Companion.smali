.class public final Lkotlin/text/HexFormat$NumberHexFormat$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/HexFormat$NumberHexFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/text/HexFormat$NumberHexFormat$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefault$kotlin_stdlib()Lkotlin/text/HexFormat$NumberHexFormat;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lkotlin/text/HexFormat$NumberHexFormat;->access$getDefault$cp()Lkotlin/text/HexFormat$NumberHexFormat;

    move-result-object v0

    return-object v0
.end method
