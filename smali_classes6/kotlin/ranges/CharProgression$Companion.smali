.class public final Lkotlin/ranges/CharProgression$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/ranges/CharProgression;
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

    invoke-direct {p0}, Lkotlin/ranges/CharProgression$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromClosedRange(CCI)Lkotlin/ranges/CharProgression;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlin/ranges/CharProgression;

    invoke-direct {v0, p1, p2, p3}, Lkotlin/ranges/CharProgression;-><init>(CCI)V

    return-object v0
.end method
