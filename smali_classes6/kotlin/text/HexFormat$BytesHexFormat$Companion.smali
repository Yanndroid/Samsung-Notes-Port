.class public final Lkotlin/text/HexFormat$BytesHexFormat$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/HexFormat$BytesHexFormat;
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

    invoke-direct {p0}, Lkotlin/text/HexFormat$BytesHexFormat$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefault$kotlin_stdlib()Lkotlin/text/HexFormat$BytesHexFormat;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lkotlin/text/HexFormat$BytesHexFormat;->access$getDefault$cp()Lkotlin/text/HexFormat$BytesHexFormat;

    move-result-object v0

    return-object v0
.end method
