.class public Landroidx/reflect/icu/SeslLocaleDataReflector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static mClassName:Ljava/lang/String; = "libcore.icu.LocaleData"

.field private static mDateFormatSymbolsClass:Ljava/lang/String; = "android.icu.text.DateFormatSymbols"

.field private static mSemClassName:Ljava/lang/String; = "com.samsung.sesl.icu.SemLocaleData"

.field private static mSemDateFormatSymbolsClass:Ljava/lang/String; = "com.samsung.sesl.icu.SemDateFormatSymbols"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/util/Locale;)Ljava/lang/Object;
    .locals 6
    .param p0    # Ljava/util/Locale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "get"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1d

    if-lt v0, v4, :cond_0

    sget-object v0, Landroidx/reflect/icu/SeslLocaleDataReflector;->mSemClassName:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/util/Locale;

    aput-object v5, v4, v2

    invoke-static {v0, v1, v4}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/reflect/icu/SeslLocaleDataReflector;->mClassName:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/util/Locale;

    aput-object v5, v4, v2

    invoke-static {v0, v1, v4}, Landroidx/reflect/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {v1, v0, v3}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroidx/reflect/icu/SeslLocaleDataReflector;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static getAmpmNarrowStrings(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidx/reflect/icu/SeslLocaleDataReflector;->mSemDateFormatSymbolsClass:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Landroidx/reflect/icu/SeslLocaleDataReflector;->mDateFormatSymbolsClass:Ljava/lang/String;

    invoke-static {v3}, Landroidx/reflect/SeslBaseReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "getAmpmNarrowStrings"

    invoke-static {v0, v3, v2}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {v2, v0, v1}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    instance-of p0, v2, [Ljava/lang/String;

    if-eqz p0, :cond_1

    check-cast v2, [Ljava/lang/String;

    return-object v2

    :cond_1
    const-string p0, "SeslLocaleDataReflector"

    const-string v0, "amPm narrow strings failed. Use getAmPmStrings for ampm"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/text/DateFormatSymbols;

    invoke-direct {p0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getField_amPm(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 6
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    sget-object v0, Landroidx/reflect/icu/SeslLocaleDataReflector;->mSemClassName:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Landroidx/reflect/icu/SeslLocaleDataReflector;->mClassName:Ljava/lang/String;

    invoke-static {v4}, Landroidx/reflect/SeslBaseReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "getAmPm"

    invoke-static {v0, v4, v3}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {v1, v0, v2}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/reflect/icu/SeslLocaleDataReflector;->mClassName:Ljava/lang/String;

    const-string v2, "amPm"

    invoke-static {v0, v2}, Landroidx/reflect/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Landroidx/reflect/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    :goto_0
    instance-of p0, v1, [Ljava/lang/String;

    if-eqz p0, :cond_2

    check-cast v1, [Ljava/lang/String;

    return-object v1

    :cond_2
    const-string p0, "SeslLocaleDataReflector"

    const-string v0, "amPm failed. Use DateFormatSymbols for ampm"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/text/DateFormatSymbols;

    invoke-direct {p0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getField_narrowAm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    sget-object v0, Landroidx/reflect/icu/SeslLocaleDataReflector;->mSemClassName:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Landroidx/reflect/icu/SeslLocaleDataReflector;->mClassName:Ljava/lang/String;

    invoke-static {v4}, Landroidx/reflect/SeslBaseReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "getNarrowAm"

    invoke-static {v0, v4, v3}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {v1, v0, v2}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/reflect/icu/SeslLocaleDataReflector;->mClassName:Ljava/lang/String;

    const-string v2, "narrowAm"

    invoke-static {v0, v2}, Landroidx/reflect/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Landroidx/reflect/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    :goto_0
    instance-of p0, v1, Ljava/lang/String;

    if-eqz p0, :cond_2

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_2
    const-string p0, "Am"

    return-object p0
.end method

.method public static getField_narrowPm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    sget-object v0, Landroidx/reflect/icu/SeslLocaleDataReflector;->mSemClassName:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Landroidx/reflect/icu/SeslLocaleDataReflector;->mClassName:Ljava/lang/String;

    invoke-static {v4}, Landroidx/reflect/SeslBaseReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "getNarrowPm"

    invoke-static {v0, v4, v3}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {v1, v0, v2}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/reflect/icu/SeslLocaleDataReflector;->mClassName:Ljava/lang/String;

    const-string v2, "narrowPm"

    invoke-static {v0, v2}, Landroidx/reflect/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Landroidx/reflect/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    :goto_0
    instance-of p0, v1, Ljava/lang/String;

    if-eqz p0, :cond_2

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_2
    const-string p0, "Pm"

    return-object p0
.end method

.method public static getField_zeroDigit(Ljava/lang/Object;)C
    .locals 6
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    sget-object v0, Landroidx/reflect/icu/SeslLocaleDataReflector;->mSemClassName:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Landroidx/reflect/icu/SeslLocaleDataReflector;->mClassName:Ljava/lang/String;

    invoke-static {v4}, Landroidx/reflect/SeslBaseReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "getZeroDigit"

    invoke-static {v0, v4, v3}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {v1, v0, v2}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/reflect/icu/SeslLocaleDataReflector;->mClassName:Ljava/lang/String;

    const-string v2, "zeroDigit"

    invoke-static {v0, v2}, Landroidx/reflect/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Landroidx/reflect/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    :goto_0
    instance-of p0, v1, Ljava/lang/Character;

    if-eqz p0, :cond_2

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result p0

    return p0

    :cond_2
    const/16 p0, 0x30

    return p0
.end method
