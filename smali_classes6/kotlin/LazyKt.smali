.class public final Lkotlin/LazyKt;
.super Lkotlin/LazyKt__LazyKt;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/LazyKt__LazyKt;-><init>()V

    return-void
.end method

.method public static bridge synthetic lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 0
    .param p0    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method
